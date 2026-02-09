# OMNI_SIGNING_FLOW_v0.01
Version: v0.01
Status: AUTHORITATIVE — FREEZE-LOCKED (OMNI-only)

## Purpose
Define the mechanical, witness-first process by which OMNI converts
explicit human intent into signed, offline-verifiable evidence.

This flow captures authority.
It does NOT execute.
It does NOT infer.

## Canonical Signing Rule
All signatures are computed over a canonical hash of the intent envelope.
During hash computation:
- the `signatures` field MUST be present and set to an empty array (`[]`)
- canonicalization rules are defined in CJSON_PROFILE_v0.01

## Signing Flow (Mechanical)

### Step 1 — Draft
- Operator provides:
  - intent summary
  - explicit intent statements
  - target references
  - required constraints
- OMNI validates structure only (no semantic inference)

### Step 2 — Review
- OMNI renders the exact envelope content to be signed
- Operator explicitly confirms:
  “I approve the exact text and targets shown above.”

### Step 3 — Canonicalize
- OMNI canonicalizes the envelope per CJSON_PROFILE_v0.01
- `signatures` field is set to `[]` for hashing

### Step 4 — Hash
- OMNI computes:
  sha256(canonical_envelope_bytes)
- Result is stored as `hashes.canonical_sha256`

### Step 5 — Sign
- Operator signs `hashes.canonical_sha256`
- Signature metadata is appended to `signatures[]`
- No other fields may change after this point

### Step 6 — Seal
- Envelope is considered immutable
- Any change requires a new envelope and new signature

### Step 7 — Emit Evidence Bundle
OMNI writes:
- envelope.json
- envelope.sha256
- envelope.sig (or embedded signatures)
- manifest.json
- attachments/ (optional)

## Verification (Offline)
Verification MUST:
- recompute canonical hash with `signatures=[]`
- match `hashes.canonical_sha256`
- validate signature(s)
- validate attachment digests

Verification MUST NOT:
- require network access
- depend on wall-clock time

## Completion Condition
This signing flow is complete when:
- identical input produces identical hashes
- signatures bind meaning immutably
- authority remains explicit and non-executable
