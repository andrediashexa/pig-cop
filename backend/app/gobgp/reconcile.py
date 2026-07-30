"""Reconciliacao SQLite -> gobgpd.

O RIB do gobgpd vive em memoria: se o container reiniciar, os anuncios somem.
O SQLite e a fonte da verdade, e este modulo garante que o RIB reflita o banco
- no boot, periodicamente, e sob demanda pela UI.
"""
from __future__ import annotations

import logging
import threading
import time

from ..config import get_settings
from ..db import get_conn
from .client import GoBGPError, get_client

log = logging.getLogger("gobgp.reconcile")

_state_lock = threading.Lock()
_state: dict = {
    "running": False,
    "last_run": None,
    "last_error": None,
    "added": 0,
    "removed": 0,
    "in_db": 0,
    "in_rib": 0,
    "duration_ms": 0,
}


def get_state() -> dict:
    with _state_lock:
        return dict(_state)


def _desired_routes() -> list[dict]:
    conn = get_conn()
    rows = conn.execute(
        "SELECT prefix, prefix_len, family, next_hop, communities "
        "FROM routes WHERE enabled = 1"
    ).fetchall()
    return [dict(r) for r in rows]


def _desired_peers() -> list[dict]:
    conn = get_conn()
    rows = conn.execute("SELECT * FROM peers").fetchall()
    return [dict(r) for r in rows]


def reconcile_peers() -> dict:
    """Garante que os peers do gobgpd sejam exatamente os do banco."""
    client = get_client()
    desired = {p["neighbor"]: p for p in _desired_peers()}
    live = {p["neighbor"]: p for p in client.list_peers()}

    added = removed = 0
    for neighbor, row in desired.items():
        if neighbor not in live:
            client.add_peer(row)
            added += 1
        else:
            # UpdatePeer e idempotente e reaplica a politica de import reject-all.
            client.update_peer(row)
    for neighbor in live:
        if neighbor not in desired:
            client.delete_peer(neighbor)
            removed += 1
    return {"peers_added": added, "peers_removed": removed, "peers_total": len(desired)}


def reconcile_routes() -> dict:
    """Diff prefixos do banco x RIB e aplica so a diferenca."""
    client = get_client()
    settings = get_settings()
    desired_rows = _desired_routes()

    result = {"added": 0, "removed": 0, "in_db": len(desired_rows), "in_rib": 0}

    for family in ("ipv4", "ipv6"):
        fam_rows = [r for r in desired_rows if r["family"] == family]
        try:
            in_rib = client.list_rib_prefixes(family)
        except GoBGPError:
            if not fam_rows:
                continue
            raise
        result["in_rib"] += len(in_rib)

        by_prefix = {r["prefix"]: r for r in fam_rows}
        missing = [by_prefix[p] for p in by_prefix.keys() - in_rib]
        stale = in_rib - by_prefix.keys()

        if missing:
            log.info("reconcile %s: injetando %d prefixos ausentes", family, len(missing))
            result["added"] += client.add_paths_bulk(missing)

        for prefix in stale:
            addr, _, plen = prefix.partition("/")
            try:
                client.delete_path(
                    prefix, int(plen or 32), family,
                    settings.default_next_hop, settings.default_communities,
                )
                result["removed"] += 1
            except GoBGPError as exc:
                log.warning("nao removeu %s do RIB: %s", prefix, exc)

    return result


def reconcile_all() -> dict:
    """Reconcilia global + peers + rotas. Serializado: uma execucao por vez."""
    with _state_lock:
        if _state["running"]:
            return dict(_state)
        _state["running"] = True
        _state["last_error"] = None

    started = time.monotonic()
    try:
        client = get_client()
        client.ensure_started()
        peers = reconcile_peers()
        routes = reconcile_routes()
        result = {**peers, **routes}
        with _state_lock:
            _state.update(result)
            _state["last_run"] = time.time()
            _state["duration_ms"] = int((time.monotonic() - started) * 1000)
        log.info("reconcile ok: %s", result)
        return result
    except Exception as exc:  # noqa: BLE001 - o erro tem que chegar na UI
        log.error("reconcile falhou: %s", exc)
        with _state_lock:
            _state["last_error"] = str(exc)
            _state["last_run"] = time.time()
        raise
    finally:
        with _state_lock:
            _state["running"] = False


class ReconcileLoop(threading.Thread):
    """Watchdog: reconcilia a cada RECONCILE_INTERVAL segundos."""

    daemon = True

    def __init__(self) -> None:
        super().__init__(name="reconcile-loop")
        self._stop = threading.Event()

    def run(self) -> None:
        interval = max(15, get_settings().reconcile_interval)
        # Primeira passada logo no boot, com retry ate o gobgpd subir.
        for attempt in range(30):
            if self._stop.is_set():
                return
            try:
                reconcile_all()
                break
            except Exception as exc:  # noqa: BLE001
                log.warning("reconcile inicial (tentativa %d): %s", attempt + 1, exc)
                self._stop.wait(2)

        while not self._stop.wait(interval):
            try:
                reconcile_all()
            except Exception:  # noqa: BLE001 - ja logado em reconcile_all
                pass

    def stop(self) -> None:
        self._stop.set()
