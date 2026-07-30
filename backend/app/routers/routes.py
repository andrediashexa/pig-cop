from __future__ import annotations

import csv
import io
import logging

from fastapi import APIRouter, File, HTTPException, Query, Request, UploadFile, status
from fastapi.responses import PlainTextResponse
from pydantic import BaseModel, Field

from ..auth import RequireUser, client_ip
from ..config import get_settings
from ..db import audit, get_conn, now_iso, tx
from ..gobgp.client import GoBGPError, get_client
from ..importer import parse_auto
from ..jobs import create as job_create
from ..jobs import progress as job_progress
from ..jobs import run as job_run
from ..validators import (
    RouteRejected, validate_communities, validate_next_hop, validate_prefix,
)

log = logging.getLogger("routes")
router = APIRouter(prefix="/routes", tags=["routes"])

MAX_UPLOAD_BYTES = 16 * 1024 * 1024


class RouteBody(BaseModel):
    prefix: str
    category: str | None = None
    note: str | None = None
    next_hop: str | None = None
    communities: str | None = None
    enabled: bool = True


class BulkBody(BaseModel):
    content: str = Field(max_length=8 * 1024 * 1024)
    category: str | None = None
    next_hop: str | None = None
    communities: str | None = None
    only_list: str | None = None


class BulkIdsBody(BaseModel):
    ids: list[int] = Field(min_length=1, max_length=20000)


def _count_routes() -> int:
    return get_conn().execute("SELECT COUNT(*) AS c FROM routes").fetchone()["c"]


def _effective(row: dict) -> tuple[str, str]:
    s = get_settings()
    return (row.get("next_hop") or s.default_next_hop,
            row.get("communities") or s.default_communities)


# ── leitura ──────────────────────────────────────────────────────────────────

@router.get("")
def list_routes(
    q: str | None = None,
    category: str | None = None,
    enabled: bool | None = None,
    family: str | None = None,
    page: int = Query(1, ge=1),
    page_size: int = Query(100, ge=1, le=1000),
    sort: str = Query("prefix", pattern="^(prefix|category|created_at|updated_at)$"),
    order: str = Query("asc", pattern="^(asc|desc)$"),
    user: str = RequireUser,
):
    where, params = [], []
    if q:
        where.append("(prefix LIKE ? OR category LIKE ? OR note LIKE ?)")
        params += [f"%{q}%", f"%{q}%", f"%{q}%"]
    if category:
        if category == "(sem categoria)":
            where.append("(category IS NULL OR category = '')")
        else:
            where.append("category = ?")
            params.append(category)
    if enabled is not None:
        where.append("enabled = ?")
        params.append(int(enabled))
    if family:
        where.append("family = ?")
        params.append(family)

    clause = f"WHERE {' AND '.join(where)}" if where else ""
    conn = get_conn()
    total = conn.execute(f"SELECT COUNT(*) AS c FROM routes {clause}", params).fetchone()["c"]

    # 'prefix' e TEXT: ordena por valor numerico do IP para nao sair 10 < 2.
    order_expr = {
        "prefix": "family, prefix_len, prefix",
        "category": "category",
        "created_at": "created_at",
        "updated_at": "updated_at",
    }[sort]
    rows = conn.execute(
        f"SELECT * FROM routes {clause} ORDER BY {order_expr} {order.upper()} "
        f"LIMIT ? OFFSET ?",
        [*params, page_size, (page - 1) * page_size],
    ).fetchall()

    settings = get_settings()
    items = []
    for r in rows:
        row = dict(r)
        row["effective_next_hop"] = row["next_hop"] or settings.default_next_hop
        row["effective_communities"] = row["communities"] or settings.default_communities
        items.append(row)

    return {"items": items, "total": total, "page": page, "page_size": page_size}


@router.get("/categories")
def categories(user: str = RequireUser):
    rows = get_conn().execute(
        "SELECT COALESCE(NULLIF(category,''), '(sem categoria)') AS category,"
        " COUNT(*) AS total, SUM(enabled) AS ativos"
        " FROM routes GROUP BY 1 ORDER BY total DESC"
    ).fetchall()
    return {"categories": [dict(r) for r in rows]}


# ── escrita ──────────────────────────────────────────────────────────────────

