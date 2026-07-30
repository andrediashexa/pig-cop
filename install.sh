#!/usr/bin/env bash
#
# PIG-COP — instalador
# I've Got ~~Balls~~ Routers Of Steel
#
# Instala dependências (Docker + Compose), gera os segredos com o escape
# correto, monta o .env, builda e sobe a stack. Idempotente: pode rodar de novo
# sem quebrar nada — um .env existente nunca é sobrescrito sem --force-env.
#
# Uso:  sudo ./install.sh [opções]        (./install.sh --help para a lista)
#
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

# ── aparência ────────────────────────────────────────────────────────────────
if [ -t 1 ] && command -v tput >/dev/null 2>&1 && [ "$(tput colors 2>/dev/null || echo 0)" -ge 8 ]; then
  BOLD=$(tput bold); DIM=$(tput dim); RESET=$(tput sgr0)
  RED=$(tput setaf 1); GREEN=$(tput setaf 2); YELLOW=$(tput setaf 3); CYAN=$(tput setaf 6)
else
  BOLD=""; DIM=""; RESET=""; RED=""; GREEN=""; YELLOW=""; CYAN=""
fi

STEP=0
step()  { STEP=$((STEP + 1)); printf '\n%s[%d/%d]%s %s%s%s\n' "$CYAN" "$STEP" "$TOTAL_STEPS" "$RESET" "$BOLD" "$1" "$RESET"; }
ok()    { printf '  %s✓%s %s\n' "$GREEN" "$RESET" "$1"; }
info()  { printf '  %s·%s %s\n' "$DIM" "$RESET" "$1"; }
warn()  { printf '  %s!%s %s\n' "$YELLOW" "$RESET" "$1"; }
die()   { printf '\n%s✗ %s%s\n\n' "$RED" "$1" "$RESET" >&2; exit 1; }

# ── defaults ─────────────────────────────────────────────────────────────────
ADMIN_USER="hexanetworks"
ADMIN_PASSWORD=""
LOCAL_ASN=""
ROUTER_ID=""
NEXT_HOP="192.0.2.1"
COMMUNITIES="65535:666"
PROTECTED=""
WEB_PORT="5173"
DO_IMPORT="ask"
INTERACTIVE=1
SKIP_DOCKER=0
FORCE_ENV=0
GENERATED_PASSWORD=0

usage() {
  cat <<'EOF'
PIG-COP — instalador

  sudo ./install.sh [opções]

Opções:
  --user USUARIO         usuário do login web            (padrão: hexanetworks)
  --password SENHA       senha do login. Omitido: pergunta, ou gera uma
                         aleatória em modo -y
  --asn NUMERO           ASN local do controller         (obrigatório)
  --router-id IP         router-id BGP                   (padrão: IP principal do host)
  --next-hop IP          next-hop de descarte anunciado  (padrão: 192.0.2.1)
  --communities CSV      communities padrão              (padrão: 65535:666)
  --protected CSV        prefixos que NUNCA podem ser anunciados.
                         Coloque seus blocos e os dos clientes.
  --web-port PORTA       porta da interface web          (padrão: 5173)
  --import               importa o rotas.rsc no final
  --no-import            não importa
  -y, --non-interactive  não pergunta nada; usa flags e padrões
  --skip-docker          não tenta instalar o Docker
  --force-env            sobrescreve um .env existente (ROTACIONA OS SEGREDOS)
  -h, --help             esta ajuda

Exemplos:
  sudo ./install.sh
  sudo ./install.sh -y --asn 264999 --password 'Senha!Forte' \
       --protected 203.0.113.0/24,198.51.100.0/22 --import
EOF
}

while [ $# -gt 0 ]; do
  case "$1" in
    --user)            ADMIN_USER="${2:?}"; shift 2 ;;
    --password)        ADMIN_PASSWORD="${2:?}"; shift 2 ;;
    --asn)             LOCAL_ASN="${2:?}"; shift 2 ;;
    --router-id)       ROUTER_ID="${2:?}"; shift 2 ;;
    --next-hop)        NEXT_HOP="${2:?}"; shift 2 ;;
    --communities)     COMMUNITIES="${2:?}"; shift 2 ;;
    --protected)       PROTECTED="${2:?}"; shift 2 ;;
    --web-port)        WEB_PORT="${2:?}"; shift 2 ;;
    --import)          DO_IMPORT="yes"; shift ;;
    --no-import)       DO_IMPORT="no"; shift ;;
    -y|--non-interactive) INTERACTIVE=0; shift ;;
    --skip-docker)     SKIP_DOCKER=1; shift ;;
    --force-env)       FORCE_ENV=1; shift ;;
    -h|--help)         usage; exit 0 ;;
    *)                 die "opção desconhecida: $1  (use --help)" ;;
  esac
