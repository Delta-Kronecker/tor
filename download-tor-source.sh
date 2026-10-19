#!/usr/bin/env bash
set -euo pipefail

DEST="${1:-tor-src}"
REPO_URL="https://gitlab.torproject.org/tpo/core/tor.git"

if [ -e "$DEST" ]; then
  rm -rf "$DEST"
fi

git clone "$REPO_URL" "$DEST"

echo "cloned into: $DEST"
git -C "$DEST" log --oneline -1
