#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"

if [[ ! -d "$root/node_modules/electron" ]]; then
  echo "First run: installing Electron (~200MB)..."
  npm ci --prefix "$root" --omit=dev --no-audit --no-fund --loglevel=error
fi

node "$root/bin/openwhip.js"
echo "OpenWhip is running. Click the tray icon to grab the whip, click again to drop it."
