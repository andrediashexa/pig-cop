# PIG-COP

> **I've Got ~~Balls~~ Routers Of Steel**

Controller de GoBGP que fecha sessão BGP com clientes e anuncia milhares de
prefixos de **controladores C2 de botnets** — os endereços que comandam CPEs
zumbis para originar ataques DDoS. O cliente aponta esses prefixos para
discard/Null0 e o ataque morre antes de sair.

Interface web no padrão Hexanium (`guia-de-interface-interno`). Tudo em Docker Compose.

---

## Como acessar

```
http://198.51.100.10:5173
```

Usuário: o valor de `ADMIN_USER` no `.env` (padrão `hexanetworks`).
Senha: a que você definiu ao gerar o `ADMIN_PASSWORD_HASH` — **ela não fica
neste repositório**, só o hash bcrypt no `.env`, que é gitignored.

A porta é a `WEB_PORT` do `.env` (padrão 5173). O backend fica em
`127.0.0.1:4000` e o gRPC do gobgpd em `127.0.0.1:50051` — **nenhum dos dois é
alcançável de fora**; só o frontend escuta em todas as interfaces.

---

## Subir

```bash
cd /opt/gobgp
cp .env.example .env            # se ainda não existir
./scripts/gen-secrets.sh 'sua-senha'   # gera hash bcrypt + JWT_SECRET
# cole no .env — ATENÇÃO: escape cada $ do hash como $$ (o compose interpola)
chmod 600 .env
docker compose up -d --build
```

Serviços:

| Container | O quê | Rede |
|---|---|---|
| `pigcop-gobgpd` | GoBGP v4.7.0 (compilado, versão pinada). Porta 179. | host |
| `pigcop-backend` | FastAPI + SQLite + gRPC. `127.0.0.1:4000`. | host |
| `pigcop-frontend` | Next.js 15. `0.0.0.0:5173`. | host |

Todos em `network_mode: host` — BGP precisa enxergar o **IP real** do peer; com
bridge o `docker-proxy` mascara a origem e a sessão não casa com o
`neighbor-address` configurado.

---

## Como funciona

```
  Cliente BGP ──179── gobgpd ──gRPC 50051── backend ── SQLite (fonte da verdade)
                                              │
                                          frontend :5173 (login)
```

**O RIB do gobgpd é volátil.** Reiniciou o container, os anúncios somem. Por
isso o SQLite manda e o backend **reconcilia**: no boot, a cada
`RECONCILE_INTERVAL` segundos, e sob demanda pelo botão “Sincronizar RIB”.

**Injeção em massa** usa `AddPathStream` em lotes de 500. Os 7.719 prefixos do
`rotas.rsc` entram em **~0,3 s**. (Um `gobgp global rib add` por prefixo levaria
2–3 minutos.)

---

## Política de import: reject-all

O controller **só anuncia**. Nada que o peer mandar entra no nosso RIB.

Isso não é configurável e é reaplicado a cada reconcile. A implementação não é
`default_action = REJECT` no global — isso barraria também as rotas que nós
mesmos injetamos pela API, porque elas passam pelo mesmo pipeline de import. A
regra é explícita:

```
neighbor-set pigcop-any-peer  (0.0.0.0/0, ::/0)  ->  REJECT
default                                          ->  ACCEPT
```

Rota vinda de peer casa o neighbor-set e morre. Rota injetada localmente não tem
vizinho de origem, não casa, e entra pelo default.

Conferir:

```bash
docker exec pigcop-gobgpd gobgp --host 127.0.0.1 global policy import
docker exec pigcop-gobgpd gobgp --host 127.0.0.1 policy neighbor
```

O dashboard mostra um badge vermelho se a política não estiver aplicada.

### Validado com peer real

Um gobgpd de teste (AS 65002) fechou sessão, recebeu os 7.719 prefixos e tentou
anunciar `9.9.9.0/24` e `0.0.0.0/0` de volta. As duas apareceram no `adj-in` e
**nenhuma** entrou no RIB global (`Network not in table`); o total ficou em 7.719.

---

## Guard-rails de prefixo

O risco real de um controller RTBH não é técnico — é blackholar rede legítima.
Toda rota passa por `backend/app/validators.py` antes do banco e do RIB:

- recusa `0.0.0.0/0`, RFC1918, CGNAT, loopback, multicast, link-local, classe E;
- recusa prefixo mais curto que `MIN_PREFIX_LEN_V4` (padrão `/24`);
- recusa qualquer coisa que colida com `PROTECTED_PREFIXES` — **coloque aqui os
  blocos da Hexa e dos clientes**;
