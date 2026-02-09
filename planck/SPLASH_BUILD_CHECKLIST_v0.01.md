# 🔒 SPLASH_BUILD_CHECKLIST_v0.01

**Status:** Authoritative  
**Version:** v0.01  
**Layer:** Surface (Planck-managed)  
**Scope:** SPLASH implementation tasks only (no semantics changes)

---

## 1. PRE-FLIGHT (MANDATORY)

- [ ] Confirm SPLASH documents exist in `planck/`:
  - [ ] `SPLASH_ROLE_BOUNDARY_v0.01.md`
  - [ ] `SPLASH_SPEC_v0.01.md`
  - [ ] `SPLASH_APPROVAL_SURFACE_SPEC_v0.01.md`
  - [ ] `SPLASH_EVENT_LOG_SCHEMA_v0.01.md`
  - [ ] `SPLASH_EVENT_LOG_EXAMPLES_v0.01.md`
  - [ ] `SPLASH_BUILD_CHECKLIST_v0.01.md`
  - [ ] `SPLASH_FREEZE_MANIFEST_v0.01.md`

- [ ] Confirm OMNI artifacts are sealed and immutable under `omni/`
- [ ] Confirm Planck remains static hub (routing only) under `planck/`

---

## 2. IMPLEMENTATION RULES (LOCKED)

- [ ] No policy evaluation in SPLASH
- [ ] No execution logic in SPLASH
- [ ] No inference, no silent approvals
- [ ] Only consume OMNI sealed bundles (read-only)
- [ ] Only emit SPLASH surface-local events as defined

---

## 3. DATA PIPELINE (MINIMAL)

- [ ] Implement OMNI bundle ingestion (read-only):
  - [ ] Load bundle metadata (ID/hash)
  - [ ] Verify bundle signature (offline-capable)
  - [ ] Mark `omni_verified` in SPLASH view state

- [ ] Implement SPLASH surface-local event log:
  - [ ] Append-only write
  - [ ] No mutation
  - [ ] Offline readable
  - [ ] Exportable

---

## 4. UI / UX (SURFACE-LOCAL)

- [ ] Render list of OMNI bundles (ID, time, verified/unverified)
- [ ] Render bundle detail view (declared intent summary, evidence refs)
- [ ] Provide explicit actions:
  - [ ] Approve / Reject / Request Review / Seen / Note
- [ ] Every action emits exactly one SPLASH event

---

## 5. EVENT COMPLIANCE TESTS

- [ ] Generated events match schema exactly
- [ ] Event types limited to allowed set
- [ ] Top-level fields match envelope (no extras)
- [ ] Unknown fields rejected or ignored (no silent acceptance)
- [ ] Supersession emits `SPLASH.EVENT_SUPERSEDED` only (no edits)

---

## 6. FAILURE BEHAVIOR (LOCKED)

- [ ] If OMNI verification fails: display `omni_verified=false`; do not block viewing
- [ ] If event log append fails: disable interaction controls
- [ ] If OMNI bundle missing: display unavailable without fabricating state

---

## 7. SECURITY (MINIMAL)

- [ ] Surface actor identity mapping is explicit (no inference)
- [ ] No secrets stored in SPLASH event log
- [ ] No external execution credentials in SPLASH

---

## 8. RELEASE CRITERIA (v0.01)

- [ ] All documents present
- [ ] SPLASH reads OMNI bundles without mutation
- [ ] SPLASH emits valid surface-local events
- [ ] SPLASH removable without impacting OMNI/Planck/QTM artifacts

---

## 9. FREEZE RULE

If any change seems required:
- [ ] Do NOT modify v0.01 documents
- [ ] Open v0.02 thread and propose explicitly

---

**END — SPLASH_BUILD_CHECKLIST_v0.01**
