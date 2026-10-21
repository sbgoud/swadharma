#!/usr/bin/env bash
# Visual QA helper: serves dist/ and screenshots a route.
# usage: scripts/shot.sh <route> <outfile> [width] [height] [light|dark]
set -euo pipefail

ROUTE="${1:-/}"
OUT="${2:-/tmp/kilo/shots/shot.png}"
W="${3:-1440}"
H="${4:-2400}"
THEME="${5:-light}"
PORT="${PORT:-4180}"

if [ ! -f dist/index.html ]; then
  echo "dist/ missing — run npm run build first" >&2
  exit 1
fi

mkdir -p "$(dirname "$OUT")"

python3 scripts/devserver.py dist "$PORT" >/tmp/kilo/serve.log 2>&1 &
SERVE_PID=$!
trap 'kill $SERVE_PID 2>/dev/null || true' EXIT

for _ in $(seq 1 40); do
  if curl -sf "http://127.0.0.1:$PORT" -o /dev/null; then break; fi
  sleep 0.25
done

PORT="$PORT" node --experimental-websocket scripts/shot.mjs "$ROUTE" "$OUT" "$W" "$H" "$THEME"
