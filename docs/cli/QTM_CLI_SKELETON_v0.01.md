# QTM CLI Skeleton v0.01

STATUS: FROZEN  
LAYER: QTM OS  
AUTHORITY: Declarative (Non-Authoritative)  
CHANGE POLICY: Freeze after review

---

## Purpose

This document defines the **canonical command surface** of the `qtm` CLI.

The QTM CLI is the **human-visible invocation of QTM OS**.
It establishes what commands exist, what namespaces are reserved, and what
the CLI is explicitly *not* responsible for.

This file defines **shape, boundaries, and invariants only**.
It does not define internal execution logic.

---

## Invocation Invariant (FROZEN)

Invoking QTM OS means executing:

    qtm

Every invocation MUST:

1. Print the QTM ASCII macro (Q T M)
2. Then evaluate CLI arguments
3. Then deterministically:
   - execute a defined command, or
   - print help / error text and exit

Invocation MUST NOT:

- infer authority
- mutate state implicitly
- start background services
- depend on Planck, OMNI, or any surface
- require network access

---

## Command Shape (FROZEN)

    qtm [global flags] <command> [subcommand] [args]

No alternate entrypoints are permitted at v0.01.

---

## Global Flags (MINIMAL, READ-ONLY)

These flags are safe, side-effect free, and deterministic.

| Flag        | Behavior |
|------------|----------|
| `--help`   | Print CLI help and exit |
| `--version`| Print QTM Runtime Version Header and exit |
| `--spec`   | Print path or reference to this CLI spec |

No other global flags are permitted at v0.01.

---

## Top-Level Commands (RESERVED)

The following commands are **reserved namespaces** at v0.01.
Presence does not imply full functionality.

| Command | Purpose |
|-------|--------|
| `help` | Explicit help invocation |
| `version` | Explicit runtime version output |
| `inspect` | Read-only inspection |
| `runtime` | Runtime declaration namespace |
| `surface` | Surface namespace (Planck-managed) |

---

## Command Semantics (DECLARATIVE)

### `qtm help`
- Prints canonical CLI help text
- Does not inspect environment
- Does not evaluate state

### `qtm version`
- Prints QTM Runtime Version Header
- Non-authoritative
- Declarative only

### `qtm inspect`
- Read-only introspection
- Allowed outputs:
  - CLI wiring visibility
  - Known invariant references
- Must not validate, mutate, or execute

### `qtm runtime`
- Namespace reserved for runtime metadata
- No mutation permitted at v0.01
- No background behavior

### `qtm surface`
- Namespace reserved for Planck-managed surfaces
- At v0.01:
  - MUST NOT load surfaces
  - MUST NOT start services
  - MUST NOT assume Planck presence

---

## Explicit Non-Goals (FROZEN)

The QTM CLI MUST NOT:

- bootstrap the OS
- install dependencies
- auto-discover surfaces
- manage credentials or identity
- perform network calls
- persist state
- imply approval, readiness, or authority

---

## Determinism Requirements (FROZEN)

- Same input → same output
- No time-dependent behavior
- No environment-dependent branching
- No hidden state

---

## Removal Safety Invariant

Removal or absence of:
- Planck
- OMNI
- any surface

MUST NOT affect:
- CLI correctness
- OS correctness
- truth or authority

---

## Compatibility Notes

This skeleton exists to:

- lock the CLI namespace early
- prevent future collision or drift
- allow future extension without reinterpretation

All future CLI additions MUST:

- respect this shape
- preserve existing semantics
- be explicitly versioned

---

END OF FILE
