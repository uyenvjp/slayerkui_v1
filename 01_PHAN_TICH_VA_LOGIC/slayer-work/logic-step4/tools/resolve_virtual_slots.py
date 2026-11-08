#!/usr/bin/env python3
"""Resolve selected non-generic metadata vtable slots; XAPK 705 only."""
from pathlib import Path
import argparse,csv,json,struct
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.source)
b=(root/'global-metadata.decoded.dat').read_bytes()
with (root/'type-map.csv').open(encoding='utf-8-sig') as f:types={r['full_name']:r for r in csv.DictReader(f)}
with (root/'all-method-map.csv').open(encoding='utf-8-sig') as f:methods={int(r['metadata_record_offset'],16):r for r in csv.DictReader(f)}
rows=[]
for cls in ['Character','EnemyBase','PlayerBase']:
    t=types[cls]
    for slot in [10,12,17,23,24,38,54,57,58,59,61,63]:
        if slot>=int(t['vtable_count']):continue
        v=struct.unpack_from('<I',b,25118316+(int(t['vtable_start'])+slot)*4)[0]
        if v>>29!=3:raise ValueError('Unsupported vtable entry kind')
        m=methods[0x8787ac+((v>>1)&0xfffffff)*32]
        rows.append(dict(type=cls,slot=slot,class_vtable_offset=312+16*slot,encoded=hex(v),method=m['declaring_type_full_name']+'::'+m['name'],native_va=m['native_va']))
Path(a.out).write_text(json.dumps(rows,indent=2)+'\n');print('Resolved',len(rows),'slots')
