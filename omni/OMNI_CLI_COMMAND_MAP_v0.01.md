# OMNI CLI v0.01 — COMMAND MAP (FROZEN)

This file defines the complete, frozen command surface of the OMNI CLI v0.01.
The CLI is a mechanical consumer of existing OMNI v0.01 specifications.
No semantics are defined or inferred here.

---

## omni draft

**Purpose:** Create an unsigned intent envelope.

**Input:**
- stdin OR `--input <file>`

**Output:**
- intent envelope (unsigned)

**Stdout:**
- deterministic JSON
- conforms to `CJSON_PROFILE_v0.01`
- no timestamps, no environment data

---

## omni review

**Purpose:** Canonicalize and display an intent without mutation.

**Input:**
- intent envelope

**Output:**
- normalized canonical representation

**Stdout:**
- deterministic JSON
- byte-stable
- no changes to semantic content

---

## omni seal

**Purpose:** Hash and sign an intent per OMNI signing rules.

**Input:**
- reviewed intent

**Process:**
- hash calculation
- signature generation
- witness construction

**Output:**
- sealed OMNI bundle

**Stdout:**
- witness JSON only
- conforms to `WITNESS_FORMAT_v0.01`

---

## omni verify

**Purpose:** Offline verification of a sealed bundle.

**Input:**
- sealed OMNI bundle

**Process:**
- hash verification
- signature verification
- invariant checks

**Output:**
- verification result

**Stdout:**
- deterministic JSON verdict
- includes hashes and boolean results only

---

## omni export

**Purpose:** Emit a filesystem bundle from a sealed OMNI bundle.

**Input:**
- sealed OMNI bundle

**Output:**
- verbatim filesystem structure
- no transformation

**Stdout:**
- deterministic manifest JSON
- hashes only

---

## Invariants

- No execution
- No inference
- No Planck logic
- No network access
- Deterministic stdout is a contract
- Command behavior is frozen at v0.01

