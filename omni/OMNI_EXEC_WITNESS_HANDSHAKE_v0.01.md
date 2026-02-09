# OMNI_EXEC_WITNESS_HANDSHAKE_v0.01
Version: v0.01
Status: AUTHORITATIVE — FREEZE-LOCKED (OMNI-only)

## Purpose
Define the artifact-level handshake between OMNI (intent witness)
and downstream execution systems.

This document defines boundaries only.
It does NOT authorize execution.

## Roles
- OMNI: captures intent and emits signed witness artifacts.
- Executor (downstream): performs execution outside OMNI scope.
- Witness/Attestor (downstream): records execution evidence outside OMNI.

## Handshake Rule
OMNI artifacts MAY be referenced by downstream systems as proof of intent.
OMNI artifacts MUST NOT be treated as proof of execution.

## Required OMNI Artifacts
Downstream systems referencing OMNI MUST accept:
- envelope.json
- envelope.sha256
- envelope.sig (or embedded signatures)
- manifest.json
- attachments/ (optional)

## Mandatory Downstream Verification
Before acting on OMNI intent, downstream MUST:
1. canonicalize envelope.json per CJSON_PROFILE_v0.01
2. recompute sha256 with signatures=[]
3. verify operator signature(s)
4. verify manifest and attachment digests

Failure at any step MUST invalidate the intent reference.

## Separation of Evidence
If execution occurs:
- execution evidence MUST be generated downstream
- execution evidence MUST reference the OMNI envelope by hash
- execution evidence MUST be append-only and offline-verifiable

OMNI MUST NOT generate or mutate execution evidence.

## No Authority Feedback
Execution outcomes MUST NOT modify OMNI intent meaning.
Any new meaning requires a new OMNI envelope and signature.

## Completion Condition
Handshake is complete when:
- intent and execution evidence remain strictly separated
- OMNI authority remains non-executable