done

TOTAL_STEPS=7

printf '\n%s' "$BOLD"
cat <<'EOF'
  ██████  ██  ██████        ██████  ██████  ██████
  ██   ██ ██ ██             ██      ██   ██ ██   ██
  ██████  ██ ██   ███ █████ ██      ██   ██ ██████
  ██      ██ ██    ██       ██      ██   ██ ██
  ██      ██  ██████        ██████  ██████  ██
EOF
printf '%s' "$RESET"
printf '  %sI'"'"'ve Got Balls Routers Of Steel%s\n' "$DIM" "$RESET"

# ── 1. pré-checagens ─────────────────────────────────────────────────────────
step "Verificando o ambiente"

[ "$(id -u)" -eq 0 ] || die "rode como root (sudo ./install.sh)"

[ -f docker-compose.yml ] && [ -d backend ] && [ -d frontend ] \
  || die "rode o script de dentro do diretório do PIG-COP"
ok "diretório do projeto: $REPO_DIR"

OS_ID="desconhecido"; OS_LIKE=""
if [ -r /etc/os-release ]; then
  # shellcheck disable=SC1091
  . /etc/os-release
  OS_ID="${ID:-desconhecido}"; OS_LIKE="${ID_LIKE:-}"
  ok "sistema: ${PRETTY_NAME:-$OS_ID} ($(uname -m))"
else
  warn "não identifiquei a distribuição; seguindo com cuidado"
fi

if [ -z "$ROUTER_ID" ]; then
  ROUTER_ID="$(ip -4 route get 1.1.1.1 2>/dev/null | sed -n 's/.* src \([0-9.]*\).*/\1/p' | head -1)"
  [ -n "$ROUTER_ID" ] || ROUTER_ID="$(hostname -I 2>/dev/null | awk '{print $1}')"
fi

# ── 2. dependências ──────────────────────────────────────────────────────────
step "Instalando dependências"

apt_install() {
  export DEBIAN_FRONTEND=noninteractive
  apt-get update -qq
  apt-get install -y -qq --no-install-recommends "$@" >/dev/null
}

install_base() {
  local missing=()
  for pkg in curl ca-certificates iproute2; do
    case "$pkg" in
      curl)       command -v curl >/dev/null 2>&1 || missing+=("$pkg") ;;
      iproute2)   command -v ss   >/dev/null 2>&1 || missing+=("$pkg") ;;
      *)          missing+=("$pkg") ;;
    esac
  done
  if [ ${#missing[@]} -gt 0 ]; then
    case "$OS_ID $OS_LIKE" in
      *debian*|*ubuntu*) info "instalando: ${missing[*]}"; apt_install "${missing[@]}" ;;
      *rhel*|*fedora*|*centos*|*rocky*|*almalinux*)
        info "instalando: ${missing[*]}"
        (command -v dnf >/dev/null && dnf install -y -q "${missing[@]}" \
          || yum install -y -q "${missing[@]}") >/dev/null ;;
      *) warn "instale manualmente: ${missing[*]}" ;;
    esac
  fi
  ok "utilitários base presentes"
}

install_docker_debian() {
  install -m 0755 -d /etc/apt/keyrings
  local key=/etc/apt/keyrings/docker.asc
  [ -f "$key" ] || curl -fsSL "https://download.docker.com/linux/$OS_ID/gpg" -o "$key"
  chmod a+r "$key"
  local codename="${VERSION_CODENAME:-$(. /etc/os-release && echo "${VERSION_CODENAME:-stable}")}"
  echo "deb [arch=$(dpkg --print-architecture) signed-by=$key] https://download.docker.com/linux/$OS_ID $codename stable" \
    > /etc/apt/sources.list.d/docker.list
  apt_install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
}

install_base

if [ "$SKIP_DOCKER" -eq 1 ]; then
  info "--skip-docker: pulando a instalação do Docker"
elif command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then
  ok "Docker $(docker --version | sed 's/Docker version //;s/,.*//') + Compose já instalados"
