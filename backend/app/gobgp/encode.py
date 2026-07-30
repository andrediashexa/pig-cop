"""Traducao entre o modelo do controller e o protobuf do GoBGP v4.

Na API v4 o NLRI e os atributos sao oneof tipados (nao mais google.protobuf.Any),
entao a montagem e direta.
"""
from __future__ import annotations

import ipaddress

from api import attribute_pb2, common_pb2, gobgp_pb2, nlri_pb2

ORIGIN_IGP = 0

FAMILY_IPV4 = common_pb2.Family(
    afi=common_pb2.Family.AFI_IP, safi=common_pb2.Family.SAFI_UNICAST
)
FAMILY_IPV6 = common_pb2.Family(
    afi=common_pb2.Family.AFI_IP6, safi=common_pb2.Family.SAFI_UNICAST
)


def family_for(family: str) -> common_pb2.Family:
    return FAMILY_IPV6 if family == "ipv6" else FAMILY_IPV4


def community_to_int(community: str) -> int:
    """'65535:666' -> 0xFFFF029A."""
    asn, value = community.split(":")
    return (int(asn) << 16) | int(value)


def int_to_community(value: int) -> str:
    return f"{(value >> 16) & 0xFFFF}:{value & 0xFFFF}"


def split_communities(csv: str | None) -> tuple[list[int], list[tuple[int, int, int]]]:
    """Separa communities normais (32 bits) de large communities."""
    normal: list[int] = []
    large: list[tuple[int, int, int]] = []
    for item in (csv or "").split(","):
        item = item.strip()
        if not item:
            continue
        parts = item.split(":")
        if len(parts) == 2:
            normal.append(community_to_int(item))
        elif len(parts) == 3:
            large.append((int(parts[0]), int(parts[1]), int(parts[2])))
    return normal, large


def build_path(prefix: str, prefix_len: int, family: str, next_hop: str,
               communities: str | None) -> gobgp_pb2.Path:
    """Monta um Path pronto para AddPath/DeletePath."""
    addr = prefix.split("/")[0]
    nlri = nlri_pb2.NLRI(
        prefix=nlri_pb2.IPAddressPrefix(prefix_len=prefix_len, prefix=addr)
    )

    attrs = [
        attribute_pb2.Attribute(
            origin=attribute_pb2.OriginAttribute(origin=ORIGIN_IGP)
        ),
    ]

    fam = family_for(family)
    if family == "ipv6":
        # IPv6 vai por MP_REACH_NLRI; next-hop nao pode ir no atributo NEXT_HOP.
        attrs.append(
            attribute_pb2.Attribute(
                mp_reach=attribute_pb2.MpReachNLRIAttribute(
                    family=fam, next_hops=[next_hop], nlris=[nlri]
                )
            )
        )
    else:
        attrs.append(
            attribute_pb2.Attribute(
                next_hop=attribute_pb2.NextHopAttribute(next_hop=next_hop)
            )
        )

    normal, large = split_communities(communities)
    if normal:
        attrs.append(
            attribute_pb2.Attribute(
                communities=attribute_pb2.CommunitiesAttribute(communities=normal)
            )
        )
    if large:
        attrs.append(
            attribute_pb2.Attribute(
                large_communities=attribute_pb2.LargeCommunitiesAttribute(
                    communities=[
                        attribute_pb2.LargeCommunity(
                            global_admin=g, local_data1=l1, local_data2=l2
                        )
                        for g, l1, l2 in large
                    ]
                )
            )
        )

    return gobgp_pb2.Path(nlri=nlri, pattrs=attrs, family=fam)


def path_key(path: gobgp_pb2.Path) -> str | None:
    """Chave 'prefixo/len' de um Path vindo do RIB, ou None se nao for unicast IP."""
    which = path.nlri.WhichOneof("nlri")
    if which != "prefix":
        return None
    p = path.nlri.prefix
    return f"{p.prefix}/{p.prefix_len}"


def decode_path(path: gobgp_pb2.Path) -> dict:
    """Path do RIB -> dict amigavel para a UI."""
    out: dict = {
        "prefix": path_key(path),
        "next_hop": None,
        "communities": [],
        "origin": None,
        "age": path.age.ToDatetime().isoformat() + "Z" if path.age.seconds else None,
        "best": path.best,
        "neighbor": path.neighbor_ip or None,
        "source_asn": path.source_asn or None,
    }
    for attr in path.pattrs:
        which = attr.WhichOneof("attr")
        if which == "next_hop":
            out["next_hop"] = attr.next_hop.next_hop
        elif which == "mp_reach" and attr.mp_reach.next_hops:
            out["next_hop"] = attr.mp_reach.next_hops[0]
        elif which == "communities":
            out["communities"] += [int_to_community(c) for c in attr.communities.communities]
        elif which == "large_communities":
            out["communities"] += [
                f"{c.global_admin}:{c.local_data1}:{c.local_data2}"
                for c in attr.large_communities.communities
            ]
        elif which == "origin":
            out["origin"] = {0: "igp", 1: "egp", 2: "incomplete"}.get(
                attr.origin.origin, str(attr.origin.origin)
            )
    return out


# ── Peers ────────────────────────────────────────────────────────────────────

