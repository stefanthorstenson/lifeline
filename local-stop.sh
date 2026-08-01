#!/usr/bin/env bash
# Stop the local server started by serve.sh.
set -euo pipefail

cd "$(dirname "$0")"

PID_FILE=".devserver.pid"

if [[ -f "$PID_FILE" ]] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
  kill "$(cat "$PID_FILE")"
  rm -f "$PID_FILE"
  echo "Server stopped."
else
  echo "Server is not running."
  rm -f "$PID_FILE"
fi