else
  info "instalando Docker Engine + plugin Compose (repositório oficial da Docker)"
  case "$OS_ID $OS_LIKE" in
    *debian*|*ubuntu*) install_docker_debian ;;
    *)
      warn "distribuição sem caminho explícito aqui; usando o script oficial get.docker.com"
      curl -fsSL https://get.docker.com | sh >/dev/null
      ;;
  esac
  systemctl enable --now docker >/dev/null 2>&1 || true
  command -v docker >/dev/null 2>&1 || die "a instalação do Docker falhou"
  ok "Docker instalado"
fi

docker info >/dev/null 2>&1 || die "o daemon do Docker não está respondendo (systemctl start docker)"
docker compose version >/dev/null 2>&1 || die "plugin 'docker compose' ausente"
ok "daemon do Docker respondendo"

# ── 3. portas ────────────────────────────────────────────────────────────────
step "Checando as portas"

port_owner() { ss -lntpH 2>/dev/null | awk -v p=":$1\$" '$4 ~ p {print $6; exit}'; }

for spec in "179:BGP" "$WEB_PORT:interface web" "4000:backend" "50051:gRPC"; do
  p="${spec%%:*}"; label="${spec#*:}"
  owner="$(port_owner "$p" || true)"
  if [ -n "$owner" ]; then
    if printf '%s' "$owner" | grep -qE 'gobgpd|next-server|uvicorn|node|docker'; then
      info "porta $p ($label) já é do PIG-COP — vai ser reaproveitada"
    else
      die "porta $p ($label) ocupada por outro processo: $owner"
    fi
  else
    ok "porta $p livre ($label)"
  fi
done

# ── 4. configuração ──────────────────────────────────────────────────────────
step "Montando a configuração"

ask() { # ask VAR "pergunta" "default"
  local __var="$1" __q="$2" __def="$3" __ans=""
  if [ "$INTERACTIVE" -eq 0 ]; then printf -v "$__var" '%s' "$__def"; return; fi
  if [ -n "$__def" ]; then read -rp "  $__q [$__def]: " __ans || true
  else                     read -rp "  $__q: " __ans || true; fi
  printf -v "$__var" '%s' "${__ans:-$__def}"
}

rand_hex() { head -c 32 /dev/urandom | od -An -tx1 | tr -d ' \n'; }

bcrypt_hash() { # senha via stdin-safe env, nunca na linha de comando
  docker run --rm -e PIGCOP_PWD="$1" python:3.11-slim sh -c \
    'pip install --quiet --disable-pip-version-check bcrypt >/dev/null 2>&1
     python -c "import bcrypt,os;print(bcrypt.hashpw(os.environ[\"PIGCOP_PWD\"].encode(),bcrypt.gensalt(rounds=12)).decode())"'
}

if [ -f .env ] && [ "$FORCE_ENV" -eq 0 ]; then
  ok ".env já existe — preservado (use --force-env para regerar os segredos)"
  WEB_PORT="$(sed -n 's/^WEB_PORT=//p' .env | head -1 || true)"
  WEB_PORT="${WEB_PORT:-5173}"
  ADMIN_USER="$(sed -n 's/^ADMIN_USER=//p' .env | head -1 || true)"
  ADMIN_USER="${ADMIN_USER:-hexanetworks}"
