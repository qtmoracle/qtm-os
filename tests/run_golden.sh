#!/usr/bin/env bash
set -euo pipefail

# Golden tests (deterministic):
# Use repo wrapper (./bin/qtm), not system-installed qtm.

diff -u tests/golden/qtm_help_v0.01.txt <(./bin/qtm --help)
echo "PASS: qtm --help matches golden"

diff -u tests/golden/qtm_spec_v0.01.txt <(./bin/qtm --spec)
echo "PASS: qtm --spec matches golden"
