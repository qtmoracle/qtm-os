# QTM Wrapper Install Rules v0.01

STATUS: FROZEN  
LAYER: QTM OS  
AUTHORITY: Procedural (Non-Authoritative)  
CHANGE POLICY: New version for changes

---

## Purpose

This document defines deterministic rules for installing the repo-tracked QTM wrapper
(`bin/qtm`) onto a node path (typically `/usr/local/bin/qtm`).

This is an installation procedure only. It does not grant authority, approvals, or readiness.

---

## Canonical Source (FROZEN)

The canonical wrapper source is:

- `bin/qtm` (in this repo)

Node installation targets MUST be derived from this file.

---

## Canonical Install Target (DEFAULT)

Default install path:

- `/usr/local/bin/qtm`

---

## Install Procedure (DETERMINISTIC)

From repo root:

1) Install (copy + permissions)

```bash
sudo install -m 0755 bin/qtm /usr/local/bin/qtm

2) Verify resolution

command -v qtm

3) Verify runtime header

qtm --version
qtm version

Update Rule

Updates MUST be explicit and operator-initiated.

Acceptable update mechanism:

re-run the install command above from a known repo revision

Not permitted:

auto-updates

background updates

network checks inside the wrapper

Non-Goals (FROZEN)
Installation procedure MUST NOT:

infer system readiness

mutate configuration beyond placing the wrapper

install dependencies

start services

END OF FILE
