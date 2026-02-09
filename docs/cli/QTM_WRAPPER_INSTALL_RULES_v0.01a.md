# QTM Wrapper Install Rules v0.01a

STATUS: FROZEN  
LAYER: QTM OS  
AUTHORITY: Procedural (Non-Authoritative)  
CHANGE POLICY: New version for changes

---

## Purpose

This document defines deterministic rules for installing the repo-tracked QTM wrapper (`bin/qtm`)
onto a node path (typically `/usr/local/bin/qtm`) with a **build reference stamped at install-time**.

This is an installation procedure only. It does not grant authority, approvals, or readiness.

---

## Canonical Source (FROZEN)

The canonical wrapper source is:

- `bin/qtm` (in this repo)

The wrapper contains a token:

- `@QTM_BUILD_REF@`

This token MUST be replaced at install-time, not at runtime.

---

## Canonical Install Target (DEFAULT)

Default install path:

- `/usr/local/bin/qtm`

---

## Install Procedure (DETERMINISTIC)

From repo root:

1) Install using the stamping installer:

```bash
./scripts/install-qtm-wrapper.sh

This stamps:

Build Reference: git:<short HEAD>

into the installed wrapper at:

/usr/local/bin/qtm

Verify resolution:

command -v qtm


Verify runtime header:

qtm --version
qtm version

Update Rule

Updates MUST be explicit and operator-initiated.

Acceptable update mechanism:

check out a known repo revision

re-run ./scripts/install-qtm-wrapper.sh

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
