# 🔒 SPLASH_EVENT_LOG_EXAMPLES_v0.01

**Status:** Authoritative Examples  
**Version:** v0.01  
**Layer:** Surface-local (SPLASH only)  
**Purpose:** Concrete examples of valid SPLASH v0.01 events  
**Note:** These are illustrative; schemas are defined in `SPLASH_EVENT_LOG_SCHEMA_v0.01.md`

---

## EXAMPLE 1 — ACK RECORDED (APPROVE)

```yaml
event_id: "evt-0001"
event_version: "v0.01"
event_type: "SPLASH.ACK_RECORDED"
emitted_at: "2026-02-08T14:12:33Z"
surface_id: "SPLASH"
actor_id: "user-42"
omni_ref:
  bundle_id: "omni-bndl-9f2a"
  bundle_hash: "sha256:abc123"
verification:
  omni_verified: true
payload:
  ack_type: ACK_APPROVE
  note: null

EXAMPLE 2 — NOTE ATTACHED
event_id: "evt-0002"
event_version: "v0.01"
event_type: "SPLASH.NOTE_ATTACHED"
emitted_at: "2026-02-08T14:13:10Z"
surface_id: "SPLASH"
actor_id: "user-42"
omni_ref:
  bundle_id: "omni-bndl-9f2a"
  bundle_hash: "sha256:abc123"
verification:
  omni_verified: true
payload:
  note: "Reviewed photos; looks correct."

EXAMPLE 3 — SEEN MARKED
event_id: "evt-0003"
event_version: "v0.01"
event_type: "SPLASH.SEEN_MARKED"
emitted_at: "2026-02-08T14:13:55Z"
surface_id: "SPLASH"
actor_id: "user-42"
omni_ref:
  bundle_id: "omni-bndl-9f2a"
  bundle_hash: "sha256:abc123"
verification:
  omni_verified: true
payload:
  viewed_at: "2026-02-08T14:13:55Z"

EXAMPLE 4 — EVENT SUPERSEDED
event_id: "evt-0004"
event_version: "v0.01"
event_type: "SPLASH.EVENT_SUPERSEDED"
emitted_at: "2026-02-08T14:15:02Z"
surface_id: "SPLASH"
actor_id: "user-42"
omni_ref:
  bundle_id: "omni-bndl-9f2a"
  bundle_hash: "sha256:abc123"
verification:
  omni_verified: true
payload:
  supersedes_event_id: "evt-0001"
  reason: "ack recorded in error; corrected via follow-up note"

CANONICAL NOTE

All SPLASH surface-local events:

are append-only

reference OMNI bundles by ID/hash

do not create or modify authority

remain valid even if SPLASH is removed

END — SPLASH_EVENT_LOG_EXAMPLES_v0.01
EOF
