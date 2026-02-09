# WITNESS_FORMAT_v0.01
Version: v0.01
Status: AUTHORITATIVE — FREEZE-LOCKED (OMNI-only)

## Purpose
Define the canonical witness record format emitted by OMNI.
This format represents signed human intent only.
It does NOT represent execution.

## Witness Record Properties
A valid OMNI witness record MUST be:
- explicit
- append-only
- deterministic
- offline-verifiable
- immutable once sealed

## Canonical Witness Artifact
The primary witness artifact is the **Intent Envelope**.

Required files:
- envelope.json      (canonical intent envelope)
- envelope.sha256    (sha256 of canonical envelope bytes)
- envelope.sig       (operator signature material)
- manifest.json      (bundle integrity record)
- attachments/       (optional; content-addressed)

## Authority Semantics
- Authority exists ONLY in signed operator intent
- Witness records prove declaration, not execution
- Execution evidence is strictly out of scope

## Determinism Requirements
- Canonical JSON rules defined in CJSON_PROFILE_v0.01
- Field order, whitespace, and encoding MUST be stable
- Hashes MUST be reproducible byte-for-byte

## Immutability Rule
Once sealed:
- envelope.json MUST NOT change
- signatures MUST NOT be altered
- attachments MUST NOT be replaced

Any change requires a new envelope and new signature.

## Verification Contract
A verifier MUST be able to:
1. canonicalize envelope.json
2. recompute sha256 with signatures=[]
3. validate signature(s)
4. validate manifest + attachment digests
5. do all of the above offline

## Kernel Alignment (Non-Redefining)
This format complies with kernel invariants:
- explicit authority
- non-executable meaning
- offline-verifiable witness
No kernel semantics are modified.

## Completion Condition
Witness format is complete when:
- verification is deterministic
- authority is explicit and sealed
- execution remains external
