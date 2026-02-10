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

diff -u tests/golden/qtm_runtime_v0.01.txt <(./bin/qtm runtime)
echo "PASS: qtm runtime matches golden"

diff -u tests/golden/qtm_surface_v0.01a.txt <(./bin/qtm surface)
echo "PASS: qtm surface matches golden"

# qtm surface list (v0.01a)
diff -u tests/golden/qtm_surface_list_v0.01a.txt <(./bin/qtm surface list)
echo "PASS: qtm surface list matches golden (text)"

./bin/qtm --json surface list > /tmp/qtm_surface_list.json
diff -u tests/golden/qtm_surface_list_v0.01a.json /tmp/qtm_surface_list.json
echo "PASS: qtm surface list matches golden (json)"

./tests/validate_schema.py contracts/CLI_OUTPUT_SCHEMA_v0.01a.json /tmp/qtm_surface_list.json
echo "PASS: qtm surface list conforms to CLI_OUTPUT_SCHEMA_v0.01a"


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

echo "== qtm probe (json) =="
./bin/qtm --json probe > /tmp/qtm_probe.json
diff -u tests/golden/qtm_probe_v0.01.json /tmp/qtm_probe.json
echo "PASS: qtm probe (json) matches golden"

./tests/validate_schema.py contracts/CLI_OUTPUT_SCHEMA_v0.01.json /tmp/qtm_probe.json
echo "PASS: qtm probe conforms to CLI_OUTPUT_SCHEMA_v0.01"

# Normalized --version output (mask Build Reference)
diff -u tests/golden/qtm_version_v0.01.normalized.txt \
  <(./bin/qtm --version | sed -E 's/^Build Reference: git:[0-9a-f]+$/Build Reference: git:<REDACTED>/')
echo "PASS: qtm --version matches normalized golden"

echo "ALL GOLDEN TESTS PASSED"

