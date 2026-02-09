# CLI to Runtime Mapping v0.01

STATUS: FROZEN  LAYER: QTM OS  
AUTHORITY: Declarative Mapping  
CHANGE POLICY: Freeze after review

---

## Purpose

This document defines how **CLI invocations map to runtime declarations**.

It explicitly avoids:
- execution semantics
- authority inference
- background behavior

---

## Mapping Principles (FROZEN)

- CLI is declarative
- Runtime is descriptive
- No command asserts truth or readiness
- Output is informational only

---

## Canonical Mappings

### `qtm`

Maps to:
- QTM invocation event
- Macro print
- CLI help or placeholder

No runtime state implied.

---

### `qtm --version` / `qtm version`

Maps to:
- Runtime Version Header declaration
- Frozen component visibility

Does NOT:
- validate runtime
- check installation
- negotiate versions

---

### `qtm inspect`

Maps to:
- Read-only inspection output
- No runtime mutation

---

### `qtm surface`

Maps to:
- Namespace declaration only
- No runtime dependency

---

## Explicit Non-Mappings

No CLI command may map to:

- background services
- surface execution
- authority elevation
- persistence

---

## Invariant Enforcement

If a CLI command requires:
- Planck
- OMNI
- a surface

It violates QTM OS invariants and MUST NOT exist at v0.01.

---

END OF FILE
