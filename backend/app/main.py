"""PIG-COP — Controller BGP anti-botnet (API)."""
from __future__ import annotations

import logging
from contextlib import asynccontextmanager

from fastapi import FastAPI, Request
from fastapi.responses import JSONResponse

from .config import get_settings
from .db import init_db
from .gobgp.reconcile import ReconcileLoop
from .routers import auth as auth_router
from .routers import peers as peers_router
from .routers import routes as routes_router
from .routers import system as system_router
from .validators import RouteRejected

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s %(levelname)-7s %(name)s: %(message)s",
)
log = logging.getLogger("main")

_loop: ReconcileLoop | None = None


@asynccontextmanager
async def lifespan(app: FastAPI):
    global _loop
    settings = get_settings()
    init_db()
    log.info("controller %s | gobgpd em %s | ASN %s router-id %s",
             settings.app_version, settings.gobgp_grpc, settings.local_asn,
             settings.router_id)
    if not settings.jwt_secret or not settings.admin_password_hash:
        log.error("JWT_SECRET/ADMIN_PASSWORD_HASH ausentes: o login vai falhar")
    _loop = ReconcileLoop()
    _loop.start()
    yield
    if _loop:
        _loop.stop()


app = FastAPI(
    title="PIG-COP Controller",
    version=get_settings().app_version,
    lifespan=lifespan,
    docs_url=None,
    redoc_url=None,
    openapi_url=None,
)


@app.exception_handler(RouteRejected)
async def route_rejected_handler(request: Request, exc: RouteRejected):
    return JSONResponse(status_code=400, content={"detail": str(exc)})


api_prefix = "/api"
app.include_router(auth_router.router, prefix=api_prefix)
app.include_router(peers_router.router, prefix=api_prefix)
app.include_router(routes_router.router, prefix=api_prefix)
app.include_router(system_router.router, prefix=api_prefix)
