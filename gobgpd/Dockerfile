FROM golang:1.24-alpine AS build
ARG GOBGP_VERSION=v4.7.0

# ── Capabilities do OPEN ─────────────────────────────────────────────────────
# O GoBGP nao expoe configuracao para estas duas; sao decididas no codigo, em
# pkg/server/fsm.go, na montagem do OPEN. Equipamento antigo (A10 ACOS 4.x, por
# exemplo) derruba a sessao ao ve-las, com OPEN Message Error / Unsupported
# Capability - comportamento da RFC 3392, revogada: a RFC 5492 §4 manda IGNORAR
# capability desconhecida. Como nao da para consertar o outro lado, o jeito e
# nao anunciar.
#
#   75 (Software Version) - desligada por padrao. O GoBGP a envia sempre que a
#      sessao e iBGP, ignorando a flag SendSoftwareVersion, entao nao ha como
#      desabilitar por configuracao. Nao serve para nada operacional: so informa
#      "GoBGP/x.y.z" ao vizinho.
#   6  (Extended Message, RFC 8654) - mantida por padrao. So existe da v4.7.0
#      em diante; se precisar dela fora, alternativa mais limpa e pinar
#      GOBGP_VERSION=v4.5.0, que nao a possui.
ARG DISABLE_CAP_SOFTWARE_VERSION=1
ARG DISABLE_CAP_EXTENDED_MESSAGE=0

RUN apk add --no-cache git
WORKDIR /src
RUN git clone --depth 1 --branch ${GOBGP_VERSION} https://github.com/osrg/gobgp.git .

# O patch FALHA O BUILD se a linha alvo nao existir. Isso e proposital: num
# upgrade de GoBGP que mova ou renomeie o trecho, a build quebra em vez de
# silenciosamente voltar a anunciar a capability.
RUN set -eux; \
    FSM=pkg/server/fsm.go; \
    if [ "$DISABLE_CAP_SOFTWARE_VERSION" = "1" ]; then \
      grep -q 'caps = append(caps, bgp.NewCapSoftwareVersion(softwareVersion))' "$FSM" \
        || { echo "PATCH FALHOU: alvo da capability 75 nao encontrado em $FSM (GoBGP ${GOBGP_VERSION})"; exit 1; }; \
      sed -i 's|caps = append(caps, bgp.NewCapSoftwareVersion(softwareVersion))|_ = softwareVersion // PIG-COP: capability 75 desabilitada no build|' "$FSM"; \
      ! grep -q 'NewCapSoftwareVersion(softwareVersion))' "$FSM"; \
      echo "capability 75 (software-version) desabilitada"; \
    fi; \
    if [ "$DISABLE_CAP_EXTENDED_MESSAGE" = "1" ]; then \
      grep -q 'caps = append(caps, bgp.NewCapExtendedMessage())' "$FSM" \
        || { echo "PATCH FALHOU: alvo da capability 6 nao encontrado em $FSM (GoBGP ${GOBGP_VERSION})"; exit 1; }; \
      sed -i 's|caps = append(caps, bgp.NewCapExtendedMessage())|// PIG-COP: capability 6 desabilitada no build|' "$FSM"; \
      echo "capability 6 (extended-message) desabilitada"; \
    fi

RUN CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o /out/gobgpd ./cmd/gobgpd \
 && CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o /out/gobgp  ./cmd/gobgp

FROM alpine:3.20
RUN apk add --no-cache ca-certificates tzdata
COPY --from=build /out/gobgpd /usr/local/bin/gobgpd
COPY --from=build /out/gobgp  /usr/local/bin/gobgp
ENV GRPC_LISTEN=:50051 \
    LOG_LEVEL=info
# Sem arquivo de config: o backend configura global + peers via gRPC (StartBgp/AddPeer).
# Assim a fonte da verdade e o SQLite do controller, e nao um TOML paralelo.
EXPOSE 179 50051
ENTRYPOINT ["/bin/sh", "-c", "exec gobgpd --api-hosts=${GRPC_LISTEN} --log-level=${LOG_LEVEL} --log-plain"]
