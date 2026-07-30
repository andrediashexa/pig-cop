# PIG-COP — Plano (implementado)

> **Status: entregue.** Este documento era o plano; o que foi construido esta
> descrito no `README.md`. As divergencias entre o plano e a implementacao final
> estao anotadas em §17.

> Controlador de GoBGP com UI web no design system interno da Hexa.
> Fecha sessões BGP com clientes e anuncia alguns milhares de prefixos de bloqueio.
> **Tudo em Docker via `docker compose`.**

---

## 1. Análise do insumo (`rotas.rsc`)

Arquivo é um export do RouterOS (`/ip firewall address-list`), um roteador de borda.

| Métrica | Valor |
|---|---|
| Linhas `add` | **7.719** |
| IPs únicos (todos IPv4, host único → `/32`) | **7.719** (zero duplicatas) |
| Prefixos com máscara no arquivo | 0 (nenhum CIDR, tudo host) |
| Lista | 100% `BLOCK-BGP` |
| Com `comment=block-attack-*` | 4.106 |
| Sem comentário | 3.613 |
| Categorias distintas (via comentário) | **40** |
| IPv6 | nenhum |

Top categorias: `Kimwolf` (1692), `Metasploit Framework C2` (527), `Sliver C2` (445),
`Viper C2` (251), `GoPhish` (181), `Cobalt Strike C2` (160), `PANDA C2` (151),
`BurpSuite` (109), `Hak5 Cloud C2` (97), `Mythic C2` (86)…

**Pegadinhas do parser** (851 linhas afetadas):
- Continuação de linha com `\` + quebra + indentação → precisa juntar **antes** de parsear.
- `comment` aparece com e sem aspas (`comment=block-attack-GoPhish` e `comment="block-attack-Sliver C2"`).
- Ordem dos campos varia (`address= comment= list=` vs `address= list= comment=`).

→ O parser será uma função pura testável (`parse_rsc`) com teste unitário sobre um
fixture com os 3 formatos + continuação.

---

## 2. Arquitetura

```
                    ┌─────────────────── host: 198.51.100.10 ───────────────────┐
   Cliente BGP ──── │  :179  gobgpd  (network_mode: host)                       │
   (peers/ASNs)     │          └─ gRPC :50051  ← reconcile / add / del          │
                    │                                                            │
                    │   bridge "gobgpnet":                                       │
                    │     backend  (FastAPI :4000)  ── SQLite (volume)           │
                    │        │  gRPC → host.docker.internal:50051                │
                    │     frontend (Next.js :5173) ── rewrite /api → backend     │
                    └────────────────────────────────────────────────────────────┘
                                     ▲ navegador (login hexanetworks)
