#!/usr/bin/env python3
"""Read EKey literal values from the same decoded metadata tables as step7."""
from pathlib import Path
import argparse,hashlib,json,struct
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();src=Path(a.source)
b=(src/'global-metadata.decoded.dat').read_bytes();fields=json.loads((src/'field-map.json').read_text())
defaults={struct.unpack_from('<iii',b,n)[0]:struct.unpack_from('<iii',b,n)[1:] for n in range(17066372,17066372+834120,12)}
def compressed(pos):
 x=b[pos]
 if x<128:return x
 if x&192==128:return ((x&63)<<8)|b[pos+1]
 if x&224==192:return ((x&31)<<24)|(b[pos+1]<<16)|(b[pos+2]<<8)|b[pos+3]
 if x==240:return struct.unpack_from('<I',b,pos+1)[0]
 return {254:0xfffffffe,255:0xffffffff}[x]
out={}
for f in fields:
 if f['declaring_type']!='ServerPrefs+EKey' or f['name']=='value__' or f['index'] not in defaults:continue
 _,ix=defaults[f['index']]
 if ix<0:continue
 v=compressed(17900496+ix);out[f['name']]=-(v>>1)-1 if v&1 else v>>1
assert len(out)==34 and len(set(out.values()))==34
Path(a.out).write_text(json.dumps({'enum':'ServerPrefs+EKey','metadata_sha256':hashlib.sha256(b).hexdigest(),'values':out},indent=2)+'\n');print(json.dumps({'keys':len(out)}))
