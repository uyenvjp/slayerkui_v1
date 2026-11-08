#!/usr/bin/env python3
"""Read runtime enum constants from the decoded metadata v39 source."""
from pathlib import Path
import argparse,json,struct
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.source)
b=(root/'global-metadata.decoded.dat').read_bytes();fields=json.loads((root/'field-map.json').read_text())
defaults={struct.unpack_from('<iii',b,n)[0]:struct.unpack_from('<iii',b,n)[1:] for n in range(17066372,17066372+834120,12)}
def compressed(p):
 x=b[p]
 if x<128:return x
 if x&192==128:return ((x&63)<<8)|b[p+1]
 if x&224==192:return ((x&31)<<24)|(b[p+1]<<16)|(b[p+2]<<8)|b[p+3]
 if x==240:return struct.unpack_from('<I',b,p+1)[0]
 return {254:0xfffffffe,255:0xffffffff}[x]
out={}
for cls in ['State','DropType','GameMode','PlayerBase+RebornState','GrowSlayer.CurrencyTypes','GrowSlayer.DungeonTypes']:
 result={}
 for f in fields:
  if f['declaring_type']!=cls or f['name']=='value__' or f['index'] not in defaults:continue
  _,index=defaults[f['index']]
  if index<0:continue
  v=compressed(17900496+index);result[f['name']]=-(v>>1)-1 if v&1 else v>>1
 if result:out[cls]=result
Path(a.out).write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({name:len(items) for name,items in out.items()}))
