# Surface Invocation Contract v0.01
## Splash (Planck → Surface Boundary)

Status: FROZEN / AUTHORITATIVE  
Version: v0.01

---

## 1. Purpose

This contract defines the static, non-executing boundary by which PLANCK
routes a user to the Splash surface.

PLANCK does not execute, load, or invoke Splash.
PLANCK only exposes declared entrypoints.

---

## 2. Contract Scope

This contract governs:
- how Splash declares itself to PLANCK
- how PLANCK exposes Splash entrypoints
- what PLANCK may and may not do at invocation time

---

## 3. Surface Declaration (Input to PLANCK)

Splash MUST declare a sealed descriptor containing:

- surface.id
- surface.name
- surface.version
- surface.entrypoints[]
- surface.metadata (static)
- witness.references[]

All fields are consumed verbatim.
PLANCK MUST NOT modify, enrich, or interpret these fields.

---

## 4. Entry Point Model

Each entrypoint is treated as:

- opaque
- immutable
- addressable

PLANCK SHALL:
- display entrypoints
- route users to entrypoints

PLANCK SHALL NOT:
- execute entrypoints
- validate intent
- inspect parameters
- inject context

---

## 5. Invocation Semantics

Invocation is defined as:

- presenting a link, pointer, or reference
- transferring control away from PLANCK

PLANCK involvement ends at routing.

No callbacks, state retention, or follow-on actions are permitted.

---

## 6. Witness Handling

PLANCK MAY:
- expose witness references
- link to witness artifacts (read-only)

PLANCK SHALL NOT:
- generate witnesses
- mutate witnesses
- append to witness logs

---

## 7. Error Conditions

PLANCK MAY emit static errors only for:

- missing surface descriptors
- malformed descriptor structure

No retries, fallbacks, or inference logic is allowed.

---

## 8. Determinism

Given identical Splash descriptors, PLANCK output MUST be deterministic.

No timestamps, ordering variance, or environment-dependent output is permitted.

---

## 9. Prohibited Behaviors (Explicit)

PLANCK MUST NOT:
- synthesize invocation flows
- fork or branch intent
- remember invocation history
- apply policy or authorization
- evaluate success or failure

---

## 10. Freeze Declaration

This contract is frozen at v0.01.

Any change requires explicit version escalation to v0.02.

