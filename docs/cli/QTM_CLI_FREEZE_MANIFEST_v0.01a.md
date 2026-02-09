# QTM CLI Freeze Manifest v0.01a

STATUS: FROZEN  
LAYER: QTM OS  
AUTHORITY: Index (Non-Authoritative)  
CHANGE POLICY: Append-only (new version for changes)

---

## Purpose

This manifest enumerates the **frozen QTM OS CLI-layer artifacts** for v0.01a.

v0.01a is an **append-only update** to:
- `docs/cli/QTM_CLI_FREEZE_MANIFEST_v0.01.md`

It is:
- informational
- deterministic
- audit-friendly

It does not:
- assert correctness
- assert compliance
- imply readiness

---

## Frozen Artifacts (v0.01 baseline)

(As defined in v0.01)

- docs/cli/QTM_CLI_SKELETON_v0.01.md
- docs/cli/QTM_OS_DEPLOYMENT_DRILL_CHECKLIST_v0.01.md
- docs/cli/QTM_SURFACE_KILL_TEST_v0.01.md
- docs/cli/CLI_TO_RUNTIME_MAPPING_v0.01.md

---

## Append-Only Additions (v0.01a)

### CLI Output Contract (Machine-Readable)

- contracts/CLI_OUTPUT_SCHEMA_v0.01.json

### Archive Policy (Machine-Readable)

- archive/RETENTION_POLICY_v0.01.json

### Golden Outputs (Determinism Tests)

- tests/golden/archive.status.v0.01.json
- tests/golden/archive.gc.v0.01.json

---

## Notes

- Keystone / constitution addenda are OS-level artifacts and are indexed in the QTM OS freeze manifest, not here.
- Runtime header wiring may exist on a node as `/usr/local/bin/qtm` and is outside repo scope unless explicitly tracked.
- Golden files are immutable once accepted; changes require a new manifest version.

---

END OF FILE
