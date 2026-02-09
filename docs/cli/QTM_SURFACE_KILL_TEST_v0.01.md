# QTM Surface Kill Test v0.01

STATUS: FROZEN  LAYER: QTM OS  
AUTHORITY: Invariant Test (Non-Authoritative)  
CHANGE POLICY: Freeze after review

---

## Purpose

This test proves that **QTM OS correctness and visibility do not depend on surfaces**.

It enforces the invariant:
> Surfaces are removable without affecting truth, authority, or runtime behavior.

---

## Test Scope (FROZEN)

This test applies to:

- QTM CLI
- QTM Runtime Version Header

This test does NOT apply to:
- Surface functionality
- Planck behavior
- OMNI execution

---

## Test Procedure (ORDERED)

### Step 1 — Baseline State

Ensure:
- Planck presence is irrelevant (directory may exist or not)
- No surface processes are running

---

### Step 2 — Remove / Disable Surfaces

One of:
- Temporarily move `planck/` out of repo
- Ensure Planck is absent or unavailable (no install assumed)
- Ensure no surface configs are reachable

No mocks permitted.

---

### Step 3 — Invoke QTM CLI

Commands:
```
qtm
qtm --version
```


Expected:
- QTM macro prints
- Runtime Version Header prints
- No warnings about missing surfaces
- No degraded output

---

### Step 4 — Negative Assertion

Confirm:
- No surface names appear in output
- No Planck references appear
- No errors related to surface absence

---

## Pass Criteria

The Surface Kill Test PASSES if:

- Output matches baseline
- No conditional branching occurs
- CLI behavior is unchanged

---

## Failure Criteria

The test FAILS if:

- CLI refuses to run
- Header changes
- Missing surfaces cause warnings or errors
- Output implies degraded state

---

END OF FILE