@router.post("", status_code=status.HTTP_201_CREATED)
def add_route(body: RouteBody, request: Request, user: str = RequireUser):
    settings = get_settings()
    if _count_routes() >= settings.max_routes:
        raise HTTPException(
            status.HTTP_409_CONFLICT,
            f"limite de {settings.max_routes} rotas atingido (MAX_ROUTES)",
        )
    try:
        prefix, plen, family = validate_prefix(body.prefix)
        next_hop = validate_next_hop(body.next_hop)
        communities = validate_communities(body.communities)
    except RouteRejected as exc:
        raise HTTPException(status.HTTP_400_BAD_REQUEST, str(exc)) from None

    if get_conn().execute(
        "SELECT 1 FROM routes WHERE prefix = ? AND family = ?", (prefix, family)
    ).fetchone():
        raise HTTPException(status.HTTP_409_CONFLICT, f"{prefix} ja esta cadastrado")

    ts = now_iso()
    with tx() as conn:
        cur = conn.execute(
            "INSERT INTO routes (prefix, prefix_len, family, category, source, note,"
            " enabled, next_hop, communities, created_at, updated_at)"
            " VALUES (?,?,?,?,?,?,?,?,?,?,?)",
            (prefix, plen, family, body.category, "manual", body.note,
             int(body.enabled), next_hop, communities, ts, ts),
        )
        route_id = cur.lastrowid

    if body.enabled:
        try:
            get_client().add_path(
                prefix, plen, family,
                next_hop or settings.default_next_hop,
                communities or settings.default_communities,
            )
        except GoBGPError as exc:
            log.error("rota %s no banco mas nao no RIB: %s", prefix, exc)

    audit(user, "route.add", prefix, body.category, client_ip(request))
    return {"id": route_id, "prefix": prefix}


@router.delete("/{route_id}")
def delete_route(route_id: int, request: Request, user: str = RequireUser):
    row = get_conn().execute("SELECT * FROM routes WHERE id = ?", (route_id,)).fetchone()
    if not row:
        raise HTTPException(status.HTTP_404_NOT_FOUND, "rota nao encontrada")
    row = dict(row)
    next_hop, communities = _effective(row)

    with tx() as conn:
        conn.execute("DELETE FROM routes WHERE id = ?", (route_id,))
    try:
        get_client().delete_path(
            row["prefix"], row["prefix_len"], row["family"], next_hop, communities
        )
    except GoBGPError as exc:
        log.warning("rota removida do banco, falha no RIB: %s", exc)

    audit(user, "route.delete", row["prefix"], None, client_ip(request))
    return {"ok": True}


@router.post("/{route_id}/toggle")
def toggle_route(route_id: int, request: Request, user: str = RequireUser):
    row = get_conn().execute("SELECT * FROM routes WHERE id = ?", (route_id,)).fetchone()
    if not row:
        raise HTTPException(status.HTTP_404_NOT_FOUND, "rota nao encontrada")
    row = dict(row)
    new_state = 0 if row["enabled"] else 1
    next_hop, communities = _effective(row)

    with tx() as conn:
        conn.execute("UPDATE routes SET enabled = ?, updated_at = ? WHERE id = ?",
                     (new_state, now_iso(), route_id))
    client = get_client()
    try:
        if new_state:
            client.add_path(row["prefix"], row["prefix_len"], row["family"],
                            next_hop, communities)
        else:
            client.delete_path(row["prefix"], row["prefix_len"], row["family"],
                               next_hop, communities)
    except GoBGPError as exc:
        log.warning("toggle %s: RIB fora de sincronia (%s)", row["prefix"], exc)

    audit(user, "route.toggle", row["prefix"],
          "ativada" if new_state else "pausada", client_ip(request))
    return {"ok": True, "enabled": bool(new_state)}


@router.post("/bulk-delete")
def bulk_delete(body: BulkIdsBody, request: Request, user: str = RequireUser):
    conn = get_conn()
    placeholders = ",".join("?" * len(body.ids))
    rows = [dict(r) for r in conn.execute(
        f"SELECT * FROM routes WHERE id IN ({placeholders})", body.ids
    ).fetchall()]
    if not rows:
        return {"removed": 0}

    with tx() as c:
        c.execute(f"DELETE FROM routes WHERE id IN ({placeholders})", body.ids)

    client = get_client()
    failed = 0
    for row in rows:
        next_hop, communities = _effective(row)
        try:
            client.delete_path(row["prefix"], row["prefix_len"], row["family"],
                               next_hop, communities)
        except GoBGPError:
            failed += 1

    audit(user, "route.bulk-delete", f"{len(rows)} prefixos", None, client_ip(request))
    return {"removed": len(rows), "rib_failures": failed}


