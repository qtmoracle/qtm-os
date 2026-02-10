# SPLASH_EVENT_LOG_SCHEMA (DRAFT)

**Status:** Draft (non-authoritative)  
**Layer:** Surface-local (SPLASH only)  
**Scope:** Append-only SPLASH event records  
**Authority:** None (non-authoritative)

---

## 1. PURPOSE

This schema defines the **surface-local event log** for SPLASH.

The SPLASH event log exists to:

- record human interactions with the SPLASH surface
- reference OMNI-sealed bundles without mutating them
- preserve a verifiable, append-only interaction history
- remain removable without corrupting OMNI or QTM OS history

---

## 2. CORE INVARIANTS

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
```

No additional top-level fields are permitted.

---

## 4. EVENT TYPES (DRAFT — CLOSED SET FOR THIS DRAFT)

The following event types are allowed:

- `SPLASH.ACK_RECORDED`
- `SPLASH.NOTE_ATTACHED`
- `SPLASH.SEEN_MARKED`
- `SPLASH.EVENT_SUPERSEDED`

No other event types are valid in this draft.

---

## 5. EVENT TYPE DEFINITIONS

### 5.1 `SPLASH.ACK_RECORDED`

Records an explicit acknowledgement action.

```yaml
payload:
  ack_type: ACK_APPROVE | ACK_REJECT | ACK_REVIEW_REQUESTED
  note: string|null
```

---

### 5.2 `SPLASH.NOTE_ATTACHED`

Records a surface-local note.

```yaml
payload:
  note: string
```

---

### 5.3 `SPLASH.SEEN_MARKED`

Records explicit acknowledgement of viewing.

```yaml
payload:
  viewed_at: RFC3339 timestamp
```

---

### 5.4 `SPLASH.EVENT_SUPERSEDED`

Records logical correction without mutation.

```yaml
payload:
  supersedes_event_id: string
  reason: string
```

---

## 6. ACTION → EVENT MAPPING (CANONICAL)

Each SPLASH action emits **exactly one** SPLASH event.

| Action                 | Emitted Event          | Payload Notes |
|------------------------|------------------------|---------------|
| `ACK_APPROVE`          | `SPLASH.ACK_RECORDED`  | `ack_type=ACK_APPROVE`, `note=null|string` |
| `ACK_REJECT`           | `SPLASH.ACK_RECORDED`  | `ack_type=ACK_REJECT`, `note=null|string` |
| `ACK_REVIEW_REQUESTED` | `SPLASH.ACK_RECORDED`  | `ack_type=ACK_REVIEW_REQUESTED`, `note=null|string` |
| `ACK_SEEN`             | `SPLASH.SEEN_MARKED`   | `viewed_at=RFC3339 timestamp` |
| `ACK_NOTE`             | `SPLASH.NOTE_ATTACHED` | `note=string (required)` |

**Clarification:**
- `ACK_NOTE` is **not** an `ack_type` within `SPLASH.ACK_RECORDED`.

---

## 7. ORDERING & INTEGRITY

Event order is determined by append sequence.

Timestamps are informational, not authoritative.

SPLASH may optionally hash events, but hashes carry no authority.

---

## 8. STORAGE REQUIREMENTS

Local filesystem or append-only store

No in-place updates

Readable offline

Exportable as immutable artifacts

---

## 9. NON-GOALS

This schema does NOT:

define execution  
define authority  
define policy enforcement  
define scheduling  
define OMNI witness formats  

END — SPLASH_EVENT_LOG_SCHEMA (DRAFT)