SESSION_STATE_NAMES = {
    0: "unknown", 1: "idle", 2: "connect", 3: "active",
    4: "opensent", 5: "openconfirm", 6: "established",
}
ADMIN_STATE_NAMES = {0: "unknown", 1: "up", 2: "down", 3: "prefix-limit"}
DISCONNECT_REASONS = {
    0: None, 1: "admin down", 2: "hold timer expirou", 3: "NOTIFICATION enviado",
    4: "NOTIFICATION recebido", 5: "falha de leitura", 6: "falha de escrita",
    7: "idle timer expirou", 8: "restart timer expirou", 9: "graceful restart",
    10: "mensagem invalida", 11: "hard reset", 12: "removido", 13: "ASN incorreto",
}


def reject_all_import_policy() -> gobgp_pb2.ApplyPolicy:
    """Politica de import: descarta TUDO que o peer mandar.

    O controller so anuncia; nada que o outro lado envie pode entrar no nosso
    RIB. Aplicado incondicionalmente em todo peer (AddPeer e UpdatePeer).
    """
    return gobgp_pb2.ApplyPolicy(
        import_policy=gobgp_pb2.PolicyAssignment(
            direction=gobgp_pb2.POLICY_DIRECTION_IMPORT,
            default_action=gobgp_pb2.ROUTE_ACTION_REJECT,
        ),
        export_policy=gobgp_pb2.PolicyAssignment(
            direction=gobgp_pb2.POLICY_DIRECTION_EXPORT,
            default_action=gobgp_pb2.ROUTE_ACTION_ACCEPT,
        ),
    )


def build_peer(row: dict, local_asn: int) -> gobgp_pb2.Peer:
    """Linha da tabela `peers` -> mensagem Peer do GoBGP."""
    neighbor = row["neighbor"]
    is_v6 = ipaddress.ip_address(neighbor).version == 6
    families = [FAMILY_IPV6 if is_v6 else FAMILY_IPV4]

    afi_safis = []
    for fam in families:
        afi_safi = gobgp_pb2.AfiSafi(
            config=gobgp_pb2.AfiSafiConfig(family=fam, enabled=True),
            apply_policy=reject_all_import_policy(),
        )
        if row.get("max_prefixes"):
            afi_safi.prefix_limits.CopyFrom(
                gobgp_pb2.PrefixLimit(
                    family=fam,
                    max_prefixes=int(row["max_prefixes"]),
                    shutdown_threshold_pct=80,
                )
            )
        afi_safis.append(afi_safi)

    peer = gobgp_pb2.Peer(
        conf=gobgp_pb2.PeerConf(
            neighbor_address=neighbor,
            peer_asn=int(row["peer_asn"]),
            local_asn=local_asn,
            description=row.get("description") or "",
            auth_password=row.get("auth_password") or "",
            admin_down=not bool(row.get("enabled", 1)),
            send_community=1,  # propaga standard communities (BLACKHOLE)
        ),
        apply_policy=reject_all_import_policy(),
        afi_safis=afi_safis,
        transport=gobgp_pb2.Transport(passive_mode=bool(row.get("passive", 1))),
        timers=gobgp_pb2.Timers(
            config=gobgp_pb2.TimersConfig(
                hold_time=int(row.get("hold_time") or 90),
                keepalive_interval=max(1, int(row.get("hold_time") or 90) // 3),
                connect_retry=15,
            )
        ),
    )
    if row.get("ebgp_multihop"):
        peer.ebgp_multihop.CopyFrom(
            gobgp_pb2.EbgpMultihop(
                enabled=True, multihop_ttl=int(row.get("multihop_ttl") or 2)
            )
        )
    return peer


def decode_peer(peer: gobgp_pb2.Peer) -> dict:
    """Peer do gobgpd -> dict de estado ao vivo para a UI."""
    state = peer.state
    uptime = None
    if state.session_state == 6 and peer.timers.state.uptime.seconds:
        uptime = peer.timers.state.uptime.ToDatetime().isoformat() + "Z"

    received = advertised = accepted = 0
    for afi_safi in peer.afi_safis:
        received += afi_safi.state.received
        accepted += afi_safi.state.accepted
        advertised += afi_safi.state.advertised

    return {
        "neighbor": state.neighbor_address or peer.conf.neighbor_address,
        "peer_asn": state.peer_asn or peer.conf.peer_asn,
        "local_asn": state.local_asn or peer.conf.local_asn,
        "description": state.description or peer.conf.description,
        "router_id": state.router_id or None,
        "session_state": SESSION_STATE_NAMES.get(state.session_state, "unknown"),
        "admin_state": ADMIN_STATE_NAMES.get(state.admin_state, "unknown"),
        "uptime": uptime,
        "flops": state.flops,
        "received": received,
        "accepted": accepted,
        "advertised": advertised,
        "out_q": state.out_q,
        "messages": {
            "received": state.messages.received.total,
            "sent": state.messages.sent.total,
            "notification_in": state.messages.received.notification,
            "notification_out": state.messages.sent.notification,
            "update_in": state.messages.received.update,
            "update_out": state.messages.sent.update,
        },
        "disconnect_reason": DISCONNECT_REASONS.get(state.disconnect_reason),
        "disconnect_message": state.disconnect_message or None,
        "passive": peer.transport.passive_mode,
        "hold_time": peer.timers.config.hold_time,
        "negotiated_hold_time": peer.timers.state.negotiated_hold_time,
        "ebgp_multihop": peer.ebgp_multihop.enabled,
        "remote_capabilities": len(state.remote_cap),
    }
