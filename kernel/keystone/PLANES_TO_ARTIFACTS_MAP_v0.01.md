# PLANES_TO_ARTIFACTS_MAP_v0.01
Status: **Authoritative Mapping**
Spec Version: **v0.01**
Scope: Plane → concrete artifacts (files, hashes/CIDs) and minimum CLI command outputs that are witness-readable and deterministic.

## Norms and non-goals
- This document **maps** planes to artifacts. It does **not** redesign the system.
- **Execution is non-authoritative.** The witness plane defines truth; execution emits claims.
- Deterministic outputs: CLI results intended for witness consumption MUST follow `CLI_OUTPUT_SCHEMA_v0.01.json`.
- Time/host-dependent values (timestamps, wall-clock, hostname) MUST NOT affect any digest or verification decision. If present, they MUST be flagged as `non_deterministic_metadata`.

## Canonical digest and addressing (v0.01)
### Digest algorithm
- Canonical digest identifier: `sha256` (hex, lowercase).
- Canonical field name for digests: `digest`.
- Canonical object digest record:
  ```json
  {"alg":"sha256","digest":"<64-hex>"}
  ```

### Content addressing
- Primary: `sha256` digest of canonical bytes.
- Optional mirror: IPFS CID (recorded as an additional locator). A CID is a locator, not a truth source.

### Freeze boundary rule
- Anything designated “frozen” MUST be verifiable by digest (and optionally signature).
- “Frozen” means: **same bytes ⇒ same digest**, across machines.

---

## Plane 1 — Execution Plane (Power; No Authority)
**Question answered:** “Can this run?”  
**Trust posture:** ❌ none (execution can lie, drift, crash)

### Artifacts (typical paths)
- `surfaces/<surface_name>/...` — surface source tree (mutable by default)
- `bundles/*.irp` — sealed bundles (content-addressed)
- `runtime/` — operational notes/config (non-authoritative)

### Minimum claims emitted by execution
Execution outputs MUST be treated as **claims**, never as truth:
- `claim.json` (see: Claim/Listing primitive in witness docs)
- Claim references:
  - `bundle_digest` (digest of executed bundle bytes)
  - `intent_digest` (if intent plane is used)
  - `policy_digest` (policy version referenced at execution time; witness decides validity)
  - `inputs_digests[]` and `outputs_digests[]` where applicable

### CLI commands (minimum)
- `qtm bundle pack <dir> --out <bundle.irp>`
  - Outputs: `bundle.digest`, `bundle_manifest.digest`, `bundle_files[]`
- `qtm bundle run <bundle.irp> [--intent <intent.json>] [--policy <policy.json>]`
  - Outputs: `claim.digest` + locator to the claim (execution’s statement of what it did)

---

## Plane 2 — Witness Plane (Authority; No Power) — “Paper Kernel”
**Question answered:** “What counts as true, and did this satisfy invariants?”  
**Trust posture:** ✅ high (small, deterministic, auditable)

### Artifacts (must be frozen at v0.01)
- `QTM_BLACK_BOX_CONSTITUTION_v0.01.md` — invariants and non-negotiables
- `QTM_OS_FREEZE_MANIFEST_v0.01.md` — frozen files/dirs and verification method
- `BUNDLE_CONTRACT_v0.01.md` (or `SURFACE_CONTRACT_v0.01.md`) — exact bundle fields/files
- `CLAIM_LISTING_PRIMITIVE_DECLARATION_v0.01.md` — claim formats & semantics
- `CLI_OUTPUT_SCHEMA_v0.01.json` — deterministic CLI output schema

### Witness outputs (authoritative)
Witness MUST output verifiable statements:
- `verification_result.json` (schema’d)
- `reason_codes[]` (stable vocabulary, v0.01 set)
- `evidence[]` (digests of examined inputs)

