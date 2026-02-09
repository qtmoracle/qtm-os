# 📘 QTM MASTER CONSOLIDATION DOCUMENT

**Version:** v0.01
**Status:** Authoritative Consolidation
**Purpose:** Single-source knowledge transfer artifact for QTM OS / OMNI / PLANCK / Surfaces / ECO Runtime
**Method:** Lossless extraction + normalization (no redesign)

---

## 0. CONSOLIDATION GUARANTEES

This document guarantees:

* No semantic drift from source threads
* No loss of frozen decisions or invariants
* No collapse of layers (OS ≠ Operator ≠ Surface ≠ Domain)
* Explicit preservation of name changes and deferred items
* Clear mapping of artifacts to repos / locations

This is **not a roadmap**.
This is **not a proposal**.
This is **the ledger of what already exists**.

---

## 1. CANONICAL SYSTEM OVERVIEW

### 1.1 The Five Layers (Authoritative)

1. **QTM OS**
   The sealed, OS-agnostic authority and meaning substrate.

2. **OMNI (Operator)**
   The explicit human authority interface. Captures intent. Signs decisions.

3. **PLANCK (Surface Manager)**
   Mechanical surface lifecycle manager. No authority. No meaning.

4. **Surfaces**
   Replaceable, unplug-safe, Planck-managed use-case layers (Splash, Directory, WhatsApp, Probsolvio, OPSEC, etc.).

5. **ECO Runtime**
   The lived execution environment formed by the interaction of the above layers.

---

## 2. CORE INVARIANTS (FROZEN)

These invariants are **non-negotiable** and recur across all threads.

### 2.1 Authority & Meaning

* Authority is **explicit**, **human-declared**, and **non-executable**
* Meaning must never emerge implicitly from execution or agents
* Authority never lives in:

  * agents
  * surfaces
  * Planck
  * domains

### 2.2 Dual-Channel Model

* **Intent / Authority Channel** ≠ **Execution / Witness Channel**
* Execution may not define intent
* Witnessing may not grant authority
* Corrections occur only as new records (append-only)

### 2.3 Determinism & Verifiability

* Offline verification is mandatory
* Hash-first, signature-first model
* No silent networking
* All significant actions produce evidence (even failures)

### 2.4 Immutability & Unplug Safety

* QTM OS v0.01 is sealed
* Surface bundles are immutable
* Any surface may be removed without corrupting truth or authority

---

## 3. LAYER DEFINITIONS (WHAT IT IS / IS NOT)

### 3.1 QTM OS (SEALED)

**Is**

* Explicit Authority OS
* Semantic Armor enforcement layer
* Witness-first coordination kernel
* OS-agnostic “paper kernel”

**Is Not**

* A Linux distro
* A UI
* A surface
* A workflow engine
* An agent system
* A marketplace
* A ranking or enforcement engine

---

### 3.2 OMNI (Operator)

**Is**

* Operator surface capturing explicit human intent
* Approval / denial / delegation interface
* Producer of signed Decision Records
* Half of the dual-channel system by design

**Is Not**

* An executor
* An agent
* Autonomous
* Inferential
* A policy oracle
* A scheduler
* A recommender

**Rename Preserved**

* OPERA → OMNI
  *Reason:* Trademark avoidance
  *Meaning preserved:* Yes (operator semantics unchanged)

---

### 3.3 PLANCK (Surface Manager)

**Is**

* Surface lifecycle manager (install / enable / disable / route)
* Execution router for bounded agents
* UX host for surfaces

**Is Not**

* An OS
* An authority layer
* A decision system
* A meaning interpreter
* An optimizer

**Clarification Preserved**

* “Planck OS” → **Planck (Surface Manager)**
  *Reason:* Restore authority ownership to QTM OS
  *Meaning preserved:* Yes

---

### 3.4 Surfaces

**Are**

* Replaceable UX / workflow layers
* Domain-specific
* Planck-managed
* Unplug-safe

**Are Not**

* Core OS components
* Authority holders
* Canonical meaning
* Permanent infrastructure

**Examples**

* Splash (Ops / Workforce)
* Directory
* WhatsApp (approval channel)
* Probsolvio (reasoning surface)
* OPSEC
* Academic / Research surfaces

---

### 3.5 ECO Runtime

**Is**

* The combined execution environment formed by:

  * QTM OS
  * OMNI
  * Planck
  * Surfaces
* A runtime *condition*, not a product

**Is Not**

* A monolith
* A blockchain synonym
* A feature surface

---

## 4. WITNESSING & EVIDENCE

### 4.1 Witness Packs

