"""Configuracao via ambiente (docker-compose -> .env)."""
from __future__ import annotations

import ipaddress
from functools import lru_cache

from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    model_config = SettingsConfigDict(env_file=None, extra="ignore")

    # app
    app_version: str = "0.1.0"
    bind_host: str = "0.0.0.0"
    bind_port: int = 4000

    # auth
    admin_user: str = "hexanetworks"
    admin_password_hash: str = ""
    jwt_secret: str = ""
    jwt_ttl_hours: int = 8
    cookie_secure: bool = False

    # db
    db_path: str = "/data/controller.db"

    # gobgp
    gobgp_grpc: str = "127.0.0.1:50051"
    local_asn: int = 65000
    router_id: str = "10.0.0.1"
    bgp_listen_port: int = 179

    # politica de anuncio
    default_next_hop: str = "192.0.2.1"
    default_communities: str = "65535:666"

    # guard-rails
    protected_prefixes: str = ""
    max_routes: int = 50000
    min_prefix_len_v4: int = 24
    min_prefix_len_v6: int = 48
    reconcile_interval: int = 60

    @property
    def protected_networks(self) -> list[ipaddress._BaseNetwork]:
        out = []
        for raw in self.protected_prefixes.split(","):
            raw = raw.strip()
            if not raw:
                continue
            try:
                out.append(ipaddress.ip_network(raw, strict=False))
            except ValueError:
                continue
        return out

    @property
    def default_community_list(self) -> list[str]:
        return [c.strip() for c in self.default_communities.split(",") if c.strip()]


@lru_cache(maxsize=1)
def get_settings() -> Settings:
    return Settings()
