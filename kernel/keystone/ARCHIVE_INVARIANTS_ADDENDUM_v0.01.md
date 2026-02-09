# ARCHIVE_INVARIANTS_ADDENDUM_v0.01
Status: **Constitutional Addendum**
Applies to: QTM Black Box Constitution v0.01
Scope: Archive / Memory Plane invariants

## Purpose
This addendum constrains the Archive (Memory Plane) to prevent unbounded growth, authority drift, or retroactive truth mutation.
The Archive preserves evidence; **it does not define truth**.

## Invariant A1 — Witness Primacy
Only the Witness Plane may issue authoritative verification results.
Archive contents are inputs to replay, never truth by themselves.

## Invariant A2 — Pointer-First Storage
The Archive MUST prefer content digests and locators over raw payload storage.
Large payloads MUST NOT be stored unless explicitly pinned.

## Invariant A3 — Tiered Retention
Tier A (Permanent): witness results, claim headers
Tier B (TTL): full claims, execution logs
Tier C (Off by default): snapshots, large binaries

Deletion of Tier B or Tier C artifacts MUST NOT invalidate witness results.

## Invariant A4 — Retention Policy Binding
All garbage collection MUST execute against a versioned retention policy.
GC results MUST record the policy digest used.
GC MUST be deterministic.

## Invariant A5 — Pin Supremacy
Pinned artifacts MUST NOT be deleted by GC.
Pin/unpin operations are explicit operator actions and logged as claims.

## Invariant A6 — Replay Safety
Replay binds to constitution, contract, policy, and claim digests.
Replay failure due to missing payloads MUST be explicit and non-fatal.

## Invariant A7 — Size & Ingest Caps
The Archive MUST enforce maximum local size and daily ingest caps.
Cap breach MUST fail safely (reject ingest).

## Invariant A8 — Deterministic Reporting
archive.status and archive.gc outputs MUST be deterministic.
Non-deterministic metadata MUST NOT affect verification.

## Constitutional Note
Loss of archived payloads does not erase truth.
Truth lives in witness verification bound to immutable digests.
