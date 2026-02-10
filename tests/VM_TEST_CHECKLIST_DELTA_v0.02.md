# 🧩 VM TEST CHECKLIST — DELTA FOR v0.02

This document lists **proposed additional checks**
identified during v0.01 VM validation.

It does NOT modify VM_TEST_CHECKLIST_v0.01.md.

---

## A. STORAGE / ARTIFACT LIFECYCLE (NEW SECTION)

Purpose:  
Ensure that long-running use of QTM OS does not result in
unbounded or hidden artifact accumulation.

### Proposed Checks

- [ ] No artifact growth during read-only commands
- [ ] Draft artifacts confined to declared draft paths only
- [ ] Frozen artifacts immutable after promotion
- [ ] Archive artifacts governed by retention policy
- [ ] Archive status report available (deterministic)
- [ ] Garbage collection plan reportable (no auto-delete)
- [ ] No orphaned or unclassified artifacts present

---

## B. VERSION PROLIFERATION CONTROL (NEW SECTION)

Purpose:  
Prevent uncontrolled growth of minor or patch versions.

### Proposed Checks

- [ ] Version suffixes follow declared convention
- [ ] Superseded versions archived or marked inactive
- [ ] No parallel “active” versions without manifest intent
- [ ] Golden tests mapped to explicit version targets

---

## C. SURFACE SCALING SAFETY (NEW SECTION)

Purpose:  
Ensure that adding surfaces does not degrade core guarantees.

### Proposed Checks

- [ ] Multiple surfaces discoverable without execution
- [ ] Surface removal remains non-destructive
- [ ] No surface introduces background state
- [ ] Surface artifacts removable without invalidating QTM/OMNI

---

## D. UI / EXECUTION BOUNDARY ASSERTION (OPTIONAL)

Purpose:  
Preserve clarity between index and runtime layers.

### Proposed Checks

- [ ] No UI components bundled by default
- [ ] No execution paths enabled without explicit version bump
- [ ] Execution flags rejected or no-op at index layer

---

## E. STATUS

All items in this delta are:
- non-blocking for v0.01
- intentionally deferred
- candidates for VM_TEST_CHECKLIST_v0.02+

**END — VM_TEST_CHECKLIST_DELTA_v0.02**
