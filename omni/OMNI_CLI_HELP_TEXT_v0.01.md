# OMNI CLI v0.01 — HELP TEXT (FROZEN)

This file defines the exact help output for OMNI CLI v0.01.
Help text is static and non-interactive.

---

## Usage

omni <command> [options]

---

## Commands

- draft   Create an unsigned intent envelope
- review  Canonicalize and display an intent
- seal    Hash and sign an intent, emit witness
- verify  Verify a sealed OMNI bundle offline
- export  Emit filesystem bundle verbatim

---

## Global Options

- --input <file>   Read input from file (otherwise stdin)
- --help           Display this help text

---

## Rules

- Help output is deterministic
- No dynamic data
- No environment inspection
- No additional commands permitted

---

## Invariants

- Help text is a contract
- Frozen at v0.01
