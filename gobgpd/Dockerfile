FROM golang:1.24-alpine AS build
ARG GOBGP_VERSION=v4.7.0
RUN apk add --no-cache git
WORKDIR /src
RUN git clone --depth 1 --branch ${GOBGP_VERSION} https://github.com/osrg/gobgp.git . \
 && CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o /out/gobgpd ./cmd/gobgpd \
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
