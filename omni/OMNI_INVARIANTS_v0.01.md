# OMNI_INVARIANTS_v0.01
Version: v0.01
Status: AUTHORITATIVE — FREEZE-LOCKED (OMNI-only)

## Scope
These invariants constrain OMNI behavior only.
They do not redefine kernel invariants.

## Invariants (MUST / MUST NOT)

### I1 — Explicit Authority
OMNI MUST record authority only as explicit operator-authored intent.
OMNI MUST NOT infer meaning, approval, or permission.

### I2 — Non-Executable
OMNI MUST NOT execute actions.
OMNI MUST NOT trigger execution paths.

### I3 — Deterministic Witness
OMNI MUST emit deterministic, canonical, hashable witness artifacts.
Identical input MUST produce identical hashes.

### I4 — Append-Only
Sealed envelopes MUST be immutable.
Any change requires a new envelope and signature.

### I5 — Offline Verifiable
Witness artifacts MUST verify without network access.

### I6 — Opaque Targets
Targets MUST be treated as opaque references.
OMNI MUST NOT interpret or resolve them.

### I7 — No Persistent Authority
OMNI MUST NOT retain authority across envelopes.
No agent or process may accumulate approval state.

### I8 — No Policy or Optimization
OMNI MUST NOT introduce policy engines, ranking, recommendation, or automation.

## Kernel Alignment
These invariants operationalize (but do not redefine):
- explicit human authority
- non-executable meaning
- verifiable witness

## Completion Condition
OMNI complies when all above invariants are mechanically enforced.
