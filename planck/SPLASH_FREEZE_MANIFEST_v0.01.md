# 🔒 SPLASH_FREEZE_MANIFEST_v0.01

**Status:** FINAL FREEZE  
**Version:** v0.01  
**Layer:** Surface (Planck-managed)  
**Applies To:** QTM OS v0.01 / OMNI v0.01 / PLANCK v0.01  
**Purpose:** Canonical freeze record for SPLASH Surface v0.01

This manifest defines the **complete, immutable artifact set** for SPLASH v0.01.
Anything not listed here is **out of scope**.

---

## 1. FREEZE INVARIANTS (LOCKED)

- All listed artifacts are immutable
- No file may be edited in place
- Corrections require a new version (v0.02+)
- Removal or replacement of SPLASH must not corrupt OMNI or QTM OS history
- This manifest is itself frozen

---

## 2. ARTIFACT SET (AUTHORITATIVE)

All artifacts reside under `planck/`.

### 2.1 Role & Scope

- `SPLASH_ROLE_BOUNDARY_v0.01.md`  
  Defines SPLASH role, boundaries, invariants, and non-goals.

---

### 2.2 Surface Specification

- `SPLASH_SPEC_v0.01.md`  
  Defines SPLASH surface purpose, inputs, outputs, and responsibilities.

---

### 2.3 Approval Interaction

- `SPLASH_APPROVAL_SURFACE_SPEC_v0.01.md`  
  Defines explicit approval/acknowledgement interactions mapped to OMNI bundles.

---

### 2.4 Event Logging

- `SPLASH_EVENT_LOG_SCHEMA_v0.01.md`  
  Canonical schema for SPLASH surface-local append-only events.

- `SPLASH_EVENT_LOG_EXAMPLES_v0.01.md`  
  Valid example events conforming to the schema.

---

### 2.5 Build & Implementation

- `SPLASH_BUILD_CHECKLIST_v0.01.md`  
  Engineering checklist to implement SPLASH without semantic drift.

---

### 2.6 Freeze Control

- `SPLASH_FREEZE_MANIFEST_v0.01.md`  
  This document.

---

## 3. HASH POLICY

- Content hashes are intentionally omitted at v0.01
- Hashes may be added only if explicitly requested
- Absence of hashes does not weaken freeze semantics

---

## 4. SCOPE GUARANTEE

SPLASH v0.01:

- introduces no authority
- executes nothing
- infers nothing
- modifies no OMNI artifact
- depends on Planck for routing only

---

## 5. CHANGE CONTROL (LOCKED)

To alter SPLASH behavior:

1. Declare a new version (v0.02+)
2. Create new artifacts
3. Publish a new freeze manifest
4. Preserve all v0.01 files intact

Silent changes are forbidden.

---

## 6. CANONICAL CLOSING

> SPLASH v0.01 is complete, sealed, and replaceable.  
> Authority remains explicit and upstream.  
> History remains intact even if SPLASH is removed.

---

**END — SPLASH_FREEZE_MANIFEST_v0.01**
