# OMNI CLI v0.01 — README (FROZEN)

OMNI CLI is a mechanical implementation of frozen OMNI v0.01 specifications.
It creates, seals, verifies, and exports OMNI intent bundles.
No semantics are introduced by this tool.

---

## Scope

OMNI CLI:
- consumes OMNI v0.01 specs
- produces deterministic artifacts
- emits witness records
- operates fully offline

OMNI CLI does NOT:
- execute intent
- infer meaning
- apply policy
- interact with Planck
- access the network

---

## Commands

- omni draft
- omni review
- omni seal
- omni verify
- omni export

See:
- OMNI_CLI_COMMAND_MAP_v0.01.md
- OMNI_CLI_STDOUT_CONTRACT_v0.01.md
- OMNI_CLI_EXIT_CODES_v0.01.md

---

## Determinism

All outputs are deterministic.
Stdout may be hashed and verified.
Behavior is invariant across environments.

---

## Versioning

This README applies to:
- OMNI CLI v0.01 only

Any change requires a new version.

---

## Invariants

- CLI is a consumer, not an authority
- No hidden state
- No side effects beyond explicit outputs
- Frozen at v0.01
