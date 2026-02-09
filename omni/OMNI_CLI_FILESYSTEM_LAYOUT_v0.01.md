# OMNI CLI v0.01 — FILESYSTEM LAYOUT (FROZEN)

This file defines the canonical filesystem layout for OMNI CLI v0.01.
All paths already exist or are implied by prior OMNI documentation.
No new semantics are introduced.

---

## Working Directory (User-Controlled)

./intent.json
./review.json
./bundle.omni


The CLI does not create directories implicitly.

---

## Input / Output Conventions

- All commands accept input via:
  - stdin, OR
  - explicit file argument

- All commands emit results via:
  - stdout only
  - no side effects unless explicitly writing a bundle

---

## Bundle Structure (Logical)

A sealed OMNI bundle contains, verbatim:

- intent (unsigned or reviewed)
- witness (per `WITNESS_FORMAT_v0.01`)
- signatures
- hashes

No reformatting or enrichment is permitted.

---

## Export Behavior

`omni export` emits files exactly as contained in the bundle.
Paths and filenames are preserved verbatim.

---

## Invariants

- No temp files
- No hidden state
- No implicit paths
- No environment-derived behavior
- Filesystem layout is frozen at v0.01

