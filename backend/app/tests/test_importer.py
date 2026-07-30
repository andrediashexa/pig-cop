"""Testes do parser e dos guard-rails. Rodar: python -m pytest backend/app/tests"""
from __future__ import annotations

import os

os.environ.setdefault("PROTECTED_PREFIXES", "45.66.0.0/22")
os.environ.setdefault("MIN_PREFIX_LEN_V4", "24")

from app.importer import normalize_category, parse_auto, parse_plain, parse_rsc  # noqa: E402
from app.validators import RouteRejected, validate_communities, validate_prefix  # noqa: E402

RSC = """# 2026-02-02 17:28:35 by RouterOS 7.20.8
# model = REMOVIDO
/ip firewall address-list
add address=1.116.73.99 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=1.15.116.27 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=1.94.52.128 comment="block-attack-XMRig Monero Cryptominer" \\
    list=BLOCK-BGP
add address=100.53.13.160 comment="block-attack-Metasploit Framework C2" \\
    list=BLOCK-BGP
add address=8.8.8.8 list=OUTRA-LISTA
add address=192.168.1.1 comment=privado list=BLOCK-BGP
add address=1.116.73.99 comment=duplicado list=BLOCK-BGP
add comment=sem-endereco list=BLOCK-BGP
"""


def test_junta_continuacao_de_linha():
    r = parse_rsc(RSC)
    prefixes = {x.prefix for x in r.routes}
    assert "1.94.52.128/32" in prefixes
    assert "100.53.13.160/32" in prefixes


def test_comment_com_e_sem_aspas():
    r = parse_rsc(RSC)
    by_prefix = {x.prefix: x.category for x in r.routes}
    assert by_prefix["1.116.73.99/32"] == "PANDA C2"
    assert by_prefix["1.15.116.27/32"] == "BurpSuite"


def test_filtro_por_address_list():
    todos = parse_rsc(RSC)
    assert "8.8.8.8/32" in {x.prefix for x in todos.routes}
    filtrado = parse_rsc(RSC, only_list="BLOCK-BGP")
    assert "8.8.8.8/32" not in {x.prefix for x in filtrado.routes}
    assert filtrado.lists_seen == {"BLOCK-BGP", "OUTRA-LISTA"}


def test_rejeita_privado_e_conta_duplicata_e_invalido():
    r = parse_rsc(RSC)
    assert "192.168.1.1/32" not in {x.prefix for x in r.routes}
    assert r.duplicates == 1
    motivos = " ".join(i["reason"] for i in r.invalid)
    assert "privado" in motivos.lower()
    assert "sem address" in motivos.lower()


def test_lista_simples():
    r = parse_plain("1.2.3.4\n5.6.7.0/24, Botnet X\n# comentario\n\nlixo\n")
    assert {x.prefix for x in r.routes} == {"1.2.3.4/32", "5.6.7.0/24"}
    assert r.routes[1].category == "Botnet X"
    assert len(r.invalid) == 1


def test_parse_auto_detecta_formato():
    assert parse_auto(RSC).routes
    assert parse_auto("9.9.9.9\n").routes[0].prefix == "9.9.9.9/32"


def test_normalize_category():
    assert normalize_category("block-attack-Sliver C2") == "Sliver C2"
    assert normalize_category("block-scan-Nmap") == "Nmap"
    assert normalize_category(None) is None


# ── guard-rails ──────────────────────────────────────────────────────────────

def test_prefixo_curto_demais_e_rejeitado():
    try:
        validate_prefix("1.0.0.0/8")
        raise AssertionError("deveria rejeitar /8")
    except RouteRejected as exc:
        assert "curto demais" in str(exc)


def test_default_route_rejeitada():
    try:
        validate_prefix("0.0.0.0/0")
        raise AssertionError("deveria rejeitar default")
    except RouteRejected:
        pass


def test_prefixo_protegido():
    try:
        validate_prefix("45.66.1.5")
        raise AssertionError("deveria rejeitar prefixo protegido")
    except RouteRejected as exc:
        assert "protegido" in str(exc)


def test_normaliza_host_para_32():
    assert validate_prefix("1.2.3.4") == ("1.2.3.4/32", 32, "ipv4")


def test_communities():
    assert validate_communities("65535:666, 65000:100") == "65535:666,65000:100"
    assert validate_communities("65000:1:2") == "65000:1:2"
    for ruim in ("65535:99999", "abc", "1:2:3:4"):
        try:
            validate_communities(ruim)
            raise AssertionError(f"deveria rejeitar {ruim}")
        except RouteRejected:
            pass
