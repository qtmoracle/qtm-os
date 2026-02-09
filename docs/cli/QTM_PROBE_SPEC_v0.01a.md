# QTM Probe Spec v0.01a (NON-AUTHORITATIVE EXTENSION)
Status: TEST ENTRYPOINT — DRY RUN ONLY

## Purpose
`qtm probe` validates that the QTM stack can perform a deterministic, witness-first,
non-executing end-to-end pass:
CLI → (OMNI witness production/stub) → (PLANCK routing/stub) → deterministic output.

## MUST
- MUST NOT perform network activity.
- MUST NOT execute surface actions.
- MUST emit deterministic output (stable field order, stable timestamps policy).
- MUST be safe on air-gapped machines.
- MUST return nonzero exit code on contract/schema violation.

## Output
- Primary output is JSON conforming to `contracts/CLI_OUTPUT_SCHEMA_v0.01.json`.
- Includes:
  - runtime header (if available)
  - probe.summary
  - witness.status
  - planck.status (dry-run)
  - archive.status (optional, if already implemented elsewhere)

## Determinism rules
- No wall-clock timestamps unless normalized (e.g., fixed "1970-01-01T00:00:00Z") OR omitted.
- Stable key ordering.
- No random IDs; if needed, use a fixed placeholder.

## Exit codes
- 0: probe passed
- 2: contract/schema violation
- 3: missing dependency (omni/planck unavailable)
- 4: probe failed (expected invariants not satisfied)

## Notes
This spec does not modify any frozen v0.01 artifact. It is an additive test entrypoint.