else
  [ -f .env ] && warn "--force-env: o .env atual vai ser substituído e os segredos rotacionados"

  if [ -z "$LOCAL_ASN" ]; then
    ask LOCAL_ASN "ASN local do controller" ""
    [ -n "$LOCAL_ASN" ] || die "o ASN local é obrigatório (--asn)"
  fi
  printf '%s' "$LOCAL_ASN" | grep -qE '^[0-9]+$' || die "ASN inválido: $LOCAL_ASN"

  ask ROUTER_ID   "router-id BGP"                          "$ROUTER_ID"
  ask NEXT_HOP    "next-hop de descarte a anunciar"        "$NEXT_HOP"
  ask COMMUNITIES "communities padrão"                     "$COMMUNITIES"
  ask ADMIN_USER  "usuário do login web"                   "$ADMIN_USER"

  if [ -z "$PROTECTED" ]; then
    printf '  %sPrefixos protegidos: blocos que o controller NUNCA vai anunciar.%s\n' "$DIM" "$RESET"
    printf '  %sColoque os seus e os dos clientes — é o que evita blackhole acidental.%s\n' "$DIM" "$RESET"
    ask PROTECTED "prefixos protegidos (CSV, pode deixar vazio)" ""
  fi
  [ -n "$PROTECTED" ] || warn "PROTECTED_PREFIXES vazio — preencha depois no .env"

  if [ -z "$ADMIN_PASSWORD" ]; then
    if [ "$INTERACTIVE" -eq 1 ]; then
      while :; do
        read -rsp "  senha do usuário $ADMIN_USER (vazio = gerar aleatória): " ADMIN_PASSWORD; echo
        [ -z "$ADMIN_PASSWORD" ] && break
        read -rsp "  confirme a senha: " _confirm; echo
        [ "$ADMIN_PASSWORD" = "$_confirm" ] && break
        warn "as senhas não conferem"
      done
    fi
    if [ -z "$ADMIN_PASSWORD" ]; then
      ADMIN_PASSWORD="$(head -c 18 /dev/urandom | base64 | tr -d '/+=' | cut -c1-16)"
      GENERATED_PASSWORD=1
      ok "senha aleatória gerada (mostrada no final)"
    fi
  fi

  info "gerando hash bcrypt (cost 12)…"
  HASH="$(bcrypt_hash "$ADMIN_PASSWORD")"
  printf '%s' "$HASH" | grep -q '^\$2[aby]\$' || die "não consegui gerar o hash bcrypt"
  # O Compose interpola $VAR dentro do .env: cada $ do hash tem que ser $$.
  HASH_ESCAPED="${HASH//$/\$\$}"
  JWT="$(rand_hex)"
  ok "hash gerado e escapado para o Compose"

  umask 077
  cat > .env <<EOF
# ── Aplicacao ────────────────────────────────────────────────────────────────
APP_VERSION=0.1.0
WEB_PORT=$WEB_PORT

# ── Autenticacao ─────────────────────────────────────────────────────────────
ADMIN_USER=$ADMIN_USER
# bcrypt cost 12. Os \$ estao escapados como \$\$ porque o Compose interpola
# variaveis dentro do .env - sem isso o hash chega truncado no container.
ADMIN_PASSWORD_HASH=$HASH_ESCAPED
JWT_SECRET=$JWT
# true quando estiver atras de TLS (Traefik/nginx). Em HTTP puro tem que ser false.
COOKIE_SECURE=false

# ── BGP ──────────────────────────────────────────────────────────────────────
GOBGP_VERSION=v4.7.0
GRPC_LISTEN=127.0.0.1:50051
GOBGP_LOG_LEVEL=info
LOCAL_ASN=$LOCAL_ASN
ROUTER_ID=$ROUTER_ID
BGP_LISTEN_PORT=179

# ── Politica de anuncio ──────────────────────────────────────────────────────
DEFAULT_NEXT_HOP=$NEXT_HOP
DEFAULT_COMMUNITIES=$COMMUNITIES

# ── Guard-rails ──────────────────────────────────────────────────────────────
PROTECTED_PREFIXES=$PROTECTED
MAX_ROUTES=50000
MIN_PREFIX_LEN_V4=24
RECONCILE_INTERVAL=60
EOF
  chmod 600 .env
  ok ".env escrito (chmod 600)"
fi

mkdir -p data && chmod 700 data
ok "diretório data/ pronto"

# ── 5. build ─────────────────────────────────────────────────────────────────
step "Buildando as imagens"
info "o GoBGP é compilado do source; na primeira vez leva alguns minutos"
if docker compose build; then
  ok "imagens buildadas"
else
  die "o build falhou — veja o erro acima"
fi

# ── 6. subir ─────────────────────────────────────────────────────────────────
step "Subindo a stack"
docker compose up -d
printf '  %s·%s aguardando o backend responder' "$DIM" "$RESET"
HEALTH=""
for _ in $(seq 1 60); do
  if HEALTH="$(curl -fsS "http://127.0.0.1:4000/api/health" 2>/dev/null)"; then break; fi
  printf '.'; sleep 2
done
echo
if [ -z "$HEALTH" ]; then
  warn "o backend não respondeu em 120s. Diagnostique com: docker compose logs backend"
else
  ok "backend no ar"
  if printf '%s' "$HEALTH" | grep -q '"gobgp": *true'; then
    ok "gRPC do gobgpd respondendo"
  else
    warn "o backend subiu mas não falou com o gobgpd ainda; o watchdog tenta de novo"
  fi
fi
docker compose ps --format 'table {{.Name}}\t{{.Status}}' 2>/dev/null | sed 's/^/  /'

# ── 7. importar ──────────────────────────────────────────────────────────────
step "Base de prefixos"