### CLI commands (minimum)
- `qtm hash <file|dir>` → canonical digest record(s)
- `qtm sign <file|digest> --key <keyref>` → signature envelope
- `qtm verify <file|digest> --sig <sig>` → pass/fail + signer identity
- `qtm freeze verify <path>` → pass/fail + violations (against freeze manifest)
- `qtm witness verify-claim <claim.json> [--policy <policy.json>]` → pass/fail + reasons + evidence

### Freeze policy (practical)
A v0.01 “frozen set” should include at minimum:
- crypto primitives used for digest/sign/verify
- IRP/bundle spec + canonicalization rules
- witness verification rules + reason code vocabulary
- the CLI output schema itself

---

## Plane 3 — Intent Plane (Declared purpose; Input to witness; Not truth)
**Question answered:** “What was supposed to happen?”  
**Trust posture:** ⚠️ bounded (intent can be honest and still wrong)

### Artifacts (minimal; may be deferred)
- `intent/intent.<id>.json` — signed intent statement
- `intent/approvals/<id>.json` — optional multi-party approvals

### CLI commands (if enabled at v0.01)
- `qtm intent create --template <name> --out intent.json`
- `qtm sign intent.json`
- `qtm witness verify-intent intent.json`

### Required references
Claims SHOULD reference:
- `intent.digest` (so witness can bind execution to an intent snapshot)

---

## Plane 4 — Policy Plane (Constraints; Evaluated by witness)
**Question answered:** “Is this class of action permitted?”  
**Trust posture:** ⚠️ bounded (policy is authority input; witness evaluation is authority output)

### Artifacts
- `policy/policy.v0.01.json` — declarative constraints
- `policy/schemas/*.json` — schemas for policy + claim validation
- (optional) `policy/reason_codes.v0.01.json` — stable code list

### CLI commands
- `qtm policy lint policy.v0.01.json`
- `qtm witness eval --policy policy.v0.01.json --claim claim.json` → allow/deny + reasons

### Required references
Witness results MUST record:
- `policy.digest` used in evaluation

---

## Plane 5 — Memory / Archive Plane (Append-only; Replayable; Not truth alone)
**Question answered:** “What can be replayed and re-verified?”  
**Trust posture:** ⚠️ referential (truth derives from witness re-verification)

### Artifacts (suggested layout)
- `archive/claims/<YYYY-MM-DD>/<claim_digest>.json`
- `archive/witness/<YYYY-MM-DD>/<result_digest>.json`
- `archive/artifacts/<bundle_digest>.irp` (or locator list to IPFS CIDs)
- `snapshot/` (VM images, exports) with digests

### CLI commands
- `qtm archive add <file>` → returns digest + locator
- `qtm archive get <digest>`
- `qtm replay <claim_digest> [--policy <policy.json>]` → re-run witness verification using pinned inputs

### Replay rule (v0.01)
Replay MUST bind to:
- constitution digest
- contract digest(s)
- policy digest
- claim digest
…and produce a deterministic verification result.

---

## v0.01 Freeze vs Deferred (decision record)
### MUST be frozen at v0.01
1) Witness semantics + invariants (constitution + claim/listing declaration)  
2) Bundle/Surface contract (exact fields/files + canonicalization)  
3) Freeze manifest (what is frozen + how it is checked)  
4) Minimal witness-readable CLI outputs (`hash/sign/verify/freeze/witness verify-claim`)  
5) Archive addressing & replay rule (content addressing, pinned inputs)

### Safe to defer beyond v0.01
- Rich execution orchestration (schedulers, long-running agents, autonomy)
- Complex policy DSLs (start simple; avoid drift)
- Full intent UX (approval flows, UI)
- Operator “control planes” (high drift risk)
- Adaptive/learning loops that can mutate constraints automatically

---

## Required deterministic CLI output contract (pointer)
All commands that return structured output intended for witness consumption MUST emit JSON conforming to:
- `CLI_OUTPUT_SCHEMA_v0.01.json`
