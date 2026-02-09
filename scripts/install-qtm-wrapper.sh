#!/usr/bin/env bash
set -euo pipefail

# Deterministic install-time stamping:
# - derives the build reference from the current repo HEAD
# - stamps it into the installed wrapper at /usr/local/bin/qtm
# - no runtime git calls, no network, no background behavior

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${REPO_ROOT}/bin/qtm"
DST="/usr/local/bin/qtm"

if [[ ! -f "$SRC" ]]; then
  echo "ERROR: missing source wrapper: $SRC" >&2
  exit 2
fi

if ! command -v git >/dev/null 2>&1; then
  echo "ERROR: git is required to stamp Build Reference at install time" >&2
  exit 3
fi

# Must run inside a git repo so HEAD is well-defined.
if ! git -C "$REPO_ROOT" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "ERROR: $REPO_ROOT is not a git work tree" >&2
  exit 4
fi

BUILD_REF="$(git -C "$REPO_ROOT" rev-parse --short HEAD)"

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

# Stamp token into a temp file, then install deterministically.
sed "s/@QTM_BUILD_REF@/${BUILD_REF}/g" "$SRC" > "$tmp"

sudo install -m 0755 "$tmp" "$DST"

echo "Installed qtm wrapper to $DST"
echo "Build Reference stamped: git:${BUILD_REF}"
