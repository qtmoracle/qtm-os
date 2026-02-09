# QTM OS Deployment Drill Checklist v0.01

STATUS: FROZEN  LAYER: QTM OS  
AUTHORITY: Procedural (Non-Authoritative)  
CHANGE POLICY: Freeze after review

---

## Purpose

This checklist defines a **deterministic deployment drill** for QTM OS v0.01.

Its sole purpose is to verify that:
- the QTM CLI is callable
- the Runtime Version Header prints deterministically and visibly
- no surfaces, Planck, or OMNI are required

This is a **verification drill**, not an installer.

---

## Preconditions (FROZEN)

- Local filesystem access
- Shell access
- No network connectivity required
- No Planck required
- No OMNI required
- No surfaces present

---

## Drill Steps (ORDERED, DETERMINISTIC)

### Step 1 — Verify CLI Presence

Command:
command -v qtm


Expected:
- `qtm` resolves to a local executable path
- No output from shell startup files

---

### Step 2 — Invoke Bare CLI

Command:
qtm


Expected:
- QTM ASCII Macro prints
- Help or placeholder output follows
- Process exits deterministically

---

### Step 3 — Invoke Version Header (Primary Check)

Command:
qtm --version


Expected:
- QTM ASCII Macro prints
- Runtime Version Header prints
- Header fields appear in canonical order
- No network calls
- Exit code is deterministic

---

### Step 4 — Explicit Version Invocation

Command:
qtm version


Expected:
- Output is semantically identical to `qtm --version`
- No additional inspection or mutation

---

### Step 5 — Determinism Check

Repeat Steps 2–4 multiple times.

Expected:
- Identical output across invocations
- No timestamps
- No environment-dependent variation

---

## Failure Conditions

The deployment drill FAILS if:

- Version header does not print
- Output differs across runs
- Any surface is required
- Planck or OMNI is referenced
- Network access is attempted

---

## Postconditions

If all steps pass:

- QTM OS runtime visibility is confirmed
- CLI is deterministic
- Runtime header is stable
- Deployment drill is considered satisfied for v0.01

---

END OF FILE