if [ "$DO_IMPORT" = "ask" ]; then
  if [ "$INTERACTIVE" -eq 1 ] && [ -f rotas.rsc ]; then
    read -rp "  importar o rotas.rsc agora? [S/n]: " _r || true
    case "${_r:-S}" in [Nn]*) DO_IMPORT="no" ;; *) DO_IMPORT="yes" ;; esac
  else
    DO_IMPORT="no"
  fi
fi

if [ "$DO_IMPORT" = "yes" ] && [ -f rotas.rsc ] && [ -n "$ADMIN_PASSWORD" ]; then
  JAR="$(mktemp)"; trap 'rm -f "$JAR"' EXIT
  if curl -fsS -c "$JAR" -X POST "http://127.0.0.1:4000/api/auth/login" \
        -H 'content-type: application/json' \
        --data-raw "$(printf '{"username":"%s","password":"%s"}' "$ADMIN_USER" "$ADMIN_PASSWORD")" \
        -o /dev/null; then
    RESP="$(curl -fsS -b "$JAR" -X POST "http://127.0.0.1:4000/api/routes/import" \
              -F "file=@rotas.rsc" -F 'only_list=BLOCK-BGP' || true)"
    JOB="$(printf '%s' "$RESP" | sed -n 's/.*"job_id": *"\([^"]*\)".*/\1/p')"
    if [ -n "$JOB" ]; then
      printf '  %s·%s importando' "$DIM" "$RESET"
      for _ in $(seq 1 120); do
        J="$(curl -fsS -b "$JAR" "http://127.0.0.1:4000/api/jobs/$JOB" 2>/dev/null || true)"
        case "$J" in
          *'"status": "done"'*)  echo; ok "importado: $(printf '%s' "$J" | sed -n 's/.*"injetados": *\([0-9]*\).*/\1/p') prefixos injetados no BGP"; break ;;
          *'"status": "error"'*) echo; warn "a importação falhou: $J"; break ;;
          *) printf '.'; sleep 1 ;;
        esac
      done
    else
      info "nada novo para importar"
    fi
  else
    warn "não consegui autenticar para importar; faça pela tela Importar"
  fi
elif [ "$DO_IMPORT" = "yes" ]; then
  info "importe pela tela Importar (preciso da senha em texto para usar a API)"
else
  info "pulado — use a tela Importar quando quiser"
fi

# ── resumo ───────────────────────────────────────────────────────────────────
IP_SHOW="${ROUTER_ID:-127.0.0.1}"
printf '\n%s────────────────────────────────────────────────────────────%s\n' "$DIM" "$RESET"
printf '%s  PIG-COP no ar%s\n\n' "$BOLD$GREEN" "$RESET"
printf '  Interface   %shttp://%s:%s%s\n' "$BOLD" "$IP_SHOW" "$WEB_PORT" "$RESET"
printf '  Usuário     %s\n' "$ADMIN_USER"
if [ "$GENERATED_PASSWORD" -eq 1 ]; then
  printf '  Senha       %s%s%s  %s← anote agora, não é mostrada de novo%s\n' \
    "$BOLD$YELLOW" "$ADMIN_PASSWORD" "$RESET" "$DIM" "$RESET"
else
  printf '  Senha       %sa que você definiu%s\n' "$DIM" "$RESET"
fi
printf '\n  %sFalta fechar o firewall:%s\n' "$BOLD" "$RESET"
printf '    iptables -A INPUT -p tcp --dport 179 -s IP_DO_CLIENTE -j ACCEPT\n'
printf '    iptables -A INPUT -p tcp --dport 179 -j DROP\n'
printf '    iptables -A INPUT -p tcp --dport %s -s SUA_REDE_DE_GERENCIA -j ACCEPT\n' "$WEB_PORT"
printf '    iptables -A INPUT -p tcp --dport %s -j DROP\n' "$WEB_PORT"
if ! grep -q '^PROTECTED_PREFIXES=..*' .env 2>/dev/null; then
  printf '\n  %s! PROTECTED_PREFIXES está vazio no .env.%s\n' "$YELLOW" "$RESET"
  printf '    %sPreencha com os seus blocos e os dos clientes e rode:%s\n' "$DIM" "$RESET"
  printf '    docker compose up -d backend\n'
fi
printf '\n  %sdocumentação: README.md   ·   logs: docker compose logs -f backend%s\n' "$DIM" "$RESET"
printf '%s────────────────────────────────────────────────────────────%s\n\n' "$DIM" "$RESET"
