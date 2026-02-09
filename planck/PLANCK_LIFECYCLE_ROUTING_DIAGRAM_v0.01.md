# PLANCK Surface Manager v0.01
## Lifecycle + Routing Diagram

Status: FROZEN / AUTHORITATIVE  
Version: v0.01

---

## 1. Lifecycle Model (STATIC)

Surfaces are immutable objects. PLANCK observes lifecycle state only.

States:
- declared
- listed
- routed
- removed

PLANCK does not cause state transitions.

---

## 2. Lifecycle Diagram

[ OMNI Bundle (Sealed) ]
           |
           v
   +------------------+
   |  Declared State  |
   +------------------+
           |
           v
   +------------------+
   |   Listed State   |  (indexed, grouped, labeled)
   +------------------+
           |
           v
   +------------------+
   |   Routed State   |  (user navigates to entrypoint)
   +------------------+
           |
           v
   +------------------+
   |  Removed State   |  (no longer listed)
   +------------------+

Notes:
- Removal does not affect witnesses
- No execution occurs at any stage

---

## 3. Routing Boundary

Routing is a one-way transfer of control.

PLANCK involvement ends at pointer exposure.

---

## 4. Routing Diagram

[ User ]
   |
   v
[ OMNI ]  (intent captured, signed, sealed)
   |
   v
[ PLANCK ]  (index, list, route only)
   |
   v
[ Surface: Splash ]
   |
   v
[ Surface Execution Environment ]  (outside PLANCK scope)

---

## 5. Boundary Assertions

PLANCK:
- does not execute
- does not remember
- does not receive callbacks
- does not observe outcomes

Surfaces:
- execute independently
- do not report back to PLANCK

---

## 6. Determinism

Given identical inputs:
- lifecycle representation is identical
- routing diagrams are static
- no temporal or environmental variance

---

## 7. Freeze Declaration

This diagram is frozen at v0.01.

Any modification requires version escalation to v0.02.

