from __future__ import annotations

import logging

from fastapi import APIRouter, HTTPException, Request, status
from pydantic import BaseModel, Field

from ..auth import RequireUser, client_ip
from ..db import audit, get_conn, now_iso, tx
from ..gobgp.client import GoBGPError, get_client
from ..validators import RouteRejected, validate_asn, validate_neighbor

log = logging.getLogger("peers")
router = APIRouter(prefix="/peers", tags=["peers"])


class PeerBody(BaseModel):
    neighbor: str
    peer_asn: int
    description: str | None = None
    auth_password: str | None = None
    ebgp_multihop: bool = False
    multihop_ttl: int = Field(default=2, ge=1, le=255)
    passive: bool = True
    max_prefixes: int = Field(default=0, ge=0)
    hold_time: int = Field(default=90, ge=3, le=65535)
    enabled: bool = True


def _row(peer_id: int) -> dict:
    row = get_conn().execute("SELECT * FROM peers WHERE id = ?", (peer_id,)).fetchone()
    if not row:
        raise HTTPException(status.HTTP_404_NOT_FOUND, "peer nao encontrado")
    return dict(row)


@router.get("")
def list_peers(user: str = RequireUser):
    """Config (SQLite) + estado ao vivo (gRPC) casados por IP do vizinho."""
    rows = [dict(r) for r in get_conn().execute(
        "SELECT * FROM peers ORDER BY neighbor"
    ).fetchall()]

    live: dict[str, dict] = {}
    live_error = None
    try:
        live = {p["neighbor"]: p for p in get_client().list_peers()}
    except GoBGPError as exc:
        live_error = str(exc)

    out = []
    for row in rows:
        has_password = bool(row.pop("auth_password", None))
        state = live.pop(row["neighbor"], None)
        out.append({
            **row,
            "has_password": has_password,
            "live": state,
            "session_state": (state or {}).get("session_state", "unknown"),
        })
    # Peers que existem no gobgpd mas nao no banco (o reconcile vai remover).
    orphans = [{"neighbor": n, "live": s, "orphan": True} for n, s in live.items()]

    return {"peers": out, "orphans": orphans, "live_error": live_error}


@router.post("", status_code=status.HTTP_201_CREATED)
def create_peer(body: PeerBody, request: Request, user: str = RequireUser):
    try:
        neighbor = validate_neighbor(body.neighbor)
        peer_asn = validate_asn(body.peer_asn)
    except RouteRejected as exc:
        raise HTTPException(status.HTTP_400_BAD_REQUEST, str(exc)) from None

    exists = get_conn().execute(
        "SELECT 1 FROM peers WHERE neighbor = ?", (neighbor,)
    ).fetchone()
    if exists:
        raise HTTPException(status.HTTP_409_CONFLICT, f"peer {neighbor} ja existe")

    ts = now_iso()
    with tx() as conn:
        cur = conn.execute(
            "INSERT INTO peers (neighbor, peer_asn, description, auth_password,"
            " ebgp_multihop, multihop_ttl, passive, max_prefixes, hold_time,"
            " enabled, created_at, updated_at)"
            " VALUES (?,?,?,?,?,?,?,?,?,?,?,?)",
            (neighbor, peer_asn, body.description, body.auth_password,
             int(body.ebgp_multihop), body.multihop_ttl, int(body.passive),
             body.max_prefixes, body.hold_time, int(body.enabled), ts, ts),
        )
        peer_id = cur.lastrowid

    try:
        get_client().add_peer(_row(peer_id))
    except GoBGPError as exc:
        log.error("peer %s gravado no banco mas nao aplicado: %s", neighbor, exc)

    audit(user, "peer.add", neighbor, f"AS{peer_asn}", client_ip(request))
    return {"id": peer_id, "neighbor": neighbor}


