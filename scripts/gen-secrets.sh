#!/usr/bin/env bash
# Gera ADMIN_PASSWORD_HASH (bcrypt) e JWT_SECRET para o .env.
# Uso: ./scripts/gen-secrets.sh 'senha-em-texto-claro'
#
# A senha vai por variavel de ambiente, nunca interpolada no codigo Python:
# antes ela era colada dentro de '''...''' e uma senha contendo ''' quebrava o
# script ou executava o que viesse depois. O hash ja sai com cada $ escapado
# como $$, que e como ele tem que ir no .env (o compose interpola $VAR la).
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "uso: $0 'senha'" >&2
  exit 1
fi

docker run --rm -e PIGCOP_PWD="$1" python:3.11-slim sh -c '
  out=$(pip install --quiet --disable-pip-version-check bcrypt 2>&1) || { echo "$out" | tail -3 >&2; exit 1; }
  python - <<"PY"
import bcrypt, os, secrets
h = bcrypt.hashpw(os.environ["PIGCOP_PWD"].encode(), bcrypt.gensalt(rounds=12)).decode()
print("ADMIN_PASSWORD_HASH=" + h.replace("$", "$$"))
print("JWT_SECRET=" + secrets.token_hex(32))
PY
'