- teto global `MAX_ROUTES`;
- importação sempre passa por **dry-run** antes de gravar.

---

## Operação

```bash
# estado geral
docker compose ps
docker compose logs -f backend

# o que está realmente no RIB
docker exec pigcop-gobgpd gobgp --host 127.0.0.1 global rib -a ipv4 | head
docker exec pigcop-gobgpd gobgp --host 127.0.0.1 global rib -a ipv4 | tail -n +2 | wc -l

# sessões
docker exec pigcop-gobgpd gobgp --host 127.0.0.1 neighbor
docker exec pigcop-gobgpd gobgp --host 127.0.0.1 neighbor <IP> adj-out

# forçar ressincronização
curl -s -b cookie.jar -X POST 127.0.0.1:4000/api/reconcile

# backup do banco (é o que importa; o RIB se reconstrói sozinho)
docker exec pigcop-backend python -c "import sqlite3;sqlite3.connect('/data/controller.db').backup(sqlite3.connect('/data/backup.db'))"
cp data/backup.db /algum/lugar/seguro/

# testes do parser e dos guard-rails
docker compose run --rm --no-deps -T backend sh -c "pip install -q pytest && python -m pytest app/tests -q"
```

---

## Firewall do host

O gRPC e o backend já ficam em `127.0.0.1`. Falta proteger o BGP e a web:

```bash
# BGP só dos peers conhecidos
iptables -A INPUT -p tcp --dport 179 -s <IP_DO_CLIENTE> -j ACCEPT
iptables -A INPUT -p tcp --dport 179 -j DROP

# interface web só da rede de gerência
iptables -A INPUT -p tcp --dport 5173 -s 10.95.200.0/24 -j ACCEPT
iptables -A INPUT -p tcp --dport 5173 -j DROP
```

Para expor com TLS, coloque atrás do Traefik/nginx e mude `COOKIE_SECURE=true`
no `.env` (o cookie de sessão só vai por HTTPS a partir daí).

---

## Configuração (`.env`)

| Variável | Padrão | O quê |
|---|---|---|
| `LOCAL_ASN` | 65000 | ASN do controller — **ajuste para o ASN real da Hexa** |
| `ROUTER_ID` | 198.51.100.10 | router-id BGP |
| `DEFAULT_NEXT_HOP` | 192.0.2.1 | next-hop anunciado (cliente aponta p/ discard) |
| `DEFAULT_COMMUNITIES` | 65535:666 | BLACKHOLE (RFC 7999) |
| `PROTECTED_PREFIXES` | *(vazio)* | CSV de blocos que nunca podem ser anunciados |
| `MAX_ROUTES` | 50000 | teto de rotas |
| `MIN_PREFIX_LEN_V4` | 24 | recusa prefixo mais curto que isso |
| `RECONCILE_INTERVAL` | 60 | segundos entre reconciliações |
| `WEB_PORT` | 5173 | porta da interface |
| `COOKIE_SECURE` | false | `true` quando houver TLS |

`APP_VERSION` é congelada no `next build`: para trocar, rebuilde o frontend.

---

## Telas

- **Visão geral** — KPIs, política de anúncio, badge do reject-all, top categorias.
- **Sessões BGP** — peers com estado/uptime/contadores, soft reset, shutdown,
  CRUD, drawer de detalhe. Auto-refresh de 10 s.
- **Rotas anunciadas** — busca, filtro por categoria/estado, paginação
  server-side de 100, seleção múltipla, add individual e em lote, export
  CSV/TXT/RSC.
- **Importar** — dry-run obrigatório do `.rsc` (mostra novos, já existentes,
  inválidos linha a linha, categorias) e só então a importação com barra de progresso.
- **Auditoria** — quem fez o quê, quando, de qual IP.

---

## Formato do `rotas.rsc`

Export do RouterOS (`/ip firewall address-list`). O parser
(`backend/app/importer.py`) lida com as três armadilhas do arquivo real:

- continuação de linha com `\` (851 ocorrências) — juntadas antes do parse;
- `comment` com e sem aspas;
- ordem variável dos campos.

O arquivo atual: 7.719 IPs únicos (todos host → `/32`), lista `BLOCK-BGP`,
40 categorias (Kimwolf 1692, Metasploit C2 527, Sliver C2 445, …), zero inválidos.
