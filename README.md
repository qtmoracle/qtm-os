# qtm-os (Paper Kernel + OMNI + PLANCK + Contracts)

Canonical repository for QTM OS v0.01 architecture documents.

## Directories (authoritative intent)
- kernel/    Truth + invariants + witness semantics (includes ARA definition scope)
- omni/      Witness + ACIE responsibility (captures explicit human intent; no execution)
- planck/    Execution + orchestration only (no policy/evidence ownership)
- contracts/ Binding interface contracts between CLI ↔ OMNI ↔ PLANCK (authoritative)
- docs/ADR/  Architecture decision records

## Non-goals
- This repo does not implement the CLI.
- This repo does not implement surfaces.
