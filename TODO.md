# QTM_OS TODO (CURRENT)
Status: ACTIVE — hygiene + next-step gating

────────────────────────────────────────
A. HYGIENE (NOW)
────────────────────────────────────────
- [ ] Decide policy for release/ artifacts: commit vs ignore; enforce in .gitignore and docs.
- [ ] Reconcile freeze manifests: remove superseded copies OR document precedence (v0.01 vs v0.01a) without changing frozen content.

────────────────────────────────────────
B. TEST READINESS (NEXT)
────────────────────────────────────────
- [ ] Define one minimal OS test entrypoint (e.g., qtm probe) and its golden outputs.
- [ ] Add a single end-to-end dry-run path: CLI → OMNI witness → PLANCK routing (no execution).

────────────────────────────────────────
C. SURFACES (DEFERRED UNTIL TESTS PASS)
────────────────────────────────────────
- [ ] Planck Surface Manager text-only hub output (no UI).
- [ ] SPLASH surface only after probe baseline is locked.
