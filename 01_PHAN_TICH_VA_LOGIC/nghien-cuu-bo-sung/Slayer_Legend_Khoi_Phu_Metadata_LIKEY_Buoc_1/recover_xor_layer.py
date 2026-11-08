#!/usr/bin/env python3
"""Reproduce the verified XOR layer from Slayer Legend 700.0.4 metadata.
This does NOT decode the early encrypted/header block. Python stdlib only.
Usage: python recover_xor_layer.py global-metadata.dat partial.dat
"""
from pathlib import Path
import sys
if len(sys.argv)!=3:
 raise SystemExit('Usage: python recover_xor_layer.py global-metadata.dat partial.dat')
b=Path(sys.argv[1]).read_bytes()
if not b.startswith(b'LIKEY'):
 raise SystemExit('Unexpected file: LIKEY marker not found')
k=b'CD EFGHIJ'.replace(b' ',b'')  # 8 bytes: 43 44 45 46 47 48 49 4A
assert k==bytes(range(0x43,0x4b))
result=bytes(c ^ k[i&7] for i,c in enumerate(b))
Path(sys.argv[2]).write_bytes(result)
print('Partial XOR layer written; NOT a valid IL2CPP metadata header.')
