# QTM Golden Tests (v0.01)

STATUS: FROZEN  
LAYER: QTM OS  
AUTHORITY: Informational (Non-Authoritative)  
CHANGE POLICY: New version for changes

---

## Purpose

This directory contains **deterministic golden tests** for the QTM CLI v0.01.

Golden tests verify that CLI output remains:
- stable
- deterministic
- human-readable
- free of hidden state or background behavior

They do **not** validate correctness, readiness, or compliance.

---

## What Is a Golden Test?

A golden test compares current CLI output against a **frozen reference file**
(committed to the repository).

If the output differs, the test fails.

This ensures that:
- output changes are intentional
- CLI contracts do not drift silently
- behavior remains auditable

---

## Canonical Invocation

Golden tests MUST use the **repo-tracked wrapper**, not the system-installed binary:

```bash
./bin/qtm

This prevents node-level variation from affecting test results.

Covered Commands (v0.01)

Golden fixtures exist for:

qtm --help

qtm --spec

qtm inspect

qtm runtime

qtm surface

qtm --version (normalized)

Exit-code behavior is also tested:

unknown commands MUST exit with code 2

Normalization Rule (Version Output)

The output of:

qtm --version


includes a Build Reference stamped at install-time.

Because this value changes per install, the golden test normalizes the line:

Build Reference: git:<hash>


to:

Build Reference: git:<REDACTED>

Normalization is applied only in the test runner and only to this line.

No other output is masked.

Test Runner

All golden checks are executed via:

./tests/run_golden.sh


The runner:

diffs current output against frozen fixtures

fails fast on any mismatch

prints PASS/FAIL messages for human readability

Non-Goals

Golden tests MUST NOT:

infer authority

validate environment state

start services

require network access

depend on Planck, OMNI, or surfaces

They are output-stability checks only.

END OF FILE
