#!/usr/bin/env python3
import json
import sys
from pathlib import Path

def main() -> int:
    if len(sys.argv) != 3:
        print("usage: validate_schema.py <schema.json> <instance.json>", file=sys.stderr)
        return 2

    schema_path = Path(sys.argv[1])
    instance_path = Path(sys.argv[2])

    schema = json.loads(schema_path.read_text(encoding="utf-8"))
    instance = json.loads(instance_path.read_text(encoding="utf-8"))

    try:
        import jsonschema  # type: ignore
    except Exception:
        print("ERROR: python package 'jsonschema' not installed", file=sys.stderr)
        print("Install: python3 -m pip install --user jsonschema", file=sys.stderr)
        return 3

    jsonschema.validate(instance=instance, schema=schema)
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
