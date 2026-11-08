from pathlib import Path
import json,struct,csv,collections
import os
ROOT=Path(os.environ.get('SLAYER_LOGIC_DIR',str(Path(__file__).parent)));b=(ROOT/'metadata-xor-partial.dat').read_bytes();HEAP=0x1c4918;PROTECTED=0x2356af
T=json.loads((ROOT/'type-map.json').read_text());byval={t['byval_type_index']:t for t in T}
def txt(idx):
 p=HEAP+idx
 if p<PROTECTED or p>=len(b) or b[p-1]!=0:return None
 e=b.find(0,p,p+300)
 if e<0:return None
 try:s=b[p:e].decode();return s if s and all(c.isprintable() for c in s) else None
 except:return None
def fullname(t,seen=None):
 seen=set() if seen is None else seen
 if t['index'] in seen:return '<recursive>'
 seen.add(t['index']);n=t['name'] or f'<encrypted_type_{t["index"]}>'
 if t['declaring_type_index'] in byval:return fullname(byval[t['declaring_type_index']],seen)+'+'+n
 return ((t['namespace']+'.') if t['namespace'] else '')+n
for t in T:t['full_name']=fullname(t)
(ROOT/'type-map.json').write_text(json.dumps(T,ensure_ascii=False,indent=2))
BASE=0x156e97c;rows=[]
for t in T:
 for i in range(t['field_count']):
  index=t['field_start']+i;p=BASE+index*12;ni,ty,token=struct.unpack_from('<III',b,p);assert token>>24==4
  rows.append({'index':index,'declaring_type_index':t['index'],'declaring_type':t['full_name'],'name':txt(ni),'name_index':ni,'type_index':ty,'token':hex(token),'metadata_offset':hex(p),'declared_order':i})
(ROOT/'field-map.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2))
M=json.loads((ROOT/'method-map.json').read_text())
for r in M:r['declaring_type_full_name']=T[r['declaring_type_index']]['full_name']
(ROOT/'method-map.json').write_text(json.dumps(M,ensure_ascii=False,indent=2))
for name,data in [('method-map',M),('type-map',T),('field-map',rows)]:
 with (ROOT/(name+'.csv')).open('w',encoding='utf-8-sig',newline='') as f:
  w=csv.DictWriter(f,fieldnames=list(data[0]));w.writeheader();w.writerows(data)
print('FIELDS',len(rows),'readable',sum(r['name'] is not None for r in rows))
for r in rows:
 if r['declaring_type'] in ['Xls_Equipment+Base','Xls_EquipmentInfo+Base','Xls_AwakeningWeapon+Base'] or (r['declaring_type'].startswith('Xls_Equipment') and r['name'] and 'Critical' in r['name']):print('FIELD',r)
print('LegacyEquipmentTypes',[(t['index'],t['full_name'],t['field_count']) for t in T if t['full_name'].startswith(('Xls_Equipment','Xls_AwakeningWeapon'))])