# ── importacao em massa ──────────────────────────────────────────────────────

def _dry_run_payload(parsed, only_list: str | None) -> dict:
    conn = get_conn()
    existing = {r["prefix"] for r in conn.execute("SELECT prefix FROM routes").fetchall()}
    novos = [r for r in parsed.routes if r.prefix not in existing]
    ja_existem = len(parsed.routes) - len(novos)
    settings = get_settings()
    capacity = settings.max_routes - _count_routes()

    return {
        "parsed": len(parsed.routes),
        "novos": len(novos),
        "ja_existem": ja_existem,
        "duplicados_no_arquivo": parsed.duplicates,
        "invalidos": len(parsed.invalid),
        "invalidos_amostra": parsed.invalid[:50],
        "categorias": dict(sorted(parsed.categories.items(), key=lambda kv: -kv[1])),
        "listas_encontradas": sorted(parsed.lists_seen),
        "only_list": only_list,
        "capacidade_restante": capacity,
        "excede_limite": len(novos) > capacity,
        "amostra": [
            {"prefix": r.prefix, "category": r.category} for r in novos[:20]
        ],
    }


@router.post("/preview")
async def preview_import(
    request: Request,
    file: UploadFile | None = File(default=None),
    user: str = RequireUser,
):
    """Dry-run: parseia e reporta, sem gravar nada."""
    content, only_list, category = await _read_payload(request, file)
    parsed = parse_auto(content, only_list=only_list, category=category)
    return _dry_run_payload(parsed, only_list)