```

**Decisões-chave**

1. **`gobgpd` em `network_mode: host`.** BGP precisa ver o **IP real** do peer; com
   bridge/`ports:` o userland-proxy do Docker mascara a origem e a sessão não casa
   com o `neighbor-address` configurado. Host network é o padrão para daemons BGP.
2. **Backend e frontend em bridge** (isolados), backend fala com o gobgpd via
   `extra_hosts: host.docker.internal:host-gateway` → `:50051`.
   gRPC do gobgpd fica em `0.0.0.0:50051` **e é fechado no firewall do host**
   (regra `iptables`/`nft` documentada no README; só docker0 pode entrar).
3. **SQLite é a fonte da verdade**, não o RIB. O RIB do gobgpd é **volátil** —
   ao reiniciar o container, tudo some. O backend faz **reconcile** (SQLite → RIB)
   no boot e sempre que detectar que o gobgpd reiniciou (compara `uptime`/contagem).
4. **gRPC nativo, não CLI.** Injetar 7.719 prefixos com `gobgp global rib add` (um
   processo por prefixo) leva ~2–3 min. Via `AddPath` em stream/batch assíncrono
   leva **segundos**. Stubs Python gerados no build a partir dos `.proto` do GoBGP.

---

## 3. Stack

| Camada | Escolha | Porquê |
|---|---|---|
| BGP | **GoBGP v3.x** (build multi-stage de `golang:1.23-alpine`, versão pinada) | Sem depender de imagem de terceiro; gera `gobgpd` + `gobgp` (CLI fica no backend p/ troubleshooting). |
| Backend | **Python 3.11 + FastAPI + uvicorn** | Já é o runtime do host; grpcio + grpcio-tools maduros; parser do `.rsc` trivial em Python. |
| gRPC | stubs gerados no `docker build` (`grpcio-tools` sobre `api/*.proto` do GoBGP) | Sem stubs versionados no repo desatualizando. |
| DB | **SQLite** (volume `./data`) + WAL | 7.7k linhas → sobra. Zero operação. Migração para Postgres é trivial se crescer. |
| Auth | JWT HS256 em **cookie httpOnly + SameSite=Strict**, hash **bcrypt** da senha | Sem token em localStorage (XSS). |
| Frontend | **Next.js 15 + React 18 + Tailwind + shadcn/ui** | Mesma cara dos outros sistemas internos. |
| Tabela grande | **@tanstack/react-virtual** | 7.7k+ linhas sem travar o browser. |
| Orquestração | **docker compose** (3 serviços) | Requisito. |

---

## 4. Estrutura de pastas

```
/opt/gobgp/
├── docker-compose.yml
├── .env                          # segredos (JWT_SECRET, ADMIN_PASSWORD_HASH, ASN…) — gitignored
├── .env.example
├── rotas.rsc                     # insumo (import inicial)
├── PLANO.md
├── README.md                     # runbook: subir, firewall, backup, troubleshooting
│
├── gobgpd/
│   ├── Dockerfile                # build GoBGP pinado; exporta gobgpd + gobgp
│   ├── gobgpd.conf.tmpl          # template TOML renderizado do .env no entrypoint
│   └── entrypoint.sh             # envsubst do template + exec gobgpd
│
├── backend/
│   ├── Dockerfile                # gera stubs gRPC no build
│   ├── requirements.txt
│   └── app/
│       ├── main.py               # FastAPI, CORS off, lifespan (reconcile no boot)
│       ├── config.py             # settings via env (pydantic-settings)
│       ├── auth.py               # login, JWT, dependência require_user, rate-limit
│       ├── db.py                 # SQLite (WAL) + migrations embutidas
│       ├── models.py             # dataclasses/pydantic: Route, Peer, AuditEntry
│       ├── gobgp/
│       │   ├── client.py         # wrapper gRPC: list_peers, list_paths, add/del paths
│       │   ├── encode.py         # nlri/attrs → protobuf Any (nexthop, origin, communities)
│       │   └── reconcile.py      # diff SQLite × RIB, aplica em lote, loop periódico
│       ├── routers/
│       │   ├── auth.py           # POST /api/auth/login|logout, GET /api/auth/me
│       │   ├── peers.py          # CRUD + softreset/enable/disable
│       │   ├── routes.py         # list/add/bulk/delete/import/export
│       │   └── system.py         # /api/health, /api/stats, /api/audit
│       ├── importer.py           # parse_rsc() + normalização + validação
│       └── tests/                # pytest: parser, validador, encode, reconcile
│
└── frontend/                     # design system interno
    ├── Dockerfile · next.config.js · tailwind.config.js · postcss.config.js
    ├── app/{layout.jsx,page.jsx}
    └── src/
        ├── App.jsx · navItems.js
        ├── layout/AppShell.jsx
        ├── components/{ui/*, Toast.jsx, TweaksPanel.jsx}
        ├── features/
        │   ├── login/LoginPage.jsx
        │   ├── dashboard/DashboardPage.jsx
        │   ├── peers/PeersPage.jsx
        │   ├── routes/RoutesPage.jsx
        │   ├── import/ImportPage.jsx
        │   └── audit/AuditPage.jsx
        ├── lib/{utils.js, api.js, format/*}
        └── styles/globals.css     # tokens; --primary verde Hexa
```

---

## 5. Modelo de dados (SQLite)

```sql
CREATE TABLE routes (
  id           INTEGER PRIMARY KEY,
  prefix       TEXT NOT NULL,            -- '1.2.3.4/32' (normalizado)
  prefix_len   INTEGER NOT NULL,
  family       TEXT NOT NULL DEFAULT 'ipv4',
  category     TEXT,                     -- 'Sliver C2' (do comment)
  source       TEXT NOT NULL,            -- 'rsc-import' | 'manual' | 'api'
  note         TEXT,
  enabled      INTEGER NOT NULL DEFAULT 1,
  next_hop     TEXT,                     -- NULL → usa default global
  communities  TEXT,                     -- CSV; NULL → default global
  created_at   TEXT NOT NULL,
  updated_at   TEXT NOT NULL,
  UNIQUE(prefix, family)
);
CREATE INDEX idx_routes_cat     ON routes(category);
CREATE INDEX idx_routes_enabled ON routes(enabled);

CREATE TABLE peers (
  id            INTEGER PRIMARY KEY,
  neighbor      TEXT NOT NULL UNIQUE,     -- IP do cliente
  peer_asn      INTEGER NOT NULL,
  description   TEXT,
  md5_password  TEXT,                     -- criptografado (Fernet/JWT_SECRET-derived)
  ebgp_multihop INTEGER DEFAULT 1,
  passive       INTEGER DEFAULT 1,        -- só escuta; cliente inicia
  max_prefixes  INTEGER DEFAULT 0,
  enabled       INTEGER NOT NULL DEFAULT 1,
  created_at TEXT, updated_at TEXT
);

CREATE TABLE audit (
  id INTEGER PRIMARY KEY, ts TEXT NOT NULL, actor TEXT NOT NULL,
  action TEXT NOT NULL,        -- route.add | route.del | route.bulk | peer.add | login…
  target TEXT, detail TEXT, ip TEXT
);

CREATE TABLE settings (key TEXT PRIMARY KEY, value TEXT NOT NULL);
-- default_next_hop, default_communities, local_asn, router_id, max_routes
```

---

## 6. Configuração BGP

`gobgpd.conf.tmpl` (TOML, renderizado com valores do `.env` + peers do banco):

```toml
[global.config]
  as = ${LOCAL_ASN}
  router-id = "${ROUTER_ID}"
  port = 179
[global.apply-policy.config]
  import-policy-list = ["reject-all-import"]   # cliente NUNCA injeta rota em nós
  default-import-policy = "reject-route"
  default-export-policy = "accept-route"
```

**Peers dinâmicos:** em vez de reescrever o TOML a cada cliente, os vizinhos são
adicionados **via gRPC** (`AddPeer`/`DeletePeer`) a partir da tabela `peers` — o
reconcile também cuida deles. O TOML fica só com o global + políticas.

**Atributos das rotas anunciadas** (defaults em `settings`, sobrescrevíveis por rota):
- `next-hop`: `192.0.2.1` (blackhole; o cliente aponta para Null0/discard).
- `communities`: `65535:666` (**BLACKHOLE**, RFC 7999) + community própria por
  categoria (ex.: `<ASN>:100` C2, `<ASN>:200` scanner) — permite o cliente filtrar.
- `origin`: IGP. Sem MED/AS-PATH prepend por padrão.

**Guard-rails de segurança de roteamento** (validados no backend, antes de qualquer add):
- Bloqueia `0.0.0.0/0`, RFC1918, loopback, multicast, `100.64/10`, classe E.
- Bloqueia prefixos de uma **allow-list negativa** configurável (ex.: os próprios
  blocos da Hexa e dos clientes) — evita blackhole acidental de rede legítima.
- Exige `prefix_len == 32` para IPv4 por padrão (configurável até /24).
- Teto global `max_routes` (default 20.000) e `max_prefixes` por peer.

---

## 7. API do backend (`/api`)

Todas as rotas exigem cookie JWT válido, exceto `login` e `health`.

| Método | Rota | Descrição |
|---|---|---|
| POST | `/auth/login` | `{username,password}` → set-cookie httpOnly. Rate-limit 5/min/IP + backoff. |
| POST | `/auth/logout` · GET `/auth/me` | sessão |
| GET | `/health` | liveness + status do gRPC do gobgpd |
| GET | `/stats` | KPIs: peers up/total, rotas ativas, rotas no RIB, por categoria, uptime |
| GET | `/peers` | lista peers **mesclando** config (SQLite) + estado ao vivo (gRPC): state, uptime, ASN, prefixos recebidos/enviados, capabilities, último erro/notification |
| POST/PATCH/DELETE | `/peers[/{id}]` | CRUD; aplica no gobgpd na hora |
| POST | `/peers/{id}/softreset` · `/shutdown` · `/enable` | operação da sessão |
| GET | `/routes` | paginado + `?q=` (prefixo/categoria) + `?category=` + `?enabled=` + ordenação |
| POST | `/routes` | adiciona 1 prefixo (valida → SQLite → AddPath) |
| POST | `/routes/bulk` | textarea/CSV com N prefixos → validação por linha, relatório de aceitos/rejeitados |
| DELETE | `/routes/{id}` · POST `/routes/bulk-delete` | remove (DeletePath + SQLite) |
| POST | `/routes/import` | upload `.rsc`/`.txt` → **dry-run** obrigatório, depois `commit` |
| GET | `/routes/export?format=csv\|rsc\|txt` | exporta o que está anunciado |
| POST | `/routes/{id}/toggle` | pausa/retoma anúncio sem apagar |
| POST | `/system/reconcile` | força ressincronização SQLite → RIB |
| GET | `/audit` | histórico paginado |

**Streaming/lote:** `bulk`, `import` e `reconcile` rodam em background task com
progresso consultável (`GET /jobs/{id}`) — o import de 7.7k não pode segurar o HTTP.

---

## 8. Telas (padrão Hexanium)

`navItems.js`: `dashboard`, `sessoes`, `rotas`, `importar`, `auditoria`.

1. **Login** — card centralizado, `titanium-gradient`, logo Hexa, usuário/senha.
   Erro genérico ("credenciais inválidas"), sem revelar qual campo falhou.
2. **Dashboard** — KPIs (`titanium-gradient titanium-edge`, §13 do padrão):
   Sessões estabelecidas · Prefixos anunciados · Prefixos no RIB (deve bater) ·
   Última sincronização. Abaixo: tabela compacta de peers + gráfico de barras por
   categoria (Top 10) e estado vazio honesto quando não há peer.
3. **Sessões BGP** — tabela: Peer · ASN · Descrição · Estado (Badge `success`
   ESTABLISHED / `warning` ACTIVE-CONNECT / `danger` IDLE) · Uptime · Recebidos ·
   Enviados · Ações (soft reset, shutdown, editar, remover). Drawer de detalhe com
   capabilities, timers, último NOTIFICATION. **Auto-refresh 10 s.**
4. **Rotas anunciadas** — busca com debounce, filtro por categoria/estado, tabela
   **virtualizada** (server-side pagination, 100/página), seleção múltipla →
   remover em lote / desabilitar em lote. Botão "Adicionar rota" (modal: prefixo,
   categoria, next-hop, communities, nota) e "Adicionar em lote" (textarea).
   Coluna "no RIB?" mostra divergência entre banco e gobgpd.
5. **Importar** — upload/colar `.rsc`, **dry-run** mostrando: total parseado,
   novos, já existentes, inválidos (com motivo, linha a linha), categorias
   detectadas → botão "Confirmar importação" com barra de progresso.
6. **Auditoria** — quem fez o quê, quando, de qual IP.

Toast em toda ação; `tabular-nums` em números; zero cor fixa (só tokens).

---

## 9. `docker-compose.yml` (esboço)

```yaml
services:
  gobgpd:
    build: ./gobgpd
    restart: unless-stopped
    network_mode: host          # BGP precisa do IP real do peer
    cap_add: [NET_BIND_SERVICE]
    environment:
      LOCAL_ASN: ${LOCAL_ASN}
      ROUTER_ID: ${ROUTER_ID}
      GRPC_LISTEN: 0.0.0.0:50051
    volumes: [./gobgpd/gobgpd.conf.tmpl:/etc/gobgp/gobgpd.conf.tmpl:ro]
    healthcheck:
      test: ["CMD", "gobgp", "global"]
      interval: 15s

  backend:
    build: ./backend
    restart: unless-stopped
    environment:
      GOBGP_GRPC: host.docker.internal:50051
      DB_PATH: /data/controller.db
      JWT_SECRET: ${JWT_SECRET}
      ADMIN_USER: ${ADMIN_USER}
      ADMIN_PASSWORD_HASH: ${ADMIN_PASSWORD_HASH}
      DEFAULT_NEXT_HOP: ${DEFAULT_NEXT_HOP}
      DEFAULT_COMMUNITIES: ${DEFAULT_COMMUNITIES}
    extra_hosts: ["host.docker.internal:host-gateway"]
    volumes: [./data:/data]
    expose: ["4000"]
    depends_on: [gobgpd]

  frontend:
    build:
      context: ./frontend
      args: { NEXT_PUBLIC_APP_VERSION: ${APP_VERSION:-0.1.0} }
    restart: unless-stopped
    environment:
      NEXT_BACKEND_INTERNAL: http://backend:4000
      NEXT_PUBLIC_API_BASE_URL: /api
    ports: ["5173:5173"]        # ou atrás do Traefik, como no padrão §14
    depends_on: [backend]
```

Acesso: `http://198.51.100.10:5173` → login `hexanetworks`.

---

## 10. Segurança

- Senha **nunca em código**: entra como `ADMIN_PASSWORD_HASH` (bcrypt)
  no `.env`; o hash é gerado no setup e o `.env` fica `chmod 600` + gitignored.
- JWT HS256, `JWT_SECRET` aleatório de 32 bytes gerado no setup, TTL 8 h, cookie
  `httpOnly; SameSite=Strict; Secure` (Secure quando atrás de TLS/Traefik).
- Rate-limit no login (5/min/IP, backoff exponencial) + registro em `audit`.
- CSP e headers de segurança do `next.config.js` (§14 do padrão), `connect-src 'self'`.
- gRPC do gobgpd **não exposto na internet** — regra de firewall no host
  (`-A INPUT -p tcp --dport 50051 ! -s 172.16.0.0/12 -j DROP`), documentada no README.
- MD5/TCP-AO por peer, senha cifrada em repouso no SQLite.
- Política de import `reject-all` — nenhum cliente consegue injetar rota no controller.
- Guard-rails de prefixo da §6 (o risco real aqui é blackholar rede legítima).
- **Backup**: `data/controller.db` no volume; comando `sqlite3 .backup` no README.
- Recomendado colocar atrás do Traefik com TLS quando houver domínio (padrão §14).

---

## 11. Fases de implementação

| # | Entrega | Conteúdo | Verificação |
|---|---|---|---|
| 0 | **Scaffold** | árvore de pastas, `.env.example`, compose, README inicial | `docker compose config` válido |
| 1 | **GoBGP no ar** | Dockerfile do gobgpd, template TOML, entrypoint | `gobgp global` responde; `:179` escutando |
| 2 | **Backend base** | FastAPI, SQLite+migrations, auth JWT, `/health`, `/stats` | login funciona; pytest verde |
| 3 | **Camada gRPC** | stubs no build, `client.py`, `encode.py`, list/add/del path e peer | add manual aparece em `gobgp global rib` |
| 4 | **Importer** | `parse_rsc` + validação + dry-run + job de import | 7.719 prefixos importados e no RIB, medido |
| 5 | **Reconcile** | diff SQLite×RIB, boot + loop periódico + endpoint manual | matar o gobgpd → RIB volta sozinho |
| 6 | **CRUD peers/rotas** | endpoints completos + auditoria | teste de sessão real com um roteador |
| 7 | **Frontend shell** | padrão Hexanium: tokens, AppShell, Toast, login | visual idêntico ao Hexanium |
| 8 | **Telas** | Dashboard, Sessões, Rotas (virtualizada), Importar, Auditoria | fluxo completo pelo browser |
| 9 | **Hardening + docs** | firewall, backup, runbook, teste de carga (10k prefixos) | README executável ponta a ponta |

---

## 12. Riscos e mitigações

| Risco | Mitigação |
|---|---|
| RIB volátil (restart do gobgpd zera anúncios) | reconcile automático no boot + watchdog periódico (§ fase 5) |
| Docker mascarando IP de origem do peer | `network_mode: host` no gobgpd (decidido) |
| API gRPC do GoBGP mudar entre versões | versão **pinada** no Dockerfile; stubs gerados do mesmo tag |
| 7.7k linhas travando a UI | paginação server-side + virtualização; nunca carregar tudo no cliente |
| Blackhole de prefixo legítimo | guard-rails de validação + confirmação em dois passos (dry-run) + auditoria |
| Cliente vazando rota para dentro | `default-import-policy = reject-route` |
| Senha única compartilhada | escopo aceito agora; estrutura de `audit` e `auth.py` já preparada p/ multiusuário depois |

---

## 13. Definições pendentes (preciso de você)

1. **ASN local** e **router-id** do controller.
2. **Next-hop de blackhole** a anunciar (sugestão `192.0.2.1`) e se usa
   `65535:666` (RFC 7999) como community padrão.
3. **Peers iniciais**: IP e ASN dos clientes que vão fechar sessão (pode entrar
   depois pela UI — não bloqueia o desenvolvimento).
4. **Prefixos protegidos** (blocos da Hexa/clientes que nunca podem ser anunciados).
5. Exposição: porta `5173` direta ou atrás do Traefik com domínio/TLS?

Enquanto isso não chega, sigo com os defaults acima (ASN/router-id como placeholder
no `.env`) — nenhuma dessas respostas trava as fases 0–8.

---

## 17. Divergências entre o plano e o que foi construído

Quatro coisas mudaram durante a implementação, todas por motivo técnico
descoberto na prática:

1. **GoBGP v4.7.0, não v3.** A API v4 usa `oneof` tipado para NLRI e atributos
   em vez de `google.protobuf.Any` — a montagem dos paths ficou direta, sem
   empacotamento. Protos vendorizados em `backend/protos/api/`, stubs gerados no
   `docker build`.

2. **Sem arquivo de config TOML no gobgpd.** O daemon sobe vazio e o backend
   configura tudo por gRPC (`StartBgp`, `AddPeer`, políticas). Elimina o TOML
   paralelo: o SQLite é a única fonte da verdade.

3. **Tudo em `network_mode: host`,** não só o gobgpd. Assim o backend alcança o
   gRPC em `127.0.0.1:50051` sem expor essa porta em lugar nenhum, e o cookie de
   sessão não atravessa rede. Só o frontend escuta externamente.

4. **A política de import não é `default_action = REJECT`.** Esse era o desenho
   original e ele *quebra a injeção local*: as rotas que o próprio controller
   adiciona pela API passam pelo mesmo pipeline de import e seriam descartadas
   junto (sintoma: reconcile reportando 7.719 injetadas e RIB vazio). A regra
   correta é explícita — `neighbor-set 0.0.0.0/0 + ::/0 → REJECT`, default
   `ACCEPT`. Também não dá para usar política por peer: o GoBGP só aceita
   `apply_policy` por vizinho em route-server client.

Validado com peer BGP real (gobgpd AS 65002): sessão estabelecida, 7.719
prefixos entregues, e as rotas que o peer tentou anunciar de volta ficaram no
`adj-in` sem entrar no RIB global.
