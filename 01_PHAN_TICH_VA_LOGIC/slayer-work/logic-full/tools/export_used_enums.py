"""Read actual constants used by recovered game-table enum fields from v39 metadata."""
from pathlib import Path
import json,struct,sys,os
R=Path(os.environ.get('SLAYER_LOGIC_DIR',sys.argv[1] if len(sys.argv)>1 else str(Path(__file__).parent.parent/'logic-full')))
b=(R/'global-metadata.decoded.dat').read_bytes();F=json.loads((R/'field-map.json').read_text());schemas=json.loads((R/'table-schemas.json').read_text());D={struct.unpack_from('<iii',b,p)[0]:struct.unpack_from('<iii',b,p)[1:] for p in range(17066372,17066372+834120,12)}
def compressed_uint(p):
 x=b[p]
 if x<128:return x,1
 if x&192==128:return ((x&63)<<8)|b[p+1],2
 if x&224==192:return ((x&31)<<24)|(b[p+1]<<16)|(b[p+2]<<8)|b[p+3],4
 if x==240:return struct.unpack_from('<I',b,p+1)[0],5
 if x==254:return 0xfffffffe,1
 if x==255:return 0xffffffff,1
 raise ValueError(f'Unrecognized compressed int at {p:x}')
used={}
def walk(t):
 if t['kind']=='enum':used[t['type_definition']]=t
 if t['kind']=='array':walk(t['element'])
for s in schemas:
 for f in s['fields']:walk(f['type'])
out={}
for td,t in used.items():
 assert t['underlying']['kind']=='int'
 result={}
 for f in F:
  if f['declaring_type_index']!=td or f['name']=='value__':continue
  _,di=D[f['index']];assert di>=0
  v,_=compressed_uint(17900496+di);v=-(v>>1)-1 if v&1 else v>>1;result[f['name']]=v
 out[t['name']]=result
(R/'table-enums.json').write_text(json.dumps(out,ensure_ascii=False,indent=2));print('Exported',len(out),'original enum definitions')
