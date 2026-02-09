# CJSON_PROFILE_v0.01
Version: v0.01
Status: AUTHORITATIVE — FREEZE-LOCKED (OMNI-only)

## Purpose
Define the canonical JSON serialization rules used by OMNI
to ensure deterministic hashing and offline verification.

## Encoding Rules
- UTF-8 encoding only
- No BOM
- Unix line endings (LF)

## Object Canonicalization
- All object keys MUST be sorted lexicographically (byte order)
- No duplicate keys permitted
- No additional properties beyond schema

## Array Rules
- Array order MUST be preserved as authored
- No sorting or reordering of arrays

## Whitespace Rules
- No insignificant whitespace
- No pretty-printing for canonical bytes
- No trailing spaces or newlines

## Number Rules
- Integers only unless schema explicitly permits decimals
- No scientific notation
- No implicit type coercion

## String Rules
- Strings MUST be exact as authored
- No normalization, trimming, or case-folding
- Escaping MUST follow JSON spec exactly

## Boolean and Null
- Only true / false / null as lowercase literals

## Hashing Rule
- Canonical bytes are produced using the above rules
- During hash computation:
  - the `signatures` field MUST exist and be set to []
- sha256 is computed over canonical bytes only

## Prohibited Behaviors
OMNI MUST NOT:
- inject timestamps during canonicalization
- reorder fields for convenience
- infer defaults not present in the source
- mutate values during serialization

## Verification Requirement
Any verifier implementing this profile MUST:
- reproduce identical canonical bytes
- reproduce identical sha256 values
- operate fully offline

## Completion Condition
This profile is complete when:
- identical input yields identical hashes
- canonicalization is mechanically reproducible
- no semantic meaning is altered