* Cryptographic evidence bundles
* Bind intent → execution → outcome
* Append-only
* Verifiable offline
* Produced on success **and** failure

### 4.2 Decision Records

* Signed OMNI artifacts
* Capture allow / deny decisions
* Do **not** claim correctness
* Do **not** execute

---

## 5. DOMAINS (STRICTLY NON-EXECUTABLE)

**Domains Are**

* Semantic anchors
* Durable identifiers
* Above surfaces

**Domains Are Not**

* Apps
* Surfaces
* Execution environments
* Authority holders
* Ranking mechanisms

**Invariant**

> Domains must outlive software.

---

## 6. SURFACE-LEVEL DEFINITIONS

### 6.1 Splash

* Ops / Workforce white-label surface
* Not a multi-agent workspace
* Not a runtime
* Branding mutable, semantics fixed

### 6.2 Directory

* Infra-grade surface
* Canonical index of “what exists and where”
* Not a marketplace
* Not social
* Not ranked

### 6.3 WhatsApp

* Notification + approval capture surface
* No logic
* No scheduling
* No decision authority

### 6.4 Probsolvio

* Analytical / reasoning surface
* A “lens,” not an authority
* May exist as:

  * Department
  * Standalone building
* Decision unresolved (deferred)

### 6.5 OPSEC

* Defensive posture snapshot surface
* No network
* No targeting
* No inference
* No decision-making

---

## 7. ROLES & PERSONAS

| Role           | Scope    | Authority               |
| -------------- | -------- | ----------------------- |
| Human Operator | External | Yes                     |
| OMNI           | Surface  | No (captures authority) |
| Planck         | Runtime  | No                      |
| Agent / Fixie  | Surface  | No                      |
| Director       | Ops      | Yes                     |
| Employee       | Ops      | No                      |
| Helper Agent   | Surface  | No                      |

---

## 8. GOVERNANCE & SAFETY (FROZEN DOCTRINES)

* Explicit Authority Computing (EAC)
* Semantic Armor
* Automation Governance Charter
* Automation Kill-Switch Doctrine
* Board-Level Oversight Memo
* Safe Agent Usage Training

**Key Rule**

> Automation must never become indispensable to authority.

---

## 9. BUILD ORDER (FROZEN)

1. QTM OS v0.01 (sealed)
2. OMNI v0.01
3. Splash Surface
4. WhatsApp Surface
5. Additional surfaces (Directory, Probsolvio, Academic, etc.)

No deviation permitted without new version + new freeze.

---

## 10. DEFERRED / PARKED ITEMS (INTENTIONAL)

* OMNI UI implementation
* OMNI binaries
* Networking
* Multi-agent workspaces (“vehicles”)
* Advanced scheduling
* CRM / remarketing
* Economic binding (escrow, fees)
* Social mechanics
* Institutional / jurisdictional surfaces

Deferred ≠ forgotten.
Deferred ≠ approved.

---

## 11. OPEN QUESTIONS (UNRESOLVED BY DESIGN)

* OMNI key storage implementation
* Witness pack internal chaining method
* Probsolvio standalone vs department
* Directory v1 schema details
* Multi-surface domain bindings (future)

No answers provided here.

---

## 12. ARTIFACT INDEX (DECLARED)

### Core / OS

* `QTM_OS_FREEZE_MANIFEST_v0.01.md`
* `SEMANTIC_ARMOR.md`
* `EXPLICIT_AUTHORITY_COMPUTING.md`

### OMNI

* `OMNI_OPERATOR_CONTRACT_v0.01.md`
* `OMNI_SURFACE_CONTRACT_v0.01.md`
* `OMNI_INVARIANTS_v0.01.md`
* `KEY_HIERARCHY.md`
* `WITNESS_PACK_PROFILE_v0.01.md`

### PLANCK

* `PLANCK_SURFACE_MANAGER_FLOW_v0.1.md`

### Surfaces

* `SPLASH_SURFACE_SPEC.md`
* `OPSEC_SURFACE_v0.1.md`
* `DIRECTORY_SURFACE_SPEC.md` (in progress)

### Governance / Training

* `AUTOMATION_GOVERNANCE_CHARTER.md`
* `KILL_SWITCH_DOCTRINE.md`
* `HUMANS_USING_AGENTS_SAFELY.md`

---

## 13. CONSOLIDATION STATUS

✔ All known threads consolidated
✔ All freezes preserved
✔ All renames ledgered
✔ Deferred items explicitly marked
✔ No unresolved drift

---

### 🔒 DECLARATION

This document represents the **canonical consolidated state** of the QTM system as of **v0.01**.

Any change beyond this point requires:

* a new version
* a new freeze
* an explicit scope declaration

---

