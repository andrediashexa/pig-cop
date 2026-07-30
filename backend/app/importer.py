"""Parser do export do RouterOS (/ip firewall address-list) e de listas simples.

Formatos tratados no arquivo real (rotas.rsc):
  add address=1.2.3.4 comment=block-attack-GoPhish list=BLOCK-BGP
  add address=1.2.3.4 comment="block-attack-Sliver C2" list=BLOCK-BGP
  add address=1.2.3.4 list=BLOCK-BGP comment="..."       (ordem varia)
  add address=1.2.3.4 comment="..." list=\\
      BLOCK-BGP                                          (continuacao de linha)
"""
from __future__ import annotations

import re
from dataclasses import dataclass, field

from .validators import RouteRejected, validate_prefix

CONTINUATION_RE = re.compile(r"\\\s*\n\s*")
ADDRESS_RE = re.compile(r"\baddress=([^\s]+)")
LIST_RE = re.compile(r"\blist=([^\s]+)")
COMMENT_RE = re.compile(r'\bcomment=(?:"([^"]*)"|([^\s]+))')
CATEGORY_PREFIX_RE = re.compile(r"^block-(?:attack|scan|spam)-", re.IGNORECASE)


@dataclass
class ParsedRoute:
    prefix: str
    prefix_len: int
    family: str
    category: str | None
    raw: str


@dataclass
class ParseResult:
    routes: list[ParsedRoute] = field(default_factory=list)
    invalid: list[dict] = field(default_factory=list)
    duplicates: int = 0
    lists_seen: set[str] = field(default_factory=set)

    @property
    def categories(self) -> dict[str, int]:
        out: dict[str, int] = {}
        for r in self.routes:
            key = r.category or "(sem categoria)"
            out[key] = out.get(key, 0) + 1
        return out


def normalize_category(comment: str | None) -> str | None:
    if not comment:
        return None
    cleaned = CATEGORY_PREFIX_RE.sub("", comment.strip()).strip()
    return cleaned or None


def parse_rsc(content: str, only_list: str | None = None) -> ParseResult:
    """Parseia um .rsc do RouterOS. `only_list` filtra por address-list."""
    result = ParseResult()
    # Junta continuacoes de linha ANTES de qualquer coisa (851 linhas no arquivo real).
    joined = CONTINUATION_RE.sub("", content)
    seen: set[str] = set()

    for lineno, line in enumerate(joined.splitlines(), start=1):
        line = line.strip()
        if not line or line.startswith("#") or line.startswith("/"):
            continue
        if not line.startswith("add "):
            continue

        m_addr = ADDRESS_RE.search(line)
        if not m_addr:
            result.invalid.append({"line": lineno, "raw": line, "reason": "sem address="})
            continue

        m_list = LIST_RE.search(line)
        if m_list:
            result.lists_seen.add(m_list.group(1))
            if only_list and m_list.group(1) != only_list:
                continue

        m_comment = COMMENT_RE.search(line)
        comment = None
        if m_comment:
            comment = m_comment.group(1) if m_comment.group(1) is not None else m_comment.group(2)

        raw_addr = m_addr.group(1)
        # RouterOS aceita range 'a-b'; nao suportado aqui.
        if "-" in raw_addr:
            result.invalid.append(
                {"line": lineno, "raw": raw_addr, "reason": "range de IPs nao suportado"}
            )
            continue

        try:
            prefix, plen, family = validate_prefix(raw_addr)
        except RouteRejected as exc:
            result.invalid.append({"line": lineno, "raw": raw_addr, "reason": str(exc)})
            continue

        if prefix in seen:
            result.duplicates += 1
            continue
        seen.add(prefix)

        result.routes.append(
            ParsedRoute(
                prefix=prefix, prefix_len=plen, family=family,
                category=normalize_category(comment), raw=raw_addr,
            )
        )

    return result


def parse_plain(content: str, category: str | None = None) -> ParseResult:
    """Lista simples: um prefixo por linha, com '#' de comentario e CSV opcional.

    Aceita 'prefixo' ou 'prefixo,categoria'.
    """
    result = ParseResult()
    seen: set[str] = set()

    for lineno, line in enumerate(content.splitlines(), start=1):
        line = line.split("#", 1)[0].strip()
        if not line:
            continue
        parts = [p.strip() for p in re.split(r"[,;\t]", line) if p.strip()]
        raw_addr = parts[0]
        cat = parts[1] if len(parts) > 1 else category

        try:
            prefix, plen, family = validate_prefix(raw_addr)
        except RouteRejected as exc:
            result.invalid.append({"line": lineno, "raw": raw_addr, "reason": str(exc)})
            continue

        if prefix in seen:
            result.duplicates += 1
            continue
        seen.add(prefix)

        result.routes.append(
            ParsedRoute(
                prefix=prefix, prefix_len=plen, family=family,
                category=normalize_category(cat) or cat, raw=raw_addr,
            )
        )

    return result


def parse_auto(content: str, only_list: str | None = None,
               category: str | None = None) -> ParseResult:
    """Detecta o formato pelo conteudo."""
    if "add address=" in content or "/ip firewall address-list" in content:
        return parse_rsc(content, only_list=only_list)
    return parse_plain(content, category=category)
