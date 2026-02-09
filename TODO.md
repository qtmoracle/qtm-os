# QTM_OS Directory Organization TODO (v0.01)
Status: PRE-WRITING / STRUCTURE + PLACEMENT

────────────────────────────────────────
A. BASELINE DIRECTORIES
────────────────────────────────────────
- [ ] Create kernel/
- [ ] Create omni/
- [ ] Create omni/examples/
- [ ] Create planck/
- [ ] Create contracts/
- [ ] Create docs/ADR/

────────────────────────────────────────
B. KERNEL / QTM OS (Truth + ARA)
────────────────────────────────────────
- [ ] Add kernel/PLAY_ECO_RUNTIME_v0.01.md
- [ ] Add kernel/BLACK_BOX_CONSTITUTION_v0.01.md
- [ ] Add kernel/QTM_WITNESS_MODEL_v0.01.md
      - Defines ARA semantics and what counts as proof
- [ ] (Optional) kernel/diagrams/BOUNDARIES_v0.01.(txt|svg)

────────────────────────────────────────
C. OMNI (Witness + ACIE)
────────────────────────────────────────
- [ ] Add omni/README.md
      - Must state: OMNI implements ACIE
- [ ] Add omni/OMNI_OPERATOR_CONTRACT_v0.01.md
      - Human intent capture (ACIE)
- [ ] Add omni/OMNI_INVARIANTS_v0.01.md
      - ACIE hard boundaries
- [ ] Add omni/OMNI_EXEC_WITNESS_HANDSHAKE_v0.01.md
      - Intent → execution boundary
- [ ] Add omni/WITNESS_FORMAT_v0.01.md
- [ ] Add omni/CJSON_PROFILE_v0.01.md
- [ ] Add omni/examples/surface.install.v0.01.json

────────────────────────────────────────
D. PLANCK (Execution Only)
────────────────────────────────────────
- [ ] Add planck/README.md
- [ ] Add planck/REQUIREMENTS.md
      - Derived strictly from witness contracts

────────────────────────────────────────
E. CONTRACTS (Authoritative Interfaces)
────────────────────────────────────────
- [ ] Add contracts/CLI_TO_WITNESS_MAPPING_v0.01.md
- [ ] Add contracts/CONTRACTS.lock
      - Hashes of authoritative contracts

────────────────────────────────────────
F. ARCHITECTURE DECISIONS
────────────────────────────────────────
- [ ] Add docs/ADR/ADR_0001_CLI_REPO_PLACEMENT.md

────────────────────────────────────────
G. CLI REPO (Vendoring, not authored here)
────────────────────────────────────────
- [ ] Vendor CLI_TO_WITNESS_MAPPING_v0.01.md into qtm-cli/contracts/
- [ ] Maintain qtm-cli/contracts/CONTRACTS.lock
