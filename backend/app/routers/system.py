from __future__ import annotations

import logging

from fastapi import APIRouter, HTTPException, Query, Request, status

from ..auth import RequireUser, client_ip
from ..config import get_settings
from ..db import audit, get_conn
from ..gobgp import reconcile as reconcile_mod
from ..gobgp.client import GoBGPError, get_client
from ..jobs import create as job_create
from ..jobs import get as job_get
from ..jobs import run as job_run

log = logging.getLogger("system")
router = APIRouter(tags=["system"])


@router.get("/health")
def health():
    """Liveness publico: nao expoe nada sensivel."""
    gobgp_ok, detail = True, None
    try:
        get_client().get_bgp(timeout=2.0)
    except GoBGPError as exc:
        gobgp_ok, detail = False, str(exc)
    status_code = "ok" if gobgp_ok else "degraded"
    return {"status": status_code, "gobgp": gobgp_ok, "detail": detail,
            "version": get_settings().app_version}


@router.get("/stats")
def stats(user: str = RequireUser):
    conn = get_conn()
    settings = get_settings()

    totals = conn.execute(
        "SELECT COUNT(*) AS total, COALESCE(SUM(enabled),0) AS ativas FROM routes"
    ).fetchone()
    por_categoria = conn.execute(
        "SELECT COALESCE(NULLIF(category,''), '(sem categoria)') AS category,"
        " COUNT(*) AS total FROM routes WHERE enabled = 1"
        " GROUP BY 1 ORDER BY total DESC LIMIT 12"
    ).fetchall()
    peers_total = conn.execute("SELECT COUNT(*) AS c FROM peers").fetchone()["c"]

    peers_live, established, rib, bgp, erro = [], 0, None, None, None
    import_policy = None
    try:
        client = get_client()
        bgp = client.get_bgp()
        peers_live = client.list_peers()
        established = sum(1 for p in peers_live if p["session_state"] == "established")
        rib = client.table_stats("ipv4")
        import_policy = client.import_policy_state()
    except GoBGPError as exc:
        erro = str(exc)

    return {
        "rotas": {"total": totals["total"], "ativas": totals["ativas"],
                  "limite": settings.max_routes},
        "rib": rib,
        "peers": {"total": peers_total, "estabelecidas": established,
                  "configuradas_no_gobgpd": len(peers_live)},
        "por_categoria": [dict(r) for r in por_categoria],
        "bgp": bgp,
        "politica": {
            "next_hop_padrao": settings.default_next_hop,
            "communities_padrao": settings.default_community_list,
            "import": import_policy,
            "import_ok": bool(import_policy and import_policy.get("peers_rejected")),
            "prefixo_minimo_v4": f"/{settings.min_prefix_len_v4}",
            "prefixos_protegidos": [str(n) for n in settings.protected_networks],
        },
        "reconcile": reconcile_mod.get_state(),
        "gobgp_error": erro,
        "version": settings.app_version,
    }


@router.post("/reconcile")
def force_reconcile(request: Request, user: str = RequireUser):
    job_id = job_create("reconcile")
    ip = client_ip(request)

    def _work():
        result = reconcile_mod.reconcile_all()
        audit(user, "system.reconcile", None, str(result), ip)
        return result

    job_run(job_id, _work)
    return {"job_id": job_id}


@router.get("/jobs/{job_id}")
def job_status(job_id: str, user: str = RequireUser):
    job = job_get(job_id)
    if not job:
        raise HTTPException(status.HTTP_404_NOT_FOUND, "job nao encontrado")
    return job


@router.get("/rib")
def rib_sample(family: str = Query("ipv4", pattern="^(ipv4|ipv6)$"),
               limit: int = Query(200, ge=1, le=2000), user: str = RequireUser):
    """Amostra do que esta REALMENTE no RIB do gobgpd (diagnostico)."""
    try:
        return {"paths": get_client().list_rib(family, limit=limit)}
    except GoBGPError as exc:
        raise HTTPException(status.HTTP_502_BAD_GATEWAY, str(exc)) from None


@router.get("/audit")
def list_audit(page: int = Query(1, ge=1), page_size: int = Query(50, ge=1, le=500),
               action: str | None = None, user: str = RequireUser):
    where, params = [], []
    if action:
        where.append("action LIKE ?")
        params.append(f"{action}%")
    clause = f"WHERE {' AND '.join(where)}" if where else ""
    conn = get_conn()
    total = conn.execute(f"SELECT COUNT(*) AS c FROM audit {clause}", params).fetchone()["c"]
    rows = conn.execute(
        f"SELECT * FROM audit {clause} ORDER BY id DESC LIMIT ? OFFSET ?",
        [*params, page_size, (page - 1) * page_size],
    ).fetchall()
    return {"items": [dict(r) for r in rows], "total": total, "page": page,
            "page_size": page_size}
