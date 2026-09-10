#!/bin/sh
set -e

echo "Starting PasarGuard on Railway..."

export UVICORN_HOST="0.0.0.0"
export UVICORN_PORT="${PORT:-8000}"

echo "Listening on ${UVICORN_HOST}:${UVICORN_PORT}"

exec /code/start.sh