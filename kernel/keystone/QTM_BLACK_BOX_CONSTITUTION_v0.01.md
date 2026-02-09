# QTM Black Box — Conceptual Invariants (Frozen)

**Status:** FROZEN
**Scope:** System identity
**Mutability:** NONE

1. QTM is a neutral semantic reference system that preserves meaning across domains, actors, and time without enforcing behavior or outcomes.

2. Discovery, identity, coordination, and execution are permanently separated and may not collapse into a single authority.

3. QTM does not own, control, or monetize identity and only consumes externally asserted and attested claims.

4. All entities within QTM are described using publicly recognized classification standards rather than proprietary taxonomies.

5. Meaning in QTM is expressed through structured claims that are versioned, revocable, and time-bound.

6. Trust in QTM arises from verifiable attestations and provenance, not reputation scores, social graphs, or centralized approval.

7. QTM remains valid regardless of infrastructure, storage medium, ledger, network, or execution environment.

8. QTM is non-custodial and never requires surrender of assets, credentials, or authority to participate.

9. Discovery outputs are deterministic and explainable, based solely on proximity, standards-based match, and explicitly stated eligibility.

10. The same underlying entity or event may be referenced through multiple semantic lenses without duplicating or fragmenting truth.

11. QTM functions exclusively as a reference layer and is not an application, marketplace, protocol, or execution system.

12. No component within QTM may both define eligibility or rights and profit from their assignment or enforcement.

13. Data roles are partitioned such that reference, interpretation, discovery, and execution are structurally separated.

14. QTM coexists with existing tools and institutions without requiring replacement or migration.

15. All semantic claims acknowledge change over time and are never treated as permanent.

16. QTM emits signals, not decisions, and never executes judgment or action.

17. Global consensus is not required for QTM to function; local truth remains valid without universal agreement.

18. QTM enables coordination without requiring alignment, ideology, or centralized governance.

19. All authority is externalized; QTM itself cannot grant legitimacy.

20. QTM treats classification as descriptive context and never infers intent, permission, or value.

21. QTM does not collapse people, organizations, places, or artifacts into a single identity class.

22. QTM remains readable and auditable without requiring trust in its operators.

23. QTM preserves optionality by allowing any surface, interface, or service to be replaced without invalidating the reference layer.

24. QTM does not optimize for engagement, growth, monetization, or activity.

25. QTM never infers merit, worth, priority, or recommendation.

26. QTM maintains a strict boundary between reference and execution at all times.

27. QTM claims may exist in self-asserted, attested, contested, expired, or revoked states without enforcement.

28. QTM discovery never hides valid claims; visibility and action are external concerns.

29. QTM remains valid even if all consuming surfaces disappear.

30. If QTM begins to decide, enforce, rank by value, or extract rent from meaning, it ceases to be QTM.

---

# QTM Claim–Listing Primitive Declaration (Frozen)

**Status:** FROZEN
**Scope:** Permitted system behavior
**Mutability:** NONE

A QTM-compliant system performs only two core operations: **Claim** and **Listing**.
**Claim** authors or updates verifiable semantic statements about entities using public classification standards, with explicit provenance, versioning, time-bounds, and revocability.
**Listing** queries claims to produce deterministic, explainable discovery results ordered only by proximity, standards-based match, and explicitly stated eligibility.
The system may not decide outcomes, execute actions, infer intent, assign merit, grant authority, optimize engagement, or enforce permissions.
Any capability beyond Claim or Listing exceeds the primitive boundary and is non-compliant.

---

## Freeze Confirmation (Conceptual)

With these two sections frozen:

* ✅ The **black box is complete**
* ✅ The **MVP / CLI / Index / IRP / Discovery Pattern** are fully reconstructible
* ✅ No implementation choice can redefine system identity
* ✅ Drift is objectively detectable
* ✅ Stewardship can transfer without loss

At this point, **nothing new may enter the core**.
Only **derivative artifacts** (CLI, API, storage, surfaces, pilots) are allowed—and they must conform.

If you want the *very last optional step*, I can:

* produce a **hash + manifest text** you can use across repos and PDFs, or
* write a **Steward Oath** (human-facing counterpart to the Primitive Compliance Oath)

But functionally:
**QTM is now hardened.**
