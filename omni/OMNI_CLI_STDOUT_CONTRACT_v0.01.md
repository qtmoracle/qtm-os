# OMNI CLI v0.01 — STDOUT CONTRACT (FROZEN)

This file defines the stdout contract for all OMNI CLI v0.01 commands.
Stdout is authoritative and machine-consumable.
No human-oriented formatting is permitted.

---

## Global Rules

- Stdout MUST be valid JSON
- Stdout MUST be deterministic
- Field order MUST be stable
- No timestamps
- No environment data
- No coloring, prefixes, or banners
- Errors are JSON, not stderr prose

---

## Common Envelope

All stdout outputs contain exactly:

- version
- command
- status
- payload

No additional top-level fields are allowed.

---

## Status Values

- "ok"
- "error"

No other values are permitted.

---

## Command Payload Mapping

- omni draft   → payload.intent
- omni review  → payload.intent
- omni seal    → payload.witness
- omni verify  → payload.verdict, payload.hashes
- omni export  → payload.manifest

---

## Error Output

On error:

- status = "error"
- payload.error_code
- payload.error_message

No stack traces.
No side-channel output.

---

## Invariants

- Stdout is a contract
- Consumers may hash stdout
- Any deviation is a breaking change
- Frozen at v0.01
