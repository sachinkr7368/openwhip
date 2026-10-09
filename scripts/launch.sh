#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"

if [[ ! -d "$root/node_modules/electron" ]]; then
  echo "First run: installing dependencies..."
  npm ci --prefix "$root" --omit=dev --no-audit --no-fund --loglevel=error
fi

# Claude Code installs plugin deps without lifecycle scripts, so Electron's binary download never ran.
if [[ ! -f "$root/node_modules/electron/path.txt" ]]; then
  echo "First run: downloading Electron (~100MB)..."
  node "$root/node_modules/electron/install.js"
fi

node "$root/bin/openwhip.js"
echo "OpenWhip is running. Click the tray icon to grab the whip, click again to drop it."