@router.post("/import")
async def commit_import(
    request: Request,
    file: UploadFile | None = File(default=None),
    user: str = RequireUser,
):
    """Importa de fato. Devolve job_id; o progresso vai por /api/jobs/{id}."""
    content, only_list, category = await _read_payload(request, file)
    parsed = parse_auto(content, only_list=only_list, category=category)
    settings = get_settings()

    conn = get_conn()
    existing = {r["prefix"] for r in conn.execute("SELECT prefix FROM routes").fetchall()}
    novos = [r for r in parsed.routes if r.prefix not in existing]

    capacity = settings.max_routes - _count_routes()
    if len(novos) > capacity:
        raise HTTPException(
            status.HTTP_409_CONFLICT,
            f"import de {len(novos)} rotas excede MAX_ROUTES "
            f"(restam {capacity} vagas)",
        )
    if not novos:
        return {"job_id": None, "novos": 0, "mensagem": "nada novo para importar"}

    job_id = job_create("import", total=len(novos))
    ip = client_ip(request)

    def _work() -> dict:
        ts = now_iso()
        with tx() as c:
            c.executemany(
                "INSERT OR IGNORE INTO routes (prefix, prefix_len, family, category,"
                " source, note, enabled, next_hop, communities, created_at, updated_at)"
                " VALUES (?,?,?,?,?,?,1,NULL,NULL,?,?)",
                [(r.prefix, r.prefix_len, r.family, r.category, "rsc-import", None, ts, ts)
                 for r in novos],
            )
        job_progress(job_id, len(novos) // 2)

        rows = [{"prefix": r.prefix, "prefix_len": r.prefix_len, "family": r.family,
                 "next_hop": None, "communities": None} for r in novos]
        injected = get_client().add_paths_bulk(
            rows, progress=lambda n: job_progress(job_id, n)
        )
        audit(user, "route.import", f"{len(novos)} prefixos",
              f"injetados {injected}", ip)
        return {"gravados": len(novos), "injetados": injected,
                "invalidos": len(parsed.invalid), "ja_existiam":
                len(parsed.routes) - len(novos)}

    job_run(job_id, _work)
    return {"job_id": job_id, "novos": len(novos)}


@router.post("/bulk")
def bulk_add(body: BulkBody, request: Request, user: str = RequireUser):
    """Adiciona vários prefixos colados na UI (um por linha)."""
    parsed = parse_auto(body.content, only_list=body.only_list, category=body.category)
    try:
        next_hop = validate_next_hop(body.next_hop)
        communities = validate_communities(body.communities)
    except RouteRejected as exc:
        raise HTTPException(status.HTTP_400_BAD_REQUEST, str(exc)) from None

    settings = get_settings()
    conn = get_conn()
    existing = {r["prefix"] for r in conn.execute("SELECT prefix FROM routes").fetchall()}
    novos = [r for r in parsed.routes if r.prefix not in existing]

    capacity = settings.max_routes - _count_routes()
    if len(novos) > capacity:
        raise HTTPException(
            status.HTTP_409_CONFLICT,
            f"{len(novos)} rotas excedem MAX_ROUTES (restam {capacity})",
        )

    ts = now_iso()
    if novos:
        with tx() as c:
            c.executemany(
                "INSERT OR IGNORE INTO routes (prefix, prefix_len, family, category,"
                " source, note, enabled, next_hop, communities, created_at, updated_at)"
                " VALUES (?,?,?,?,?,?,1,?,?,?,?)",
                [(r.prefix, r.prefix_len, r.family, r.category or body.category,
                  "manual-bulk", None, next_hop, communities, ts, ts) for r in novos],
            )
        rows = [{"prefix": r.prefix, "prefix_len": r.prefix_len, "family": r.family,
                 "next_hop": next_hop, "communities": communities} for r in novos]
        try:
            get_client().add_paths_bulk(rows)
        except GoBGPError as exc:
            log.error("bulk gravado no banco mas nao injetado: %s", exc)

    audit(user, "route.bulk-add", f"{len(novos)} prefixos", None, client_ip(request))
    return {
        "adicionados": len(novos),
        "ja_existiam": len(parsed.routes) - len(novos),
        "invalidos": parsed.invalid[:100],
        "total_invalidos": len(parsed.invalid),
        "duplicados_no_texto": parsed.duplicates,
    }


async def _read_payload(request: Request, file: UploadFile | None):
    """Aceita upload multipart ou JSON {content, only_list, category}."""
    if file is not None:
        raw = await file.read()
        if len(raw) > MAX_UPLOAD_BYTES:
            raise HTTPException(status.HTTP_413_REQUEST_ENTITY_TOO_LARGE,
                                "arquivo maior que 16 MB")
        form = await request.form()
        return (raw.decode("utf-8", errors="replace"),
                form.get("only_list") or None,
                form.get("category") or None)

    body = await request.json()
    content = body.get("content") or ""
    if len(content) > MAX_UPLOAD_BYTES:
        raise HTTPException(status.HTTP_413_REQUEST_ENTITY_TOO_LARGE, "conteudo grande demais")
    return content, body.get("only_list") or None, body.get("category") or None


# ── exportacao ───────────────────────────────────────────────────────────────

@router.get("/export")
def export_routes(format: str = Query("csv", pattern="^(csv|txt|rsc)$"),
                  enabled_only: bool = True, user: str = RequireUser):
    clause = "WHERE enabled = 1" if enabled_only else ""
    rows = [dict(r) for r in get_conn().execute(
        f"SELECT * FROM routes {clause} ORDER BY family, prefix_len, prefix"
    ).fetchall()]
    settings = get_settings()

    if format == "txt":
        body = "\n".join(r["prefix"] for r in rows) + "\n"
        return PlainTextResponse(body, headers=_attachment("rotas.txt"))

    if format == "rsc":
        lines = ["/ip firewall address-list"]
        for r in rows:
            addr = r["prefix"].split("/")[0] if r["prefix_len"] == 32 else r["prefix"]
            comment = f' comment="block-attack-{r["category"]}"' if r["category"] else ""
            lines.append(f"add address={addr}{comment} list=BLOCK-BGP")
        return PlainTextResponse("\n".join(lines) + "\n", headers=_attachment("rotas.rsc"))

    buf = io.StringIO()
    writer = csv.writer(buf)
    writer.writerow(["prefix", "family", "category", "next_hop", "communities",
                     "enabled", "source", "created_at"])
    for r in rows:
        writer.writerow([
            r["prefix"], r["family"], r["category"] or "",
            r["next_hop"] or settings.default_next_hop,
            r["communities"] or settings.default_communities,
            r["enabled"], r["source"], r["created_at"],
        ])
    return PlainTextResponse(buf.getvalue(), media_type="text/csv",
                             headers=_attachment("rotas.csv"))


def _attachment(filename: str) -> dict:
    return {"Content-Disposition": f'attachment; filename="{filename}"'}
