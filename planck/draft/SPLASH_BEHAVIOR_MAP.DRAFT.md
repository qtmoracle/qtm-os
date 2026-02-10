# SPLASH_BEHAVIOR_MAP (DRAFT)

**Status:** Draft (non-authoritative)  
**Scope:** SPLASH surface behavior semantics (actions → events)  
**Authority:** None

---

## 1. PURPOSE

This document defines a **deterministic, surface-local mapping** from SPLASH
approval actions to SPLASH events.

It exists to provide a **single canonical behavior summary within drafts**
and to eliminate ambiguity while SPLASH semantics are iterated.

---

## 2. DETERMINISM INVARIANT (DRAFT)

- Each SPLASH action emits **exactly one** SPLASH event.
- No action emits multiple events.
- No event is emitted without a corresponding action.
- No background, inferred, or implicit emissions exist.

This invariant is draft-scoped and non-authoritative.

---

## 3. ACTION SET (INPUTS)

The SPLASH approval action set is:

- `ACK_APPROVE`
- `ACK_REJECT`
- `ACK_REVIEW_REQUESTED`
- `ACK_SEEN`
- `ACK_NOTE`

No other approval actions are defined in this draft.

---

## 4. EVENT SET (OUTPUTS)

The SPLASH event set is:

- `SPLASH.ACK_RECORDED`
- `SPLASH.NOTE_ATTACHED`
- `SPLASH.SEEN_MARKED`
- `SPLASH.EVENT_SUPERSEDED`

No other event types are defined in this draft.

Event envelope and payload rules are defined in:
- `SPLASH_EVENT_LOG_SCHEMA.DRAFT.md`

Concrete examples are defined in:
- `SPLASH_EVENT_LOG_EXAMPLES.DRAFT.md`

---

## 5. ACTION → EVENT MAPPING (CANONICAL)

| Action                   | Emitted Event             | Payload Notes |
|--------------------------|---------------------------|---------------|
| `ACK_APPROVE`            | `SPLASH.ACK_RECORDED`     | `ack_type=ACK_APPROVE`, `note=null|string` |
| `ACK_REJECT`             | `SPLASH.ACK_RECORDED`     | `ack_type=ACK_REJECT`, `note=null|string` |
| `ACK_REVIEW_REQUESTED`   | `SPLASH.ACK_RECORDED`     | `ack_type=ACK_REVIEW_REQUESTED`, `note=null|string` |
| `ACK_SEEN`               | `SPLASH.SEEN_MARKED`      | `viewed_at=RFC3339 timestamp` |
| `ACK_NOTE`               | `SPLASH.NOTE_ATTACHED`    | `note=string (required)` |

---

## 6. CLARIFICATIONS

- `ACK_NOTE` is **not** an `ack_type` within `SPLASH.ACK_RECORDED`.
- `ACK_SEEN` does **not** emit `SPLASH.ACK_RECORDED`.
- All SPLASH events are **surface-local signals only** and grant no authority.
- Supersession logic, if any, must be explicit and event-driven.

---

**END — SPLASH_BEHAVIOR_MAP (DRAFT)**
