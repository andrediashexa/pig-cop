from __future__ import annotations

import logging

from fastapi import APIRouter, HTTPException, Request, Response, status
from pydantic import BaseModel, Field

from ..auth import (
    RequireUser, clear_session_cookie, client_ip, issue_token, rate_limit_check,
    rate_limit_hit, rate_limit_reset, set_session_cookie, verify_password,
)
from ..config import get_settings
from ..db import audit

log = logging.getLogger("auth")
router = APIRouter(prefix="/auth", tags=["auth"])


class LoginBody(BaseModel):
    username: str = Field(min_length=1, max_length=128)
    password: str = Field(min_length=1, max_length=256)


@router.post("/login")
def login(body: LoginBody, request: Request, response: Response):
    ip = client_ip(request)
    wait = rate_limit_check(ip)
    if wait:
        audit("-", "login.ratelimited", body.username, f"espera {wait}s", ip)
        raise HTTPException(
            status.HTTP_429_TOO_MANY_REQUESTS,
            f"muitas tentativas; tente novamente em {wait}s",
        )

    settings = get_settings()
    ok = (
        body.username == settings.admin_user
        and verify_password(body.password, settings.admin_password_hash)
    )
    if not ok:
        rate_limit_hit(ip)
        audit("-", "login.failed", body.username, None, ip)
        # Mensagem generica: nao revela qual campo errou.
        raise HTTPException(status.HTTP_401_UNAUTHORIZED, "credenciais invalidas")

    rate_limit_reset(ip)
    set_session_cookie(response, issue_token(body.username))
    audit(body.username, "login.ok", None, None, ip)
    return {"username": body.username}


@router.post("/logout")
def logout(request: Request, response: Response):
    clear_session_cookie(response)
    return {"ok": True}


@router.get("/me")
def me(user: str = RequireUser):
    return {"username": user, "version": get_settings().app_version}
