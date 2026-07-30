#!/usr/bin/env bash
# Gera ADMIN_PASSWORD_HASH (bcrypt) e JWT_SECRET para o .env.
# Uso: ./scripts/gen-secrets.sh 'senha-em-texto-claro'
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "uso: $0 'senha'" >&2
  exit 1
fi

docker run --rm python:3.11-slim sh -c "
  pip install --quiet bcrypt >/dev/null 2>&1
  python - <<'PY'
import bcrypt, secrets
pwd = '''$1'''
print('ADMIN_PASSWORD_HASH=' + bcrypt.hashpw(pwd.encode(), bcrypt.gensalt(rounds=12)).decode())
print('JWT_SECRET=' + secrets.token_hex(32))
PY
"
