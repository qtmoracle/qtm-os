# OMNI_OPERATOR_CONTRACT_v0.01
Version: v0.01
Status: AUTHORITATIVE — FREEZE-LOCKED (OMNI-only)

## Purpose
Define the operator-facing contract for ACIE (Authority Capture via Intent Expression).
OMNI captures explicit human intent and produces signed witness artifacts.
OMNI does NOT execute, infer, or orchestrate.

## Operator Authority
Authority exists only through:
- explicit human-authored statements
- canonicalization
- cryptographic signature

Unsigned intent has no authority.

## Operator MUST
- explicitly author all intent statements
- explicitly review the exact text to be signed
- explicitly sign the canonical hash
- re-sign for any change in meaning, targets, or constraints

## Operator MUST NOT
- rely on prior approvals
- assume implied permission
- delegate authority to agents or automation

## OMNI MUST
- treat operator input as the sole source of authority
- preserve intent text exactly as authored
- bind authority immutably via hash + signature
- emit offline-verifiable witness artifacts

## OMNI MUST NOT
- modify intent after signing
- infer intent or permissions
- execute any action
- retain authority state across envelopes

## Evidence Output
Each operator action results in a sealed evidence bundle:
- intent envelope
- canonical hash
- signature material
- optional attachments (content-addressed)

## Completion Condition
This contract is satisfied when:
- all authority is explicit and signed
- evidence verifies offline
- execution remains external
