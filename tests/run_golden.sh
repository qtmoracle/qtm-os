#!/usr/bin/env bash
set -euo pipefail

# Golden tests (deterministic):
# Use repo wrapper (./bin/qtm), not system-installed qtm.

diff -u tests/golden/qtm_help_v0.01.txt <(./bin/qtm --help)
echo "PASS: qtm --help matches golden"

diff -u tests/golden/qtm_spec_v0.01.txt <(./bin/qtm --spec)
echo "PASS: qtm --spec matches golden"

diff -u tests/golden/qtm_inspect_v0.01.txt <(./bin/qtm inspect)
echo "PASS: qtm inspect matches golden"

# Unknown command must exit with code 2 (deterministic)
set +e
./bin/qtm __unknown__ >/dev/null 2>&1
rc=$?
set -e
if [ "$rc" -ne 2 ]; then
  echo "FAIL: unknown command exit code = $rc (expected 2)" >&2
  exit 1
fi
echo "PASS: unknown command exits with code 2"

