# QTM Node Execution Manifest v0.01a

STATUS: FROZEN  
LAYER: QTM OS  
AUTHORITY: Procedural (Non-Authoritative)  
SCOPE: Node execution + verification (no implementation semantics)  
CHANGE POLICY: New version for changes (no edits to this file)

---

## Purpose

This document defines the **canonical command-by-command execution path** for a QTM OS node.

It exists to ensure that an operator or auditor can:

- verify a QTM OS checkout (repo-mode)
- install the repo-tracked wrapper to a node (installed-mode)
- verify deterministic CLI outputs via golden tests
- verify release bundle integrity via SHA-256

This document does **not**:
- assert correctness beyond the described checks
- imply readiness, compliance, or approval
- require OMNI, Planck, or any surface

---

## Non-Negotiables (FROZEN)

- No network required
- No background services
- No daemons
- No Planck/OMNI/surface dependency for QTM OS verification
- Determinism is checked via golden fixtures

---

## Execution Modes

### Mode A — Repo Mode (canonical for tests)

Use the repo-tracked wrapper directly:

- `./bin/qtm`
- `./tests/run_golden.sh`

This mode is deterministic and recommended for verification.

### Mode B — Installed Mode (node wrapper)

Install the repo wrapper to:

- `/usr/local/bin/qtm`

This mode is for operator convenience and matches repo behavior, but includes an install-time Build Reference stamp.

---

## Command-by-Command Procedure (DETERMINISTIC)

### Step 0 — Enter Repo Root

```bash
cd ~/dev/qtm-os

Expected:

working directory is the QTM OS repo root

Step 1 — Confirm Repo State
git status -sb


Expected:

either clean, or changes are explicitly known to the operator

Step 2 — Repo Mode Sanity (CLI visible)
./bin/qtm --help | head -n 12


Expected:

QTM ASCII macro prints

help text follows

Step 3 — Run Deterministic Golden Tests (canonical verification)
./tests/run_golden.sh


Expected:
PASS lines for:

qtm --help

qtm --spec

qtm inspect

qtm runtime

qtm surface

unknown command exit code = 2

normalized qtm --version

No network access occurs.

Step 4 — Optional Installed Mode (install wrapper)

Install repo wrapper to /usr/local/bin/qtm:

./scripts/install-qtm-wrapper.sh


Expected:

script reports installation path

script reports Build Reference stamp: git:<short-hash>

Step 5 — Verify Installed Wrapper Resolution
command -v qtm


Expected:

prints /usr/local/bin/qtm


Step 6 — Verify Installed Version Output (Build Reference present)
qtm --version | tail -n 6


Expected:

lists frozen components

includes Build Reference: git:<short-hash>

includes Declaration: Non-authoritative, declarative runtime header

Release Bundle Verification (if present)
Step 7 — Verify Tarball SHA-256

Example (replace filename as needed):

sha256sum -c release/qtm-os-v0.01+git1bcde79.tar.gz.sha256


Expected:

OK

Step 8 — Verify Tarball Includes Freeze Manifest
tar -tzf release/qtm-os-v0.01+git1bcde79.tar.gz | grep -n "QTM_OS_FREEZE_MANIFEST_v0.01.md"


Expected:

one match


Notes (FROZEN)

Golden tests operate in repo mode and are the primary determinism check.

Installed wrapper stamping is expected to vary per install; determinism is verified via normalization in tests.

OMNI/Planck/surfaces are not required for QTM OS verification and must not be assumed.

END OF FILE
