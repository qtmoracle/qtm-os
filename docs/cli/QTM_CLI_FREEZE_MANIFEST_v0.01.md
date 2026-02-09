# QTM CLI Freeze Manifest v0.01

STATUS: FROZEN  
LAYER: QTM OS  
AUTHORITY: Index (Non-Authoritative)  
CHANGE POLICY: Append-only (new version for changes)

---

## Purpose

This manifest enumerates the **frozen QTM OS CLI-layer artifacts** for v0.01.

It is:
- informational
- deterministic
- audit-friendly

It does not:
- assert correctness
- assert compliance
- imply readiness

---

## Frozen Artifacts (v0.01)

- docs/cli/QTM_CLI_SKELETON_v0.01.md
- docs/cli/QTM_OS_DEPLOYMENT_DRILL_CHECKLIST_v0.01.md
- docs/cli/QTM_SURFACE_KILL_TEST_v0.01.md
- docs/cli/CLI_TO_RUNTIME_MAPPING_v0.01.md

---

## Notes

- Runtime header wiring may exist on a node as `/usr/local/bin/qtm` and is outside repo scope unless explicitly tracked.
- Any additions or modifications require a new manifest version (e.g., v0.01a or v0.02).

---

END OF FILE
