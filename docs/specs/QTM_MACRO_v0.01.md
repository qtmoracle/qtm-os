# QTM_MACRO_v0.01

Status: FROZEN  
Scope: QTM OS  
Category: Macro / Declarative Presentation  
Authority: None

---

## PURPOSE

The QTM_MACRO_v0.01 defines a deterministic, non-authoritative macro that is displayed
**exactly once** on the **first invocation of QTM OS** on a host.

It serves as a symbolic boundary marker indicating entry into a QTM-constrained runtime.
It does not imply readiness, correctness, trust, or authority.

---

## CANONICAL OUTPUT (EXACT — DO NOT ALTER)

QQQQQQQQQQQ      TTTTTTTTTTTTTTTTTT     MMMM           MMMM
QQ         QQ            TTT            MMMMMM        MMMMM
QQ         QQ            TTT            MM  MMMM     MMMMMM
QQ         QQ            TTT            MM    MMMM MMMM  MM
QQ         QQ            TTT            MM      MMMM     MM
QQ   QQQ   QQ            TTT            MM               MM
QQ     Q   QQ            TTT            MM               MM
QQ      QQQQ             TTT            MM               MM
 QQQQQQQQQ QQ            TTT            MM               MM
            QQQ


---

## INVOCATION RULE (FROZEN)

The QTM_MACRO_v0.01 MUST be displayed:

- Exactly once
- On first invocation of QTM OS
- Only when no prior QTM invocation marker exists on the host

The macro MUST NOT be displayed:

- On subsequent boots
- On subsequent invocations
- On surface execution
- On timers, schedules, or retries
- Based on environment, user, or network state

---

## DEFINITION OF FIRST INVOCATION

“First invocation” is defined as the first successful initialization of the
QTM OS runtime on a host where no prior QTM invocation sentinel exists.

---

## REFERENCE IMPLEMENTATION (NON-AUTHORITATIVE)

A host-local sentinel MAY be used to enforce single invocation.

Example sentinel path:

/var/lib/qtm/.first_invocation_complete


Reference logic:

- If sentinel does not exist:
  - display QTM_MACRO_v0.01
  - create sentinel
- If sentinel exists:
  - do nothing

Constraints:

- No timestamps
- No network access
- No user identity checks
- No retries
- No partial display

---

## RESET POLICY

The macro MUST NOT reappear unless the sentinel is explicitly removed
by an operator.

Reinstallation alone does not imply reset.

---

## EXPLICIT NON-PROPERTIES

The macro:

- Does not indicate system readiness
- Does not indicate approval or denial
- Does not indicate authority
- Does not indicate version negotiation
- Does not block execution

It is presentation only.

---

## ARCHITECTURAL PLACEMENT

The macro belongs to:

- QTM OS runtime

The macro MUST NOT be implemented in:

- Planck
- OMNI
- Any Surface
- Bootloader
- initramfs
- Login banners
- Display managers

---

## CHANGE POLICY

Any change to glyphs, spacing, invocation timing, or behavior
requires a new version (v0.02+).

No silent edits.
EOF

