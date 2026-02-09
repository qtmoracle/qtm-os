# OMNI CLI v0.01 — FREEZE MANIFEST (AUTHORITATIVE)

This manifest enumerates all frozen artifacts required for OMNI CLI v0.01.
Presence and content of these files define completeness.
No additional files are permitted for v0.01.

---

## Specification Artifacts

- OMNI_INTERFACE_SPEC_v0.01.md
- OMNI_SIGNING_FLOW_v0.01.md
- OMNI_OPERATOR_CONTRACT_v0.01.md
- OMNI_INVARIANTS_v0.01.md
- OMNI_EXEC_WITNESS_HANDSHAKE_v0.01.md
- WITNESS_FORMAT_v0.01.md
- CJSON_PROFILE_v0.01.md

---

## CLI Contract Artifacts

- OMNI_CLI_COMMAND_MAP_v0.01.md
- OMNI_CLI_FILESYSTEM_LAYOUT_v0.01.md
- OMNI_CLI_STDOUT_CONTRACT_v0.01.md
- OMNI_CLI_EXIT_CODES_v0.01.md
- OMNI_CLI_HELP_TEXT_v0.01.md
- OMNI_CLI_README_v0.01.md

---

## Examples

- examples/surface.install.v0.01.json

---

## Invariants

- All files are read-only after freeze
- No semantic additions permitted
- CLI behavior must conform exactly to these artifacts
- Any change requires v0.02

---

## Freeze Status

Status: FROZEN  
Version: v0.01  
Scope: OMNI CLI only
