# 🔒 SPLASH_APPROVAL_SURFACE_SPEC_v0.01

**Status:** Authoritative  
**Version:** v0.01  
**Layer:** Surface (Planck-managed)  
**Scope:** SPLASH approval interactions only  
**Dependencies:** OMNI v0.01 (sealed bundles, read-only)

---

## 1. PURPOSE (LOCKED)

This specification defines how SPLASH:

- presents OMNI-declared items requiring human acknowledgement
- collects **explicit**, **operator-declared** responses
- records acknowledgements as **surface-local, non-authoritative events**

No approval in SPLASH creates, modifies, or executes authority.

---

## 2. APPROVAL IS NOT AUTHORITY (LOCKED)

- OMNI captures and seals authority
- SPLASH may only **reference** OMNI-declared authority
- SPLASH approvals are:
  - acknowledgements
  - confirmations of awareness
  - surface-local signals

They are never permissions.

---

## 3. APPROVAL ELIGIBILITY

SPLASH may present approval prompts only when:

- an OMNI bundle explicitly declares an item as:
  - requiring acknowledgement, or
  - pending review, or
  - awaiting operator confirmation

SPLASH must not invent approval requirements.

---

## 4. SUPPORTED APPROVAL ACTIONS (SURFACE-LOCAL)

The following actions are allowed and exhaustive:

- `ACK_APPROVE`
- `ACK_REJECT`
- `ACK_REVIEW_REQUESTED`
- `ACK_SEEN`
- `ACK_NOTE`

No other actions are permitted in v0.01.

---

## 5. INTERACTION RULES (LOCKED)

- All approvals must be explicit (tap / command)
- No default selections
- No time-based auto-actions
- No inferred intent
- No background approvals
- Each action produces exactly one surface-local event

---

## 6. ACTOR IDENTIFICATION

Each approval must record:

- `actor_id` (surface-local identity)
- reference to OMNI bundle (`bundle_id` or `bundle_hash`)
- timestamp
- action type
- optional note (free text, surface-local)

SPLASH must not resolve actor authority; it only records who acted.

---

## 7. EVENT EMISSION (LINKED)

Each approval action MUST emit a surface-local event conforming to:

- `planck/SPLASH_EVENT_LOG_SCHEMA_v0.01.md`

Approval events must reference OMNI bundles but must not embed authority.

---

## 8. FAILURE & SAFETY (LOCKED)

- If OMNI bundle verification fails, approvals may still be recorded but must be marked `unverified`
- If SPLASH cannot write its event log, approvals must be disabled
- No retries may mutate past events

---

## 9. NON-GOALS (EXPLICIT)

This approval surface does NOT:

- grant permission
- execute actions
- schedule work
- enforce policy
- escalate decisions
- notify external systems automatically

---

## 10. FREEZE NOTE

This document freezes SPLASH approval surface behavior v0.01.

Any change requires a new version (v0.02+).

---

**END — SPLASH_APPROVAL_SURFACE_SPEC_v0.01**
