# 🔒 SPLASH_ROLE_BOUNDARY_v0.01

**Status:** Authoritative  
**Version:** v0.01  
**Layer:** Surface (Planck-managed)  
**Scope:** SPLASH Surface only  
**Applies To:** QTM OS v0.01 / OMNI v0.01 / PLANCK v0.01

---

## 1. ROLE DEFINITION (LOCKED)

SPLASH is a **Surface**, not an operator, not a kernel component, and not a source of authority.

SPLASH exists to:

- present human-readable state derived from sealed OMNI bundles
- collect explicit, operator-declared acknowledgements
- emit surface-local, non-authoritative records
- remain fully replaceable without history loss

SPLASH does **not** define truth, authority, or execution.

---

## 2. POSITION IN STACK (LOCKED)

QTM OS (kernel, invariants)
└── OMNI (intent capture + witness)
└── PLANCK (surface routing)
└── SPLASH (this surface)


SPLASH is downstream of OMNI and PLANCK and may be removed without semantic impact to either.

---

## 3. SPLASH MAY (ALLOWED)

SPLASH MAY:

- define surface-local UI / UX
- maintain surface-local, non-authoritative state
- read sealed OMNI bundles (read-only)
- render OMNI-declared intent and evidence
- request explicit human acknowledgements
- emit append-only, surface-local events
- be stopped, restarted, or replaced without corrupting history

---

## 4. SPLASH MUST NOT (PROHIBITED)

SPLASH MUST NOT:

- redefine authority semantics
- infer approvals or intent
- create implicit permissions
- mutate OMNI bundles or witnesses
- introduce execution logic
- depend on PLANCK for memory or policy
- rank, score, optimize, or recommend actions
- introduce social, economic, or behavioral incentives

---

## 5. AUTHORITY BOUNDARY (LOCKED)

- All authority originates from explicit human declaration via OMNI
- SPLASH may only **display** or **reference** authority
- SPLASH acknowledgements are surface-local signals, not authority

No SPLASH artifact is authoritative outside the surface.

---

## 6. FAILURE & REMOVAL GUARANTEE

If SPLASH is removed:

- OMNI witnesses remain intact
- PLANCK routing remains intact
- No authority or truth is lost
- No execution semantics change

This guarantee is mandatory.

---

## 7. NON-GOALS (EXPLICIT)

SPLASH is NOT:

- a scheduler
- an execution engine
- a policy engine
- a recommendation system
- a source of truth
- a persistence layer for authority

---

## 8. FREEZE NOTE

This document freezes the **role boundary** of SPLASH v0.01.

Any extension or reinterpretation requires a new version (v0.02+).

---

**END — SPLASH_ROLE_BOUNDARY_v0.01**
EOF
