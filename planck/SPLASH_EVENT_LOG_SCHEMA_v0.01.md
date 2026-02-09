cat > planck/SPLASH_EVENT_LOG_SCHEMA_v0.01.md << 'EOF'
# 🔒 SPLASH_EVENT_LOG_SCHEMA_v0.01

**Status:** Authoritative  
**Version:** v0.01  
**Layer:** Surface-local (SPLASH only)  
**Scope:** Append-only SPLASH event records  
**Authority:** None (non-authoritative)

---

## 1. PURPOSE (LOCKED)

This schema defines the **surface-local event log** for SPLASH.

The SPLASH event log exists to:

- record human interactions with the SPLASH surface
- reference OMNI-sealed bundles without mutating them
- preserve a verifiable, append-only interaction history
- remain removable without corrupting OMNI or QTM OS history

---

## 2. CORE INVARIANTS (LOCKED)

- Events are **append-only**
- Events are **never edited or deleted**
- Corrections require a new event referencing the prior one
- Events are **surface-local** and **non-authoritative**
- No event may introduce authority, execution, or inference

---

## 3. EVENT ENVELOPE (REQUIRED)

Every SPLASH event MUST conform to this envelope:

```yaml
event_id: string            # unique, opaque
event_version: "v0.01"
event_type: string          # SPLASH.*
emitted_at: RFC3339 timestamp
surface_id: "SPLASH"
actor_id: string            # surface-local identity
omni_ref:
  bundle_id: string
  bundle_hash: string|null
verification:
  omni_verified: boolean
payload: object             # event-type specific

No additional top-level fields are permitted.

4. EVENT TYPES (v0.01 — CLOSED SET)

The following event types are allowed:

SPLASH.ACK_RECORDED

SPLASH.NOTE_ATTACHED

SPLASH.SEEN_MARKED

SPLASH.EVENT_SUPERSEDED

No other event types are valid in v0.01.

5. EVENT TYPE DEFINITIONS
5.1 SPLASH.ACK_RECORDED

Records an explicit acknowledgement action.

payload:
  ack_type: ACK_APPROVE | ACK_REJECT | ACK_REVIEW_REQUESTED | ACK_SEEN
  note: string|null

5.2 SPLASH.NOTE_ATTACHED

Records a surface-local note.

payload:
  note: string


5.3 SPLASH.SEEN_MARKED

Records explicit acknowledgement of viewing.

payload:
  viewed_at: RFC3339 timestamp


5.4 SPLASH.EVENT_SUPERSEDED

Records logical correction without mutation.

payload:
  supersedes_event_id: string
  reason: string


6. ORDERING & INTEGRITY (LOCKED)

Event order is determined by append sequence

Timestamps are informational, not authoritative

SPLASH may optionally hash events, but hashes carry no authority

7. STORAGE REQUIREMENTS

Local filesystem or append-only store

No in-place updates

Readable offline

Exportable as immutable artifacts

8. NON-GOALS (EXPLICIT)

This schema does NOT:

define execution

define authority

define policy

define scheduling

define OMNI witness formats

9. FREEZE NOTE

This schema freezes SPLASH surface-local event logging for v0.01.

Any extension requires a new version (v0.02+).

END — SPLASH_EVENT_LOG_SCHEMA_v0.01
EOF