@router.patch("/{peer_id}")
def update_peer(peer_id: int, body: PeerBody, request: Request, user: str = RequireUser):
    current = _row(peer_id)
    try:
        neighbor = validate_neighbor(body.neighbor)
        peer_asn = validate_asn(body.peer_asn)
    except RouteRejected as exc:
        raise HTTPException(status.HTTP_400_BAD_REQUEST, str(exc)) from None

    # Senha em branco = manter a atual.
    password = body.auth_password if body.auth_password else current.get("auth_password")

    with tx() as conn:
        conn.execute(
            "UPDATE peers SET neighbor=?, peer_asn=?, description=?, auth_password=?,"
            " ebgp_multihop=?, multihop_ttl=?, passive=?, max_prefixes=?, hold_time=?,"
            " enabled=?, updated_at=? WHERE id=?",
            (neighbor, peer_asn, body.description, password, int(body.ebgp_multihop),
             body.multihop_ttl, int(body.passive), body.max_prefixes, body.hold_time,
             int(body.enabled), now_iso(), peer_id),
        )

    client = get_client()
    try:
        if current["neighbor"] != neighbor:
            client.delete_peer(current["neighbor"])
            client.add_peer(_row(peer_id))
        else:
            client.update_peer(_row(peer_id))
    except GoBGPError as exc:
        raise HTTPException(status.HTTP_502_BAD_GATEWAY, str(exc)) from None

    audit(user, "peer.update", neighbor, None, client_ip(request))
    return {"ok": True}


@router.delete("/{peer_id}")
def delete_peer(peer_id: int, request: Request, user: str = RequireUser):
    row = _row(peer_id)
    with tx() as conn:
        conn.execute("DELETE FROM peers WHERE id = ?", (peer_id,))
    try:
        get_client().delete_peer(row["neighbor"])
    except GoBGPError as exc:
        log.warning("peer removido do banco, falha no gobgpd: %s", exc)
    audit(user, "peer.delete", row["neighbor"], None, client_ip(request))
    return {"ok": True}


@router.post("/{peer_id}/softreset")
def soft_reset(peer_id: int, request: Request, direction: str = "out",
               user: str = RequireUser):
    row = _row(peer_id)
    try:
        get_client().soft_reset(row["neighbor"], direction)
    except GoBGPError as exc:
        raise HTTPException(status.HTTP_502_BAD_GATEWAY, str(exc)) from None
    audit(user, "peer.softreset", row["neighbor"], direction, client_ip(request))
    return {"ok": True}


@router.post("/{peer_id}/reset")
def hard_reset(peer_id: int, request: Request, user: str = RequireUser):
    row = _row(peer_id)
    try:
        get_client().hard_reset(row["neighbor"])
    except GoBGPError as exc:
        raise HTTPException(status.HTTP_502_BAD_GATEWAY, str(exc)) from None
    audit(user, "peer.reset", row["neighbor"], None, client_ip(request))
    return {"ok": True}


@router.post("/{peer_id}/enable")
def enable(peer_id: int, request: Request, user: str = RequireUser):
    row = _row(peer_id)
    with tx() as conn:
        conn.execute("UPDATE peers SET enabled=1, updated_at=? WHERE id=?",
                     (now_iso(), peer_id))
    try:
        get_client().enable_peer(row["neighbor"])
    except GoBGPError as exc:
        raise HTTPException(status.HTTP_502_BAD_GATEWAY, str(exc)) from None
    audit(user, "peer.enable", row["neighbor"], None, client_ip(request))
    return {"ok": True}


@router.post("/{peer_id}/disable")
def disable(peer_id: int, request: Request, user: str = RequireUser):
    row = _row(peer_id)
    with tx() as conn:
        conn.execute("UPDATE peers SET enabled=0, updated_at=? WHERE id=?",
                     (now_iso(), peer_id))
    try:
        get_client().disable_peer(row["neighbor"])
    except GoBGPError as exc:
        raise HTTPException(status.HTTP_502_BAD_GATEWAY, str(exc)) from None
    audit(user, "peer.disable", row["neighbor"], None, client_ip(request))
    return {"ok": True}
