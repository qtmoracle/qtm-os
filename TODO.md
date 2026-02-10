# QTM_OS TODO (v0.01 — POST-SURFACE.LIST v0.01a)
Status: ACTIVE — post-baseline, pre-VM-validation

This TODO reflects the system state **after**:
- deterministic CLI exists
- `qtm probe` is implemented
- OMNI + PLANCK presence detection is live
- JSON output is schema-validated
- golden tests enforce behavior
- surface discovery via Planck is frozen (v0.01a)

No items below should regress those guarantees.

────────────────────────────────────────
A. HYGIENE (OPTIONAL BUT RECOMMENDED)
────────────────────────────────────────
- [ ] Decide policy for `release/` artifacts:
      - commit vs ignore
      - document decision in README or ADR
      - enforce via `.gitignore` if ignored
- [x] Archive superseded placement guidance
      - `FILE_PLACEMENT_CHECKLIST_v0.01.md` archived
      - `FILE_PLACEMENT_CHECKLIST_v0.02.md` is current descriptive truth
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
C. PLANCK SURFACE DISCOVERY (FROZEN)
────────────────────────────────────────
- [x] Define `surface.list` contract (v0.01a, schema-enforced) (read-only, deterministic)
- [x] Implement `qtm surface list` (Planck-only, read-only)
- [x] Implement `qtm --json surface list` (CLI_OUTPUT_SCHEMA_v0.01a)
- [x] Discover surfaces via Planck filesystem inspection only:
      - `<SURFACE>_SPEC_v*.md`
      - `<SURFACE>_FREEZE_MANIFEST_v*.md`
- [x] Add golden tests for surface listing (text + json)
- [x] Ensure no execution, no OMNI calls, no surface start/load
- [x] Define surface invocation contract (v0.01a, declarative, non-executing)

────────────────────────────────────────
D. SURFACES (DRAFT PHASE — NON-AUTHORITATIVE)
────────────────────────────────────────
- [x] SPLASH draft consistency pass:
      - behavior map aligned
      - event schema aligned
      - examples normalized
      - role boundary clarified
      - build checklist aligned
- [ ] SPLASH VM behavior validation (read-only, no fixes)
- [ ] Any additional domain surfaces (must follow SPLASH draft pattern)

────────────────────────────────────────
E. VM VALIDATION (NEXT)
────────────────────────────────────────
- [x] VM test checklist created (`VM_TEST_CHECKLIST_v0.01.md`)
- [ ] Run VM tests against:
      - QTM OS
      - OMNI
      - PLANCK
      - SPLASH (surface behavior only)
- [ ] Record failures as observations only
- [ ] Do NOT patch, edit drafts, or bump versions during testing

────────────────────────────────────────
F. UI (EXPLICITLY DEFERRED)
────────────────────────────────────────
- [ ] Any UI (CLI TUI / web / graphical) is forbidden until:
      - surface.list is frozen
      - surface invocation contracts exist
      - execution boundaries are documented

────────────────────────────────────────
G. POST-VM ACTIONS (RECORDED, NOT YET EXECUTED)
────────────────────────────────────────
- [ ] HOT: Add explicit VM assertions for storage / artifact lifecycle
      (retention, bounded growth, no hidden accumulation)
- [x] VM validation artifacts generated:
      - tests/VM_VALIDATION_REPORT_v0.01.md
      - tests/VM_TEST_CHECKLIST_DELTA_v0.02.md
- [x] VM test checklist relocated to tests/ for test-artifact consistency
- [ ] HOT: Separate PLANCK (surface manager) from SPLASH (surface)
      before declaring full MVP for QTM OS / OMNI / PLANCK / SPLASH
      - PLANCK remains routing + discovery only
      - SPLASH moves out of planck/ into a surface/ namespace
      - Draft SPLASH artifacts migrate last, after freeze decision
      - No behavior or semantics change during separation


────────────────────────────────────────
H. GOVERNANCE / ADRs (AS NEEDED)
────────────────────────────────────────
- [ ] ADR: release artifact policy
- [ ] ADR: surface discovery rules
- [ ] ADR: when schema validation is mandatory vs optional
