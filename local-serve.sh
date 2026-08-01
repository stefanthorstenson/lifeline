#!/usr/bin/env bash
# Start a local server for the site and open it in the browser.
set -euo pipefail

cd "$(dirname "$0")"

PORT=8000
URL="http://localhost:$PORT/"
PID_FILE=".devserver.pid"
LOG_FILE=".devserver.log"

if [[ -f "$PID_FILE" ]] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
  echo "Server already running at $URL"
  xdg-open "$URL" >/dev/null 2>&1 &
  exit 0
fi

python3 -m http.server "$PORT" >"$LOG_FILE" 2>&1 &
echo $! > "$PID_FILE"

sleep 0.3
echo "Server started at $URL (stop with ./local-stop.sh)"
xdg-open "$URL" >/dev/null 2>&1 &
