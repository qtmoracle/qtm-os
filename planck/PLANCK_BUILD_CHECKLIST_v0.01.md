# PLANCK Surface Manager v0.01
## Implementer Build Checklist

Status: FROZEN / AUTHORITATIVE  
Version: v0.01

---

## 1. Pre-Conditions

- OMNI CLI v0.01 is present and frozen
- OMNI bundle format is sealed
- Witness formats are immutable
- PLANCK directory exists
- No execution runtime is linked to PLANCK

---

## 2. File Placement

- All PLANCK artifacts live under `/planck`
- No files are written outside PLANCK scope
- No OMNI files are modified or copied
- No kernel or authority files are referenced for execution

---

## 3. Required Artifacts

Confirm presence of:

- PLANCK_ROLE_BOUNDARY_v0.01.md
- PLANCK_SURFACE_MANAGER_SPEC_v0.01.md
- SURFACE_INVOCATION_CONTRACT_v0.01_SPLASH.md
- PLANCK_LIFECYCLE_ROUTING_DIAGRAM_v0.01.md
- PLANCK_BUILD_CHECKLIST_v0.01.md

---

## 4. Implementation Rules

Implementations MUST:

- treat PLANCK as stateless
- consume OMNI bundles read-only
- expose metadata verbatim
- expose witness references read-only
- route via static pointers only

Implementations MUST NOT:

- execute surfaces
- evaluate intent
- store state
- infer meaning
- synthesize bundles
- introduce policy or ranking

---

## 5. Determinism Checks

Verify:

- identical inputs produce identical outputs
- no timestamps are emitted
- no random ordering exists
- no environment-derived values are used

---

## 6. Surface Handling

For each surface:

- verify descriptor is sealed
- verify entrypoints are declared
- index surface without mutation
- allow removal without history loss

---

## 7. Error Handling

Only static errors allowed:

- missing descriptor
- malformed descriptor

No retries, fallbacks, or inference.

---

## 8. Freeze Enforcement

Before release:

- confirm no scope violations
- confirm no authority logic
- confirm no execution paths
- confirm no memory or caching

---

## 9. Completion Criteria

PLANCK v0.01 is complete when:

- all required artifacts exist
- all invariants are satisfied
- no additional behavior is present

---

## 10. Freeze Declaration

This checklist is frozen at v0.01.

Any modification requires explicit version escalation to v0.02.

