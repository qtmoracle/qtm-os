# QTM_OS TODO (v0.01 — POST-SURFACE.LIST v0.01a)
Status: ACTIVE — post-baseline, pre-surface

This TODO reflects the system state **after**:
- deterministic CLI exists
- `qtm probe` is implemented
- OMNI + PLANCK presence detection is live
- JSON output is schema-validated
- golden tests enforce behavior

No items below should regress those guarantees.

────────────────────────────────────────
A. HYGIENE (OPTIONAL BUT RECOMMENDED)
────────────────────────────────────────
- [ ] Decide policy for `release/` artifacts:
      - commit vs ignore
      - document decision in README or ADR
      - enforce via `.gitignore` if ignored
- [ ] Reconcile duplicate freeze manifests:
      - document precedence between v0.01 and v0.01a
      - do NOT modify frozen content
      - add clarification doc if needed

────────────────────────────────────────
B. TEST & CONTRACT HARDENING
────────────────────────────────────────
- [x] Deterministic OS entrypoint exists (`qtm probe`)
- [x] JSON output validated against `CLI_OUTPUT_SCHEMA_v0.01.json`
- [x] Golden tests enforce probe output
- [ ] Decide whether to:
      - extend schema validation to other commands (`inspect`, `runtime`, `surface`)
      - or explicitly document probe as the only validated entrypoint at v0.01

────────────────────────────────────────
C. PLANCK SURFACE DISCOVERY (NEXT)
────────────────────────────────────────
- [x] Define `surface.list` contract (v0.01a, schema-enforced) (read-only, deterministic)
- [x] Implement `qtm surface list` (Planck-only, read-only) (human text output)
- [x] Implement `qtm --json surface list` (CLI_OUTPUT_SCHEMA_v0.01a) (schema-aligned)
- [x] Discover surfaces via Planck filesystem inspection only:
      - `<SURFACE>_SPEC_v*.md`
      - `<SURFACE>_FREEZE_MANIFEST_v*.md`
- [x] Add golden tests for surface listing (text + json)
- [x] Ensure no execution, no OMNI calls, no surface start/load
- [x] Define surface invocation contract (v0.01a, declarative, non-executing)

────────────────────────────────────────
D. SURFACES (UNLOCKED — surface.list frozen)
────────────────────────────────────────
- [ ] SPLASH draft consistency pass (behavior map → schema → examples) (DRAFT only)
- [ ] SPLASH surface behavior (after surface.list is frozen)
- [ ] Any other domain surfaces

────────────────────────────────────────
E. UI (EXPLICITLY DEFERRED)
────────────────────────────────────────
- [ ] Any UI (CLI TUI / web / graphical) is forbidden until:
      - surface.list is frozen
      - surface invocation contracts exist
      - execution boundaries are documented

────────────────────────────────────────
F. GOVERNANCE / ADRs (AS NEEDED)
────────────────────────────────────────
- [ ] ADR: release artifact policy
- [ ] ADR: surface discovery rules
- [ ] ADR: when schema validation is mandatory vs optional
