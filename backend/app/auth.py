"""Autenticacao: senha bcrypt + JWT em cookie httpOnly.

Sem token em localStorage (XSS). Rate-limit no login com backoff por IP.
"""
from __future__ import annotations

import time
from datetime import datetime, timedelta, timezone
from threading import Lock

import bcrypt
import jwt
from fastapi import Depends, HTTPException, Request, Response, status

from .config import get_settings

COOKIE_NAME = "pigcop_session"

_attempts: dict[str, list[float]] = {}
_attempts_lock = Lock()
MAX_ATTEMPTS = 5
WINDOW_SECONDS = 60


def client_ip(request: Request) -> str:
    fwd = request.headers.get("x-forwarded-for")
    if fwd:
        return fwd.split(",")[0].strip()
    return request.client.host if request.client else "?"


def rate_limit_check(ip: str) -> int:
    """Retorna 0 se pode tentar, ou os segundos de espera restantes."""
    now = time.monotonic()
    with _attempts_lock:
        hits = [t for t in _attempts.get(ip, []) if now - t < WINDOW_SECONDS]
        _attempts[ip] = hits
        if len(hits) >= MAX_ATTEMPTS:
            return int(WINDOW_SECONDS - (now - hits[0])) + 1
    return 0


def rate_limit_hit(ip: str) -> None:
    with _attempts_lock:
        _attempts.setdefault(ip, []).append(time.monotonic())


def rate_limit_reset(ip: str) -> None:
    with _attempts_lock:
        _attempts.pop(ip, None)


def verify_password(plain: str, hashed: str) -> bool:
    if not hashed:
        return False
    try:
        return bcrypt.checkpw(plain.encode(), hashed.encode())
    except (ValueError, TypeError):
        return False


def issue_token(username: str) -> str:
    s = get_settings()
    now = datetime.now(timezone.utc)
    payload = {
        "sub": username,
        "iat": int(now.timestamp()),
        "exp": int((now + timedelta(hours=s.jwt_ttl_hours)).timestamp()),
    }
    return jwt.encode(payload, s.jwt_secret, algorithm="HS256")


def set_session_cookie(response: Response, token: str) -> None:
    s = get_settings()
    response.set_cookie(
        COOKIE_NAME,
        token,
        max_age=s.jwt_ttl_hours * 3600,
        httponly=True,
        samesite="strict",
        secure=s.cookie_secure,
        path="/",
    )


def clear_session_cookie(response: Response) -> None:
    response.delete_cookie(COOKIE_NAME, path="/")


def current_user(request: Request) -> str:
    token = request.cookies.get(COOKIE_NAME)
    if not token:
        raise HTTPException(status.HTTP_401_UNAUTHORIZED, "nao autenticado")
    try:
        payload = jwt.decode(token, get_settings().jwt_secret, algorithms=["HS256"])
    except jwt.PyJWTError:
        raise HTTPException(status.HTTP_401_UNAUTHORIZED, "sessao invalida ou expirada")
    sub = payload.get("sub")
    if not sub:
        raise HTTPException(status.HTTP_401_UNAUTHORIZED, "sessao invalida")
    return sub


RequireUser = Depends(current_user)
