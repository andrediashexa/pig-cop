"""Cliente gRPC do gobgpd.

Sincrono e protegido por lock: o volume de chamadas e baixo (a UI faz polling)
e o caminho quente (injecao em massa) usa AddPathStream, que ja e um lote so.
"""
from __future__ import annotations

import logging
import threading
from typing import Iterable, Iterator

import grpc
from api import gobgp_pb2, gobgp_pb2_grpc

from ..config import get_settings
from . import encode

log = logging.getLogger("gobgp.client")

# Um AddPathStreamRequest com paths demais estoura o limite de mensagem do gRPC.
STREAM_CHUNK = 500

# Politica que descarta tudo que vier de qualquer peer.
PEER_NEIGHBOR_SET = "pigcop-any-peer"
REJECT_PEERS_POLICY = "pigcop-reject-from-peers"


class GoBGPError(RuntimeError):
    pass


class GoBGPClient:
    def __init__(self, target: str | None = None):
        settings = get_settings()
        self.target = target or settings.gobgp_grpc
        self._lock = threading.Lock()
        self._channel = grpc.insecure_channel(
            self.target,
            options=[
                ("grpc.max_send_message_length", 64 * 1024 * 1024),
                ("grpc.max_receive_message_length", 64 * 1024 * 1024),
                ("grpc.keepalive_time_ms", 30000),
            ],
        )
        self._stub = gobgp_pb2_grpc.GoBgpServiceStub(self._channel)

    # ── global ───────────────────────────────────────────────────────────────

    def get_bgp(self, timeout: float = 5.0) -> dict | None:
        """Config global ativa, ou None se o BGP ainda nao foi iniciado."""
        try:
            resp = self._stub.GetBgp(gobgp_pb2.GetBgpRequest(), timeout=timeout)
        except grpc.RpcError as exc:
            raise GoBGPError(f"gobgpd inacessivel: {exc.details()}") from None
        # O campo se chama 'global' (palavra reservada em Python): so via getattr.
        g = getattr(resp, "global")
        if not g.asn:
            return None
        return {
            "asn": g.asn,
            "router_id": g.router_id,
            "listen_port": g.listen_port,
        }

    def start_bgp(self, asn: int, router_id: str, listen_port: int) -> None:
        request = gobgp_pb2.StartBgpRequest(
            **{
                "global": gobgp_pb2.Global(
                    asn=asn,
                    router_id=router_id,
                    listen_port=listen_port,
                    listen_addresses=["0.0.0.0", "::"],
                )
            }
        )
        self._stub.StartBgp(request, timeout=10)

    def ensure_started(self) -> dict:
        """Inicia o BGP global se ainda nao estiver rodando. Idempotente."""
        s = get_settings()
        current = self.get_bgp()
        if not current:
            log.info("iniciando BGP global asn=%s router-id=%s", s.local_asn, s.router_id)
            self.start_bgp(s.local_asn, s.router_id, s.bgp_listen_port)
            current = self.get_bgp() or {}
        self.apply_reject_all_import()
        return current

    def apply_reject_all_import(self) -> None:
        """Politica GLOBAL de import: descarta tudo que QUALQUER peer enviar.

        Politica por peer so vale para route-server client; num peer normal o
        GoBGP avalia a atribuicao global. Mas 'default_action = REJECT' no
        global tambem barra as rotas que NOS injetamos pela API (elas passam
        pelo mesmo pipeline de import). Por isso a regra e explicita:

            neighbor-set 0.0.0.0/0 + ::/0  ->  REJECT
            default                        ->  ACCEPT

        Rota vinda de peer casa o neighbor-set e morre; rota injetada
        localmente nao tem vizinho de origem, nao casa, e entra pelo default.
        """
        neighbor_set = gobgp_pb2.DefinedSet(
            defined_type=gobgp_pb2.DEFINED_TYPE_NEIGHBOR,
            name=PEER_NEIGHBOR_SET,
            list=["0.0.0.0/0", "::/0"],
        )
        policy = gobgp_pb2.Policy(
            name=REJECT_PEERS_POLICY,
            statements=[
                gobgp_pb2.Statement(
                    name=f"{REJECT_PEERS_POLICY}-stmt",
                    conditions=gobgp_pb2.Conditions(
                        neighbor_set=gobgp_pb2.MatchSet(
                            type=gobgp_pb2.MatchSet.TYPE_ANY, name=PEER_NEIGHBOR_SET
                        )
                    ),
                    actions=gobgp_pb2.Actions(
                        route_action=gobgp_pb2.ROUTE_ACTION_REJECT
                    ),
                )
            ],
        )
        try:
            self._stub.AddDefinedSet(
                gobgp_pb2.AddDefinedSetRequest(defined_set=neighbor_set, replace=True),
                timeout=10,
            )
            self._stub.AddPolicy(
                gobgp_pb2.AddPolicyRequest(policy=policy), timeout=10
            )
            self._stub.SetPolicyAssignment(
                gobgp_pb2.SetPolicyAssignmentRequest(
                    assignment=gobgp_pb2.PolicyAssignment(
                        name="global",
                        direction=gobgp_pb2.POLICY_DIRECTION_IMPORT,
                        policies=[policy],
                        default_action=gobgp_pb2.ROUTE_ACTION_ACCEPT,
                    )
                ),
                timeout=10,
            )
        except grpc.RpcError as exc:
            details = (exc.details() or "").lower()
            # AddPolicy/AddDefinedSet sao idempotentes na pratica: ja existir e ok.
            if "already exists" in details or "duplicate" in details:
                return
            raise GoBGPError(
                f"nao consegui aplicar import reject-all: {exc.details()}"
            ) from None

    def import_policy_state(self) -> dict:
        """Le a atribuicao global de import (usado no /stats e na UI)."""
        try:
            for resp in self._stub.ListPolicyAssignment(
                gobgp_pb2.ListPolicyAssignmentRequest(
                    name="global", direction=gobgp_pb2.POLICY_DIRECTION_IMPORT
                ),
                timeout=10,
            ):
                action = resp.assignment.default_action
                policies = [p.name for p in resp.assignment.policies]
                return {
                    "default_action": "reject" if action == gobgp_pb2.ROUTE_ACTION_REJECT
                    else "accept" if action == gobgp_pb2.ROUTE_ACTION_ACCEPT else "unset",
                    "policies": policies,
                    # O que garante o bloqueio e a politica, nao o default.
                    "peers_rejected": REJECT_PEERS_POLICY in policies,
                }
        except grpc.RpcError as exc:
            raise GoBGPError(f"ListPolicyAssignment falhou: {exc.details()}") from None
        return {"default_action": "unset", "policies": [], "peers_rejected": False}

    # ── peers ────────────────────────────────────────────────────────────────

    def list_peers(self, timeout: float = 10.0) -> list[dict]:
        out = []
        try:
            for resp in self._stub.ListPeer(
                gobgp_pb2.ListPeerRequest(enable_advertised=True), timeout=timeout
            ):
                out.append(encode.decode_peer(resp.peer))
        except grpc.RpcError as exc:
            raise GoBGPError(f"ListPeer falhou: {exc.details()}") from None
        return out

    def add_peer(self, row: dict) -> None:
        peer = encode.build_peer(row, get_settings().local_asn)
        try:
            self._stub.AddPeer(gobgp_pb2.AddPeerRequest(peer=peer), timeout=10)
        except grpc.RpcError as exc:
            raise GoBGPError(f"AddPeer falhou: {exc.details()}") from None

    def update_peer(self, row: dict) -> None:
        peer = encode.build_peer(row, get_settings().local_asn)
        try:
            self._stub.UpdatePeer(
                gobgp_pb2.UpdatePeerRequest(peer=peer, do_soft_reset_in=True), timeout=10
            )
        except grpc.RpcError as exc:
            # UpdatePeer falha se o peer ainda nao existe; cai para AddPeer.
            if "not found" in (exc.details() or "").lower():
                self.add_peer(row)
                return
            raise GoBGPError(f"UpdatePeer falhou: {exc.details()}") from None

    def delete_peer(self, neighbor: str) -> None:
        try:
            self._stub.DeletePeer(
                gobgp_pb2.DeletePeerRequest(address=neighbor), timeout=10
            )
        except grpc.RpcError as exc:
            if "not found" in (exc.details() or "").lower():
                return
            raise GoBGPError(f"DeletePeer falhou: {exc.details()}") from None

    def soft_reset(self, neighbor: str, direction: str = "out") -> None:
        dir_map = {
            "in": gobgp_pb2.ResetPeerRequest.DIRECTION_IN,
            "out": gobgp_pb2.ResetPeerRequest.DIRECTION_OUT,
            "both": gobgp_pb2.ResetPeerRequest.DIRECTION_BOTH,
        }
        try:
            self._stub.ResetPeer(
                gobgp_pb2.ResetPeerRequest(
                    address=neighbor, soft=True,
                    direction=dir_map.get(direction, gobgp_pb2.ResetPeerRequest.DIRECTION_OUT),
                ),
                timeout=15,
            )
        except grpc.RpcError as exc:
            raise GoBGPError(f"ResetPeer falhou: {exc.details()}") from None

    def hard_reset(self, neighbor: str) -> None:
        try:
            self._stub.ResetPeer(
                gobgp_pb2.ResetPeerRequest(address=neighbor, soft=False), timeout=15
            )
        except grpc.RpcError as exc:
            raise GoBGPError(f"ResetPeer falhou: {exc.details()}") from None

    def enable_peer(self, neighbor: str) -> None:
        try:
            self._stub.EnablePeer(
                gobgp_pb2.EnablePeerRequest(address=neighbor), timeout=10
            )
        except grpc.RpcError as exc:
            raise GoBGPError(f"EnablePeer falhou: {exc.details()}") from None

    def disable_peer(self, neighbor: str, communication: str = "admin shutdown") -> None:
        try:
            self._stub.DisablePeer(
                gobgp_pb2.DisablePeerRequest(address=neighbor, communication=communication),
                timeout=10,
            )
        except grpc.RpcError as exc:
            raise GoBGPError(f"DisablePeer falhou: {exc.details()}") from None

    # ── paths ────────────────────────────────────────────────────────────────

    def add_path(self, prefix: str, prefix_len: int, family: str,
                 next_hop: str, communities: str | None) -> None:
        path = encode.build_path(prefix, prefix_len, family, next_hop, communities)
        try:
            self._stub.AddPath(
                gobgp_pb2.AddPathRequest(
                    table_type=gobgp_pb2.TABLE_TYPE_GLOBAL, path=path
                ),
                timeout=15,
            )
        except grpc.RpcError as exc:
            raise GoBGPError(f"AddPath falhou para {prefix}: {exc.details()}") from None

    def add_paths_bulk(self, rows: Iterable[dict], progress=None) -> int:
        """Injeta em lote via AddPathStream. Retorna quantos foram enviados."""
        settings = get_settings()
        sent = 0
        batch: list = []

        def flush_iter(paths: list) -> Iterator[gobgp_pb2.AddPathStreamRequest]:
            yield gobgp_pb2.AddPathStreamRequest(
                table_type=gobgp_pb2.TABLE_TYPE_GLOBAL, paths=paths
            )

        for row in rows:
            batch.append(
                encode.build_path(
                    row["prefix"], row["prefix_len"], row["family"],
                    row.get("next_hop") or settings.default_next_hop,
                    row.get("communities") or settings.default_communities,
                )
            )
            if len(batch) >= STREAM_CHUNK:
                self._stream_chunk(flush_iter(batch))
                sent += len(batch)
                batch = []
                if progress:
                    progress(sent)
        if batch:
            self._stream_chunk(flush_iter(batch))
            sent += len(batch)
            if progress:
                progress(sent)
        return sent

    def _stream_chunk(self, request_iter) -> None:
        try:
            self._stub.AddPathStream(request_iter, timeout=120)
        except grpc.RpcError as exc:
            raise GoBGPError(f"AddPathStream falhou: {exc.details()}") from None

    def delete_path(self, prefix: str, prefix_len: int, family: str,
                    next_hop: str, communities: str | None) -> None:
        path = encode.build_path(prefix, prefix_len, family, next_hop, communities)
        try:
            self._stub.DeletePath(
                gobgp_pb2.DeletePathRequest(
                    table_type=gobgp_pb2.TABLE_TYPE_GLOBAL,
                    family=encode.family_for(family),
                    path=path,
                ),
                timeout=15,
            )
        except grpc.RpcError as exc:
            raise GoBGPError(f"DeletePath falhou para {prefix}: {exc.details()}") from None

    def list_rib_prefixes(self, family: str = "ipv4", timeout: float = 120.0) -> set[str]:
        """Conjunto de prefixos presentes no RIB global (para o diff do reconcile)."""
        found: set[str] = set()
        try:
            for resp in self._stub.ListPath(
                gobgp_pb2.ListPathRequest(
                    table_type=gobgp_pb2.TABLE_TYPE_GLOBAL,
                    family=encode.family_for(family),
                ),
                timeout=timeout,
            ):
                if resp.destination.prefix:
                    found.add(resp.destination.prefix)
        except grpc.RpcError as exc:
            raise GoBGPError(f"ListPath falhou: {exc.details()}") from None
        return found

    def list_rib(self, family: str = "ipv4", limit: int = 500,
                 timeout: float = 60.0) -> list[dict]:
        """Amostra do RIB com atributos decodificados (uso de diagnostico)."""
        out: list[dict] = []
        try:
            for resp in self._stub.ListPath(
                gobgp_pb2.ListPathRequest(
                    table_type=gobgp_pb2.TABLE_TYPE_GLOBAL,
                    family=encode.family_for(family),
                ),
                timeout=timeout,
            ):
                for path in resp.destination.paths:
                    out.append(encode.decode_path(path))
                    if len(out) >= limit:
                        return out
        except grpc.RpcError as exc:
            raise GoBGPError(f"ListPath falhou: {exc.details()}") from None
        return out

    def table_stats(self, family: str = "ipv4") -> dict:
        try:
            resp = self._stub.GetTable(
                gobgp_pb2.GetTableRequest(
                    table_type=gobgp_pb2.TABLE_TYPE_GLOBAL,
                    family=encode.family_for(family),
                ),
                timeout=15,
            )
        except grpc.RpcError as exc:
            raise GoBGPError(f"GetTable falhou: {exc.details()}") from None
        return {
            "destinations": resp.num_destination,
            "paths": resp.num_path,
            "accepted": resp.num_accepted,
        }

    def close(self) -> None:
        self._channel.close()


_client: GoBGPClient | None = None
_client_lock = threading.Lock()


def get_client() -> GoBGPClient:
    global _client
    if _client is None:
        with _client_lock:
            if _client is None:
                _client = GoBGPClient()
    return _client
