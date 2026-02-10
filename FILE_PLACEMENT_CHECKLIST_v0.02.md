# FILE_PLACEMENT_CHECKLIST_v0.02 (Authoritative, Descriptive)

This document describes the **current file and directory layout**
of the QTM OS repository as of v0.02.

It is **descriptive only**:
• it does not mandate future structure
• it does not prohibit new surfaces or layouts
• it does not retroactively constrain v0.01 artifacts

---

## Relationship to Prior Versions

This document supersedes the descriptive role of:

- `FILE_PLACEMENT_CHECKLIST_v0.01.md` (archived)

The v0.01 checklist is preserved for historical intent only.
No semantics or requirements are inherited implicitly.

---

## Repository Root

/
├── archive/ # Historical, frozen artifacts
├── bin/ # Executable entrypoints
├── contracts/ # Authoritative interface schemas
├── docs/ # Documentation, ADRs, specs
├── kernel/ # Kernel-layer artifacts (paper kernel)
├── omni/ # OMNI operator layer
├── planck/ # PLANCK surface manager + surfaces
├── scripts/ # Install / utility scripts
├── tests/ # Golden tests and validators
├── README.md
├── TODO.md


---

## archive/

Historical, immutable artifacts retained for audit and provenance.

Examples:
- `FILE_PLACEMENT_CHECKLIST_v0.01.md`
- legacy intent snapshots
- deprecated but referenced specs

No active development occurs here.

---

## bin/

Executable entrypoints.

- `bin/qtm` — canonical CLI entrypoint

---

## contracts/

Authoritative interface definitions and schemas.

Examples:
- `CLI_OUTPUT_SCHEMA_v0.01.json`
- `CLI_OUTPUT_SCHEMA_v0.01a.json`

Contracts here define **interfaces**, not behavior.

---

## docs/

Supporting documentation and specifications.

Subdirectories include:
- `docs/ADR/` — Architecture Decision Records
- `docs/cli/` — CLI-specific specs and freezes
- `docs/execution/` — execution manifests
- `docs/specs/` — macro-level specs

---

## kernel/

Kernel-layer (“paper kernel”) artifacts.

Current structure uses a keystone subdirectory:

kernel/
└── keystone/
├── QTM_BLACK_BOX_CONSTITUTION_v0.01.md
├── PLANES_TO_ARTIFACTS_MAP_v0.01.md
├── ARCHIVE_INVARIANTS_ADDENDUM_v0.01.md
├── QTM_MASTER_CONSOLIDATION_DOCUMENT_v0.01.md


These files define invariants and governance, not execution.

---

## omni/

OMNI operator layer.

Contains:
- OMNI contracts and invariants
- CLI specifications
- signing and witness formats
- example OMNI bundles

OMNI artifacts are sealed and immutable once frozen.

---

## planck/

PLANCK surface manager and surface definitions.

Structure:
planck/
├── draft/ # Draft-only, non-authoritative surface work
├── PLANCK_* # PLANCK frozen specs
├── SPLASH_* # SPLASH frozen surface artifacts


### planck/draft/
Draft-only materials:
- may change freely
- never authoritative
- never referenced by runtime behavior

---

## scripts/

Utility and installation scripts.

Example:
- `install-qtm-wrapper.sh`

---

## tests/

Test artifacts and validators.

Includes:
- golden output files
- schema validation scripts
- VM-level test harnesses

Example:
- `VM_TEST_CHECKLIST_v0.01.md` (test-only, non-authoritative)

---

## Notes

- Placement does **not** imply authority
- Presence does **not** imply execution
- Drafts are explicitly non-authoritative
- Frozen artifacts remain immutable

---

**END — FILE_PLACEMENT_CHECKLIST_v0.02**

