# OMNI CLI v0.01 — EXIT CODES (FROZEN)

This file defines the complete exit code contract for OMNI CLI v0.01.
Exit codes are machine-consumable and invariant.

---

## Exit Codes

- 0  → success
- 1  → generic error
- 2  → invalid input
- 3  → verification failure
- 4  → signature failure
- 5  → invariant violation

No other exit codes are permitted.

---

## Rules

- Exit code MUST match stdout.status
- status = "ok"    → exit 0
- status = "error" → exit non-zero
- No stderr prose
- Exit behavior is deterministic

---

## Invariants

- Exit codes are a contract
- Consumers may assert on exit code
- Frozen at v0.01
