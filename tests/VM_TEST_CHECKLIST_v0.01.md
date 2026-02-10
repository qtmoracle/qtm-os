🔒 QTM OS VM TEST CHECKLIST (NON-MUTATING)

⚠️ TEST-ONLY CHECKLIST

This checklist:
• authorizes NO code changes
• authorizes NO draft edits
• authorizes NO version bumps
• authorizes NO freezes

Any failure results in:
→ a test note
→ or a v0.02 proposal
→ never a direct fix

PRE-TEST ASSERTIONS
- [ ] Draft consistency pass COMPLETE
- [ ] No uncommitted changes
- [ ] No network dependency required

QTM CORE
- [ ] qtm binary runs
- [ ] qtm probe deterministic
- [ ] qtm outputs schema-valid JSON

OMNI
- [ ] OMNI artifacts readable
- [ ] OMNI bundles immutable
- [ ] OMNI verification works offline
- [ ] No execution triggered

PLANCK
- [ ] Surfaces discovered via filesystem only
- [ ] No PLANCK memory/state
- [ ] No background execution
- [ ] surface list ≠ surface start

SPLASH (OR OTHER SURFACE)
- [ ] Draft files present only
- [ ] No start/run command exists
- [ ] Actions only recorded as events
- [ ] Event schema matches draft exactly

FAILURE MODES
- [ ] Missing OMNI bundle handled safely
- [ ] Verification failure does not mutate state
- [ ] Surface removal causes no corruption

POST-TEST
- [ ] No files modified
- [ ] No artifacts promoted
- [ ] Any failure logged as:
      → test note
      → draft patch proposal
      → v0.02 proposal candidate
