#!/usr/bin/env bash
#
# Install all extensions listed in extensions.txt.
# Works with VS Code (`code`), Kiro (`kiro`), or Cursor (`cursor`).
#
#? Usage:
#   ./install-extensions.sh           # auto-detects: code > kiro > cursor
#   ./install-extensions.sh kiro      # force a specific editor CLI
#
set -euo pipefail

CLI="${1:-}"

if [[ -z "$CLI" ]]; then
  for candidate in code kiro cursor; do
    if command -v "$candidate" >/dev/null 2>&1; then
      CLI="$candidate"
      break
    fi
  done
fi

if [[ -z "$CLI" ]] || ! command -v "$CLI" >/dev/null 2>&1; then
  echo "No editor CLI found. Install the 'code', 'kiro', or 'cursor' shell command, or pass one as an argument." >&2
  exit 1
fi

echo "Installing extensions using: $CLI"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

while IFS= read -r ext || [[ -n "$ext" ]]; do
  [[ -z "$ext" || "$ext" == \#* ]] && continue
  echo ">> $ext"
  "$CLI" --install-extension "$ext" --force || echo "   (failed: $ext)"
done < "$SCRIPT_DIR/extensions.txt"

echo "Done."
