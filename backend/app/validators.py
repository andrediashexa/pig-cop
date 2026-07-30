"""Guard-rails de prefixo.

O risco real de um controller RTBH nao e tecnico, e blackholar rede legitima.
Toda rota passa por aqui antes de ir para o banco ou para o RIB.
"""
from __future__ import annotations

import ipaddress
import re

from .config import get_settings

COMMUNITY_RE = re.compile(r"^(\d{1,5}):(\d{1,5})$")
LARGE_COMMUNITY_RE = re.compile(r"^(\d{1,10}):(\d{1,10}):(\d{1,10})$")


class RouteRejected(ValueError):
    """Prefixo recusado pela validacao. A mensagem vai para a UI."""


def normalize_prefix(raw: str) -> tuple[str, int, str]:
    """'1.2.3.4' ou '1.2.3.0/24' -> ('1.2.3.0/24', 24, 'ipv4'). Levanta RouteRejected."""
    raw = (raw or "").strip()
    if not raw:
        raise RouteRejected("prefixo vazio")
    try:
        net = ipaddress.ip_network(raw, strict=False)
    except ValueError as exc:
        raise RouteRejected(f"prefixo invalido: {exc}") from None
    family = "ipv4" if net.version == 4 else "ipv6"
    return str(net), net.prefixlen, family


def validate_prefix(raw: str) -> tuple[str, int, str]:
    """Normaliza e aplica todos os guard-rails. Retorna (prefix, len, family)."""
    s = get_settings()
    prefix, plen, family = normalize_prefix(raw)
    net = ipaddress.ip_network(prefix, strict=False)

    if net.version == 4:
        if plen < s.min_prefix_len_v4:
            raise RouteRejected(
                f"prefixo curto demais (/{plen}); minimo permitido /{s.min_prefix_len_v4}"
            )
    else:
        if plen < s.min_prefix_len_v6:
            raise RouteRejected(
                f"prefixo curto demais (/{plen}); minimo permitido /{s.min_prefix_len_v6}"
            )

    if net.num_addresses > 1 and int(net.network_address) == 0:
        raise RouteRejected("rota default nao pode ser anunciada")

    first = net.network_address
    if first.is_private and not first.is_global:
        raise RouteRejected("espaco privado/reservado (RFC1918, CGNAT, etc)")
    if first.is_loopback:
        raise RouteRejected("loopback")
    if first.is_multicast:
        raise RouteRejected("multicast")
    if first.is_link_local:
        raise RouteRejected("link-local")
    if first.is_unspecified:
        raise RouteRejected("endereco nao especificado")
    if net.version == 4 and first in ipaddress.ip_network("240.0.0.0/4"):
        raise RouteRejected("classe E reservada")

    for protected in s.protected_networks:
        if protected.version != net.version:
            continue
        if net.subnet_of(protected) or protected.subnet_of(net):
            raise RouteRejected(f"colide com prefixo protegido {protected}")

    return prefix, plen, family


def validate_communities(raw: str | None) -> str | None:
    """Aceita CSV de 'asn:valor' e 'a:b:c' (large). Retorna CSV normalizado."""
    if raw is None:
        return None
    items = [c.strip() for c in raw.split(",") if c.strip()]
    if not items:
        return None
    for c in items:
        if COMMUNITY_RE.match(c):
            a, b = c.split(":")
            if int(a) > 65535 or int(b) > 65535:
                raise RouteRejected(f"community fora do range: {c}")
        elif LARGE_COMMUNITY_RE.match(c):
            if any(int(p) > 4294967295 for p in c.split(":")):
                raise RouteRejected(f"large community fora do range: {c}")
        else:
            raise RouteRejected(f"community invalida: {c} (use 65535:666 ou 65000:1:2)")
    return ",".join(items)


def validate_next_hop(raw: str | None) -> str | None:
    if raw is None or not raw.strip():
        return None
    try:
        ipaddress.ip_address(raw.strip())
    except ValueError:
        raise RouteRejected(f"next-hop invalido: {raw}") from None
    return raw.strip()


def validate_neighbor(raw: str) -> str:
    try:
        return str(ipaddress.ip_address((raw or "").strip()))
    except ValueError:
        raise RouteRejected(f"IP de vizinho invalido: {raw}") from None


def validate_asn(asn: int) -> int:
    if not (0 < asn <= 4294967295):
        raise RouteRejected(f"ASN invalido: {asn}")
    return asn
