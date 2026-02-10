# SURFACE INVOCATION CONTRACT — v0.01a

Status: DRAFT (extension layer)
Scope: Declarative, non-executing
Authority: PLANCK only

────────────────────────────────────────
1. PURPOSE
────────────────────────────────────────

This document defines the invocation semantics for QTM OS surfaces.

It specifies:
- what it means to "invoke" a surface
- what information may be exposed
- what actions are explicitly forbidden

This contract is declarative only.
It does not authorize execution, loading, validation, ranking, or UI.

────────────────────────────────────────
2. DEFINITION: SURFACE INVOCATION
────────────────────────────────────────

A surface invocation is a request to describe a surface.

Invocation results in:
- name
- version
- declared capabilities
- declared roles
- declared artifacts

Invocation does NOT:
- start a surface
- load code
- execute logic
- invoke OMNI
- modify state

────────────────────────────────────────
3. INVOCATION BOUNDARY
────────────────────────────────────────

Surface invocation is:
- read-only
- filesystem-backed
- deterministic
- side-effect free

PLANCK may only read:
- <SURFACE>_SPEC_v*.md
- <SURFACE>_FREEZE_MANIFEST_v*.md

No other files may be accessed.

────────────────────────────────────────
4. FORBIDDEN ACTIONS
────────────────────────────────────────

During invocation, the following are forbidden:
- execution of binaries or scripts
- dynamic imports
- network access
- OMNI calls
- mutation of files
- runtime allocation
- background processes

Any of the above is a hard violation.

────────────────────────────────────────
5. VERSION DISCIPLINE
────────────────────────────────────────

This contract applies to v0.01a only.

Any change to invocation semantics requires:
- a new contract version
- updated golden tests
- explicit freeze documentation
