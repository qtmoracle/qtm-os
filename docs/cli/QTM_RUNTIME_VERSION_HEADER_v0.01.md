# QTM Runtime Version Header v0.01

STATUS: FROZEN  LAYER: QTM OS  
AUTHORITY: Declarative (Non-Authoritative)  
SURFACE DEPENDENCY: None  
CHANGE POLICY: Freeze after review

---

## Purpose

This document defines the **QTM Runtime Version Header**.

The Runtime Version Header is a **human-readable, CLI-visible declaration**
that identifies the QTM OS runtime version and its frozen components.

It exists to:
- orient operators, contributors, and auditors
- provide deterministic version visibility
- prevent ambiguity about “what is running”

It does **not** assert authority, readiness, or approval.

---

## Invocation Rule (FROZEN)

The Runtime Version Header MUST be displayed only via:

    qtm --version
    qtm version

It MUST NOT be displayed:
- at boot
- at login
- via background services
- via surfaces
- via OMNI

---

## Header Characteristics (FROZEN)

The Runtime Version Header MUST be:

- read-only
- deterministic
- non-interactive
- non-negotiated
- local-only

It MUST NOT:
- auto-update
- check the network
- infer environment state
- imply compatibility or correctness

---

## Required Fields (FROZEN)

The header MUST include the following fields, in this order:

1. **QTM Runtime Version**
2. **QTM OS Layer**
3. **Frozen Component Set**
4. **Build / Commit Reference**
5. **Declaration Notice**

---

## Canonical Output Format (FROZEN)

Exact formatting is not cosmetic but **semantic**.
The header MUST follow this structure:

```
QTM Runtime v0.01
Layer: QTM OS
Frozen Components:
  - QTM_MACRO_v0.01
  - QTM_CLI_SKELETON_v0.01
  - QTM_OS_DEPLOYMENT_DRILL_CHECKLIST_v0.01
  - QTM_SURFACE_KILL_TEST_v0.01
  - CLI_TO_RUNTIME_MAPPING_v0.01
Build Reference: <git commit hash or build id>
Declaration: Non-authoritative, declarative runtime header
```

---

## Field Semantics

### QTM Runtime Version
- Declares the runtime version label
- Does not guarantee completeness or correctness

### Layer
- MUST always read: `QTM OS`
- Prevents confusion with OMNI or Planck

### Frozen Components
- Lists frozen artifacts that define this runtime
- Order is informational, not hierarchical

### Build Reference
- Typically a Git commit hash
- Local reference only
- No verification implied

### Declaration Notice
- Explicitly restates non-authoritative status
- Required to prevent misinterpretation

---

## Explicit Non-Goals (FROZEN)

The Runtime Version Header MUST NOT:

- validate installation
- assert security posture
- claim compliance
- imply surface availability
- imply OMNI readiness
- negotiate versions

---

## Removal Safety Invariant

Removal or absence of:
- OMNI
- Planck
- any surface

MUST NOT affect:
- header availability
- header correctness
- CLI behavior

---

## Compatibility Notes

This header is intentionally minimal.

Any future expansion MUST:
- preserve existing fields
- append new fields explicitly
- require a version bump

---

END OF FILE

