# 🔒 SPLASH_SPEC_v0.01

**Status:** Authoritative  
**Version:** v0.01  
**Layer:** Surface (Planck-managed)  
**Scope:** SPLASH Surface only (replaceable, unplug-safe)  
**Dependencies:** OMNI v0.01 (sealed bundles, read-only), PLANCK v0.01 (routing only)

---

## 1. PURPOSE (LOCKED)

SPLASH is a Planck-managed surface that:

- consumes **sealed OMNI outputs** (read-only)
- renders operator-declared intent, evidence, and status in a human-facing surface
- collects explicit acknowledgements as **surface-local signals**
- emits append-only surface-local events that do **not** redefine authority

SPLASH does not execute anything and does not create authority.

---

## 2. HARD CONSTRAINTS (LOCKED)

SPLASH MUST:

- treat OMNI bundles as immutable
- operate with no dependence on Planck memory (Planck has none)
- remain removable without corrupting history
- avoid inference, automation, ranking, optimization
- record only surface-local events; never rewrite OMNI witness data

---

## 3. INPUTS (READ-ONLY)

### 3.1 Sealed OMNI Bundles
SPLASH may consume OMNI outputs that are:

- explicitly declared by a human operator
- sealed and signed per OMNI v0.01
- verifiable offline

SPLASH must not accept any “bundle-like” input that is not OMNI-sealed.

### 3.2 Optional Surface Context
SPLASH may accept non-authoritative context (surface-local), such as:

- UI filters
- display preferences
- local cache hints

This context must never alter meaning of OMNI outputs.

---

## 4. OUTPUTS (SURFACE-LOCAL)

SPLASH may emit:

1. **Surface-local acknowledgements**
   - explicit human taps/commands
   - scoped to a referenced OMNI bundle or OMNI-declared item
   - not authority

2. **Surface-local append-only event log**
   - immutable records of surface interactions
   - references OMNI bundle IDs/hashes, never embeds authority changes

SPLASH must not emit operator authority or execution directives.

---

## 5. SURFACE RESPONSIBILITIES (LOCKED)

### 5.1 Display Responsibilities
SPLASH must be able to render, at minimum:

- OMNI bundle identifiers (IDs/hashes)
- declared intent summary (as declared, not inferred)
- evidence references (as sealed)
- state labels that are purely presentational (e.g., “ACK NEEDED”)
- integrity/witness status (verified/unverified) based on OMNI data

### 5.2 Interaction Responsibilities
SPLASH may offer minimal actions:

- acknowledge (explicit)
- request review (explicit)
- mark “seen” (explicit)
- attach surface-local note (explicit)

All interactions must emit surface-local events.

---

## 6. DATA MODEL (SURFACE-LOCAL, MINIMAL)

### 6.1 OMNI Bundle Reference (surface-local view)
A SPLASH record MUST reference OMNI bundles by immutable identifiers:

- `omni_bundle_id` (opaque)
- `omni_bundle_hash` (optional if ID implies hash)
- `omni_bundle_verified` (bool; computed locally)

SPLASH must not store mutable copies of OMNI content as authoritative state.

### 6.2 Surface Ack Record (surface-local)
An acknowledgement record MUST include:

- reference to OMNI bundle (id/hash)
- `ack_type` (e.g., approve/reject/note) — surface-local only
- `actor_id` (surface identity mapping)
- timestamp
- optional note (surface-local)

Ack records do not grant authority; they are signals only.

---

## 7. EVENT LOG REQUIREMENT (LINKED)

SPLASH must maintain an append-only surface-local event log.
Schema and examples are defined in:

- `planck/SPLASH_EVENT_LOG_SCHEMA_v0.01.md`
- `planck/SPLASH_EVENT_LOG_EXAMPLES_v0.01.md`

This spec does not duplicate that schema.

---

## 8. FAILURE MODES (LOCKED)

SPLASH must degrade safely:

- If OMNI bundles are unavailable: display “unavailable” without fabricating state
- If verification fails: display “unverified” without altering bundles
- If Planck routing fails: do not attempt alternative execution paths

No fallback may create authority or execution.

---

## 9. NON-GOALS (EXPLICIT)

SPLASH is NOT:

- an authority engine
- a scheduler / dispatcher
- a payments system
- a policy engine
- a recommender / optimizer
- a replacement for OMNI or Planck

---

## 10. FREEZE NOTE

This document freezes SPLASH Surface v0.01 scope and interfaces.

Any extension requires a new version (v0.02+).

---

**END — SPLASH_SPEC_v0.01**
