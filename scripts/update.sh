#!/usr/bin/env bash
#
# PIG-COP — atualização
#
# Puxa a versão nova do git, rebuilda só as imagens que mudaram e sobe de novo.
# O .env e o banco (data/) não são tocados.
#
# Uso:  sudo ./scripts/update.sh             puxa e rebuilda o que mudou
#       sudo ./scripts/update.sh --rebuild   rebuilda todas as imagens mesmo sem
#                                            commit novo (ex.: já deu git pull na mão)
#
set -euo pipefail

REBUILD_ALL=0
case "${1:-}" in
  --rebuild) REBUILD_ALL=1 ;;
  -h|--help) sed -n '3,11p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
  "") ;;
  *) echo "opção desconhecida: $1 (use --help)" >&2; exit 1 ;;
esac

cd "$(dirname "${BASH_SOURCE[0]}")/.."
REPO_DIR="$PWD"

if [ -t 1 ]; then
  RESET=$'\e[0m'; RED=$'\e[31m'; GREEN=$'\e[32m'; YELLOW=$'\e[33m'; DIM=$'\e[2m'
else
  RESET=""; RED=""; GREEN=""; YELLOW=""; DIM=""
fi
ok()   { printf '  %s✓%s %s\n' "$GREEN" "$RESET" "$1"; }
info() { printf '  %s·%s %s\n' "$DIM" "$RESET" "$1"; }
warn() { printf '  %s!%s %s\n' "$YELLOW" "$RESET" "$1"; }
die()  { printf '\n%s✗ %s%s\n\n' "$RED" "$1" "$RESET" >&2; exit 1; }

[ "$(id -u)" -eq 0 ] || die "rode como root (sudo ./scripts/update.sh)"
[ -f .env ] || die "sem .env aqui — instalação nova se faz com ./install.sh"
command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1 \
  || die "docker compose não encontrado"

# O diretório costuma ser de outro dono que o root (clonado por um usuário
# comum): sem isto o git recusa com "dubious ownership".
G=(git -c "safe.directory=$REPO_DIR")

if ! "${G[@]}" diff --quiet || ! "${G[@]}" diff --cached --quiet; then
  "${G[@]}" status --short --untracked-files=no | sed 's/^/    /'
  die "há arquivos do projeto alterados localmente (acima); guarde com 'git stash' ou descarte antes de atualizar"
fi

OLD="$("${G[@]}" rev-parse HEAD)"
info "versão atual: $("${G[@]}" log -1 --format='%h %s' "$OLD")"
"${G[@]}" pull --ff-only --quiet || die "git pull falhou (veja o erro acima)"
NEW="$("${G[@]}" rev-parse HEAD)"

if [ "$OLD" = "$NEW" ] && [ "$REBUILD_ALL" -eq 0 ]; then
  ok "já está na última versão (use --rebuild se atualizou o código na mão)"
  exit 0
fi
if [ "$OLD" != "$NEW" ]; then
  ok "atualizado para: $("${G[@]}" log -1 --format='%h %s' "$NEW")"
  "${G[@]}" log --format='      %h %s' "$OLD..$NEW"
fi

# Só rebuilda o que mudou. Rebuildar o gobgpd reinicia o BGP: as sessões caem
# e voltam, e o controller reinjeta as rotas em ~10s.
CHANGED="$("${G[@]}" diff --name-only "$OLD" "$NEW")"
SERVICES=()
if [ "$REBUILD_ALL" -eq 1 ] || printf '%s\n' "$CHANGED" | grep -q '^docker-compose\.yml$'; then
  SERVICES=(gobgpd backend frontend)
else
  for svc in gobgpd backend frontend; do
    if printf '%s\n' "$CHANGED" | grep -q "^$svc/"; then SERVICES+=("$svc"); fi
  done
fi

if [ ${#SERVICES[@]} -eq 0 ]; then
  ok "nenhuma imagem mudou (só documentação/scripts)"
  exit 0
fi

case " ${SERVICES[*]} " in
  *" gobgpd "*) warn "o gobgpd vai ser rebuildado: as sessões BGP caem e voltam (rotas reinjetadas em ~10s)" ;;
esac
info "rebuildando: ${SERVICES[*]}"
docker compose build "${SERVICES[@]}" || die "o build falhou — nada foi reiniciado, a versão anterior segue no ar"
docker compose up -d
ok "stack reiniciada"

printf '  %s·%s aguardando o backend' "$DIM" "$RESET"
HEALTH=""
for _ in $(seq 1 60); do
  HEALTH="$(curl -fsS http://127.0.0.1:4000/api/health 2>/dev/null || true)"
  printf '%s' "$HEALTH" | grep -q '"bgp": *true' && break
  printf '%s' "$HEALTH" | grep -q '"config_errors": *\["' && break
  printf '.'; sleep 2
done
echo

CONFIG_ERRORS="$(printf '%s' "$HEALTH" | sed -n 's/.*"config_errors": *\[\([^]]*\)\].*/\1/p')"
if [ -z "$HEALTH" ]; then
  warn "o backend não respondeu em 120s: docker compose logs backend"
elif [ -n "$CONFIG_ERRORS" ]; then
  warn "configuração inválida no .env — nenhuma rota vai ser anunciada:"
  printf '%s\n' "$CONFIG_ERRORS" | sed 's/^"//;s/"$//;s/","/\n/g' | sed 's/^/      /'
  warn "corrija o .env e rode: docker compose up -d backend"
elif printf '%s' "$HEALTH" | grep -q '"bgp": *true'; then
  ok "BGP no ar — as rotas do banco são reinjetadas pelo watchdog"
else
  warn "o BGP ainda não iniciou: docker compose logs backend | grep -i reconcile"
fi
