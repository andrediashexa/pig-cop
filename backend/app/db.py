"""SQLite: fonte da verdade do que deve ser anunciado.

O RIB do gobgpd e volatil (some no restart). Aqui e o estado duravel; o
reconcile (app/gobgp/reconcile.py) empurra este estado para o RIB.
"""
from __future__ import annotations

import os
import sqlite3
import threading
from contextlib import contextmanager
from datetime import datetime, timezone

from .config import get_settings

_local = threading.local()

SCHEMA = """
CREATE TABLE IF NOT EXISTS routes (
  id           INTEGER PRIMARY KEY AUTOINCREMENT,
  prefix       TEXT    NOT NULL,
  prefix_len   INTEGER NOT NULL,
  family       TEXT    NOT NULL DEFAULT 'ipv4',
  category     TEXT,
  source       TEXT    NOT NULL DEFAULT 'manual',
  note         TEXT,
  enabled      INTEGER NOT NULL DEFAULT 1,
  next_hop     TEXT,
  communities  TEXT,
  created_at   TEXT    NOT NULL,
  updated_at   TEXT    NOT NULL,
  UNIQUE(prefix, family)
);
CREATE INDEX IF NOT EXISTS idx_routes_category ON routes(category);
CREATE INDEX IF NOT EXISTS idx_routes_enabled  ON routes(enabled);
CREATE INDEX IF NOT EXISTS idx_routes_prefix   ON routes(prefix);

CREATE TABLE IF NOT EXISTS peers (
  id             INTEGER PRIMARY KEY AUTOINCREMENT,
  neighbor       TEXT    NOT NULL UNIQUE,
  peer_asn       INTEGER NOT NULL,
  description    TEXT,
  auth_password  TEXT,
  ebgp_multihop  INTEGER NOT NULL DEFAULT 0,
  multihop_ttl   INTEGER NOT NULL DEFAULT 1,
  passive        INTEGER NOT NULL DEFAULT 1,
  max_prefixes   INTEGER NOT NULL DEFAULT 0,
  hold_time      INTEGER NOT NULL DEFAULT 90,
  enabled        INTEGER NOT NULL DEFAULT 1,
  created_at     TEXT    NOT NULL,
  updated_at     TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS audit (
  id      INTEGER PRIMARY KEY AUTOINCREMENT,
  ts      TEXT NOT NULL,
  actor   TEXT NOT NULL,
  action  TEXT NOT NULL,
  target  TEXT,
  detail  TEXT,
  ip      TEXT
);
CREATE INDEX IF NOT EXISTS idx_audit_ts ON audit(ts DESC);

CREATE TABLE IF NOT EXISTS settings (
  key   TEXT PRIMARY KEY,
  value TEXT NOT NULL
);
"""


def now_iso() -> str:
    return datetime.now(timezone.utc).isoformat(timespec="seconds")


def _connect() -> sqlite3.Connection:
    settings = get_settings()
    os.makedirs(os.path.dirname(settings.db_path) or ".", exist_ok=True)
    conn = sqlite3.connect(settings.db_path, timeout=30, check_same_thread=False)
    conn.row_factory = sqlite3.Row
    conn.execute("PRAGMA journal_mode=WAL")
    conn.execute("PRAGMA synchronous=NORMAL")
    conn.execute("PRAGMA foreign_keys=ON")
    conn.execute("PRAGMA busy_timeout=30000")
    return conn


def get_conn() -> sqlite3.Connection:
    conn = getattr(_local, "conn", None)
    if conn is None:
        conn = _connect()
        _local.conn = conn
    return conn


@contextmanager
def tx():
    conn = get_conn()
    try:
        yield conn
        conn.commit()
    except Exception:
        conn.rollback()
        raise


def init_db() -> None:
    conn = get_conn()
    conn.executescript(SCHEMA)
    conn.commit()


def audit(actor: str, action: str, target: str | None = None,
          detail: str | None = None, ip: str | None = None) -> None:
    with tx() as conn:
        conn.execute(
            "INSERT INTO audit (ts, actor, action, target, detail, ip) VALUES (?,?,?,?,?,?)",
            (now_iso(), actor, action, target, detail, ip),
        )
