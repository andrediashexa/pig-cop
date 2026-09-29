"""Configuracao via ambiente (docker-compose -> .env)."""
from __future__ import annotations

import ipaddress
import re
from functools import lru_cache

from pydantic_settings import BaseSettings, SettingsConfigDict


_COMMUNITY_RE = re.compile(r"^(\d+):(\d+)$")
_LARGE_COMMUNITY_RE = re.compile(r"^(\d+):(\d+):(\d+)$")
_EXT_COMMUNITY_RE = re.compile(r"^(rt|soo):(\d+):(\d+)$", re.IGNORECASE)
_U16, _U32 = 65535, 4294967295

# Subtipos das extended communities AS-specific (RFC 4360 / RFC 5668).
EXT_SUBTYPES = {"rt": 0x02, "soo": 0x03}
FORMATOS = "65535:666 (standard), 65000:0:666 (large), rt:65000:666 ou soo:65000:666 (extended)"


def parse_community(item: str) -> tuple:
    """Interpreta uma community do CSV. Levanta ValueError com o motivo.

    Retorna um de:
      ("standard", valor32)                      65535:666        RFC 1997
      ("large", (global, local1, local2))        65536:0:666      RFC 8092
      ("extended", "rt"|"soo", asn, local)       rt:65536:666     RFC 4360/5668

    ASN:N com ASN de 4 bytes nao cabe numa standard (16:16 bits); nessa
    notacao ele e a extended community route-target 4-octet AS-specific -
    e o que roteadores entendem por "ext-community ASN:N". Antes isso
    estourava o uint32 do protobuf e o GoBGP so dizia "Value out of range".
    """
    item = item.strip()
    m = _EXT_COMMUNITY_RE.match(item)
    if m:
        kind, asn, local = m.group(1).lower(), int(m.group(2)), int(m.group(3))
    else:
        m = _COMMUNITY_RE.match(item)
        if m:
            asn, local = int(m.group(1)), int(m.group(2))
            if asn <= _U16 and local <= _U16:
                return ("standard", (asn << 16) | local)
            if asn <= _U16:
                raise ValueError(f"{item}: community fora do range (cada parte vai de 0 a 65535)")
            kind = "rt"
        else:
            m = _LARGE_COMMUNITY_RE.match(item)
            if not m:
                raise ValueError(f"{item}: community invalida (use {FORMATOS})")
            parts = tuple(int(p) for p in m.groups())
            if any(p > _U32 for p in parts):
                raise ValueError(f"{item}: large community fora do range (cada parte vai de 0 a {_U32})")
            return ("large", parts)

    # extended AS-specific: 2 bytes de ASN + 4 de valor, ou 4 de ASN + 2 de valor
    if asn > _U32:
        raise ValueError(f"{item}: ASN {asn} fora do range (maximo {_U32})")
    if asn > _U16 and local > _U16:
        raise ValueError(
            f"{item}: em extended community com ASN de 4 bytes o valor vai de 0 a 65535; "
            f"para valor maior use a large community {asn}:0:{local}")
    if local > _U32:
        raise ValueError(f"{item}: valor fora do range (maximo {_U32})")
    return ("extended", kind, asn, local)


def community_problem(item: str) -> str | None:
    """Motivo pelo qual a community nao pode ir no UPDATE, ou None se ok."""
    try:
        parse_community(item)
    except ValueError as exc:
        return str(exc)
    return None


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

    def config_errors(self) -> list[str]:
        """Erros do .env que impedem anunciar qualquer rota.

        Vao para o log no boot, para o /health e para o erro do reconcile (que
        a UI mostra no card "Ultima sincronizacao").
        """
        errors = []
        if not 1 <= self.local_asn <= _U32:
            errors.append(f"LOCAL_ASN={self.local_asn} fora do range (1 a {_U32})")
        try:
            ipaddress.IPv4Address(self.router_id)
        except ValueError:
            errors.append(f"ROUTER_ID={self.router_id!r} nao e um IPv4")
        try:
            ipaddress.ip_address(self.default_next_hop)
        except ValueError:
            errors.append(f"DEFAULT_NEXT_HOP={self.default_next_hop!r} nao e um IP")
        for item in self.default_community_list:
            problem = community_problem(item)
            if problem:
                errors.append(f"DEFAULT_COMMUNITIES {problem}")
        return errors

    def invalid_protected_prefixes(self) -> list[str]:
        """Entradas de PROTECTED_PREFIXES que nao parseiam (e por isso nao protegem)."""
        bad = []
        for raw in self.protected_prefixes.split(","):
            raw = raw.strip()
            if not raw:
                continue
            try:
                ipaddress.ip_network(raw, strict=False)
            except ValueError:
                bad.append(raw)
        return bad


@lru_cache(maxsize=1)
def get_settings() -> Settings:
    return Settings()
