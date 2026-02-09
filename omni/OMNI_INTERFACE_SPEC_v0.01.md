# OMNI_INTERFACE_SPEC_v0.01
Version: v0.01
Status: AUTHORITATIVE — OMNI-only (above QTM OS freeze)

## Scope
This document defines OMNI’s public interface behavior at v0.01.

OMNI is an Operator Surface:
- captures explicit human intent (ACIE)
- produces signed intent artifacts
- seals evidence for offline verification
- DOES NOT execute
- DOES NOT infer
- DOES NOT orchestrate
- DOES NOT network silently

PLANCK is downstream and out of scope here.

## Non-Negotiable Constraints (MUST / MUST NOT)
OMNI MUST:
- require explicit operator declarations for all authority
- bind every decision to a canonical, hashable payload
- sign the canonical payload with an operator key
- emit append-only evidence artifacts that can be verified offline
- treat all targets as opaque references (no interpretation)

OMNI MUST NOT:
- execute any action (directly or indirectly)
- infer approvals, permissions, or intent
- auto-complete meaning without explicit operator acknowledgment
- silently contact networks or external services
- hold authority outside signed operator intent
- mutate execution evidence produced by other layers
- redefine kernel invariants or authority semantics
- introduce ranking, optimization, recommendation, or “social logic”

## Mental Model
OMNI produces: **Intent → Canonical Form → Hash → Signature → Evidence Bundle**

OMNI never produces: execution, enforcement, automation, or “smart decisions.”

## OMNI Outputs (Evidence Artifacts)
Minimum bundle artifacts:
- envelope.json           (canonical intent envelope)
- envelope.sha256         (hash of canonical bytes per CJSON rules)
- envelope.sig            (signature over envelope.sha256)
- manifest.json           (file list + digests; bundle integrity)
- attachments/            (optional; referenced by digest)

Evidence MUST remain valid even if OMNI UI is removed.

## Interface Actions (Abstract; Implementation-Agnostic)
OMNI exposes ONLY these action categories:

1) Draft Intent
- operator provides intent summary + explicit statements + target refs
- OMNI validates structure only (no inference)

2) Review Intent
- OMNI renders the exact text to be signed
- operator explicitly confirms the exact contents

3) Seal Intent
- OMNI canonicalizes the envelope (per CJSON_PROFILE_v0.01)
- OMNI computes sha256 over canonical bytes (signatures excluded for hashing)
- OMNI signs the resulting digest
- OMNI writes artifacts to an evidence bundle directory

4) Verify Bundle (Offline)
- recompute hash from canonicalized envelope
- verify signatures
- verify manifest + attachment digests
- output deterministic verification results

## Canonicalization Requirement (Delegated)
Canonical JSON rules are defined in:
- CJSON_PROFILE_v0.01.md

Witness record format is defined in:
- WITNESS_FORMAT_v0.01.md

## Integration Boundary Notes
- OMNI may name a target surface (e.g., “splash”) only as an opaque string.
- OMNI does not interpret the surface, resolve the reference, or execute anything.
- Any downstream execution is outside OMNI scope and must not feed back into OMNI authority.

## Completion Condition (for OMNI Interface Spec)
This spec is complete when:
- its MUST/MUST NOT constraints are unambiguous
- its artifact outputs are explicit
- it cannot be interpreted as permitting execution or inferred authority
