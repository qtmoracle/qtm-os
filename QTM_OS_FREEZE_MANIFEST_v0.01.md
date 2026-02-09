# QTM OS Freeze Manifest v0.01

STATUS: FROZEN  
LAYER: QTM OS  
AUTHORITY: Index (Non-Authoritative)  
CHANGE POLICY: New version for changes (no edits to this file)

---

## Purpose

This manifest is a single index of **frozen QTM OS v0.01 artifacts** across:

- Kernel / Keystone docs
- Contracts (machine-readable)
- Archive policy (machine-readable)
- CLI specs + wrapper + installer
- Planck + Splash specs
- Deterministic golden tests

It is:
- informational
- deterministic
- audit-friendly

It does not:
- assert correctness
- assert readiness
- imply compliance or approval

---

## Frozen Artifact Index (v0.01)

### Kernel / Keystone

- kernel/keystone/CANONICAL_CONTINUATION_PROMPT_QTM_v0.01.md
- kernel/keystone/QTM_BLACK_BOX_CONSTITUTION_v0.01.md
- kernel/keystone/QTM_MASTER_CONSOLIDATION_DOCUMENT_v0.01.md
- kernel/keystone/SOURCE_POINTERS.md
- kernel/keystone/ARCHIVE_INVARIANTS_ADDENDUM_v0.01.md
- kernel/keystone/PLANES_TO_ARTIFACTS_MAP_v0.01.md

### Contracts (Machine-Readable)

- contracts/CLI_OUTPUT_SCHEMA_v0.01.json

### Archive (Machine-Readable)

- archive/RETENTION_POLICY_v0.01.json

### Specs

- docs/specs/QTM_MACRO_v0.01.md

### CLI (Specs + Freeze Manifests + Rules)

- docs/cli/QTM_CLI_SKELETON_v0.01.md
- docs/cli/QTM_RUNTIME_VERSION_HEADER_v0.01.md
- docs/cli/QTM_OS_DEPLOYMENT_DRILL_CHECKLIST_v0.01.md
- docs/cli/QTM_SURFACE_KILL_TEST_v0.01.md
- docs/cli/CLI_TO_RUNTIME_MAPPING_v0.01.md
- docs/cli/QTM_WRAPPER_INSTALL_RULES_v0.01.md
- docs/cli/QTM_WRAPPER_INSTALL_RULES_v0.01a.md
- docs/cli/QTM_CLI_FREEZE_MANIFEST_v0.01.md
- docs/cli/QTM_CLI_FREEZE_MANIFEST_v0.01a.md

### CLI Implementation (Repo-Tracked)

- bin/qtm
- scripts/install-qtm-wrapper.sh

### Planck + Splash (Surface Manager + Surface Specs)

- planck/PLANCK_BUILD_CHECKLIST_v0.01.md
- planck/PLANCK_LIFECYCLE_ROUTING_DIAGRAM_v0.01.md
- planck/PLANCK_ROLE_BOUNDARY_v0.01.md
- planck/PLANCK_SURFACE_MANAGER_SPEC_v0.01.md
- planck/SURFACE_INVOCATION_CONTRACT_v0.01_SPLASH.md
- planck/SPLASH_SPEC_v0.01.md
- planck/SPLASH_ROLE_BOUNDARY_v0.01.md
- planck/SPLASH_BUILD_CHECKLIST_v0.01.md
- planck/SPLASH_APPROVAL_SURFACE_SPEC_v0.01.md
- planck/SPLASH_EVENT_LOG_SCHEMA_v0.01.md
- planck/SPLASH_EVENT_LOG_EXAMPLES_v0.01.md
- planck/SPLASH_FREEZE_MANIFEST_v0.01.md

### Tests (Deterministic Golden Fixtures)

- tests/README.md
- tests/run_golden.sh
- tests/golden/qtm_help_v0.01.txt
- tests/golden/qtm_spec_v0.01.txt
- tests/golden/qtm_inspect_v0.01.txt
- tests/golden/qtm_runtime_v0.01.txt
- tests/golden/qtm_surface_v0.01.txt
- tests/golden/qtm_version_v0.01.normalized.txt
- tests/golden/archive.status.v0.01.json
- tests/golden/archive.gc.v0.01.json

---

## Invariants (Summary, FROZEN)

- Macro prints on every `qtm` invocation.
- Runtime header prints only via `qtm --version` / `qtm version`.
- No Planck/OMNI/surface dependency for QTM OS correctness/visibility.
- No background behavior, no network checks, no hidden state.
- Golden tests verify deterministic output; version output is normalized only for Build Reference.

---

END OF FILE
