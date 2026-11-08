"""Resolve original IL2CPP field types and MemoryPack row schema from decoded metadata."""
from pathlib import Path
import json,struct,re,sys,collections
from elf_reader import ELF
R=Path(__import__('os').environ.get('SLAYER_LOGIC_DIR',sys.argv[1] if len(sys.argv)>1 else str(Path(__file__).parent.parent/'logic-full')))
T=json.loads((R/'type-map.json').read_text());F=json.loads((R/'field-map.json').read_text());N=json.loads((R/'native-type-map.json').read_text());E=ELF((R/'libil2cpp.so').read_bytes());byaddr={int(n['native_address'],16):n for n in N};fields=collections.defaultdict(list)
for f in F:fields[f['declaring_type_index']].append(f)
PRIM={1:'void',2:'bool',3:'char',4:'sbyte',5:'byte',6:'short',7:'ushort',8:'int',9:'uint',10:'long',11:'ulong',12:'float',13:'double',14:'string',24:'nint',25:'nuint',28:'object'}
def resolve(ptr,depth=0):
 if depth>20:raise ValueError('Recursive type')
 data,bits=struct.unpack('<QI',E.bytes(ptr,12));kind=(bits>>16)&255
 if kind in PRIM:return {'kind':PRIM[kind]}
 if kind in [17,18]:
  td=T[data];enum=bool(td['bitfield']&2)
  result={'kind':'enum' if enum else 'value' if kind==17 else 'class','name':td['full_name'],'type_definition':data}
  if enum:
   under=next(f for f in fields[data] if f['name']=='value__');result['underlying']=resolve(int(N[under['type_index']]['native_address'],16),depth+1)
  return result
 if kind in [15,16,29]:return {'kind':{15:'pointer',16:'byref',29:'array'}[kind],'element':resolve(E.u64(ptr),depth+1)}
 if kind==21:
  gc=E.u64(ptr);ty=resolve(E.u64(gc),depth+1);inst=E.u64(gc+8);count=E.u64(inst);args=E.u64(inst+8)
  assert count<100
  return {'kind':'generic','name':ty['name'],'type_definition':ty['type_definition'],'arguments':[resolve(E.u64(args+8*j),depth+1) for j in range(count)]}
 if kind in [19,30]:return {'kind':'type_parameter','index':data}
 raise ValueError(f'Unsupported IL2CPP kind {kind}')
def all_fields(td,arguments=None):
 t=T[td];out=[];parent=t['parent_type_index']
 if parent!=0xffffffff:
  p=resolve(int(N[parent]['native_address'],16))
  if p.get('type_definition') is not None and p.get('name') not in ['System.Object','System.ValueType','System.Enum']:
   out.extend(all_fields(p['type_definition'],p.get('arguments')))
 for f in fields[td]:
  if f['is_static']:continue
  ty=resolve(int(N[f['type_index']]['native_address'],16))
  if ty['kind']=='type_parameter' and arguments:
   assert len(arguments)==1 and t['full_name']=='DataTable.IndexedData`1'
   ty=arguments[0]
  name=re.sub(r'^<(.+)>k__BackingField$',r'\1',f['name'])
  out.append({'name':name,'type':ty,'native_offset':f['native_field_offset'],'declared_in':t['full_name']})
 return out
schemas=[];unmatched=[];names={t['name']:t for t in T if t['namespace']=='DataTable.Client'}
for row in json.loads((R/'table-decode-verification.json').read_text())['success']:
 n=row['name'];t=names.get(n)
 if not t:unmatched.append(n);continue
 schemas.append({'name':n,'type_definition':t['index'],'fields':all_fields(t['index'])})
(R/'table-schemas.json').write_text(json.dumps(schemas,ensure_ascii=False,indent=2))
(R/'schema-unmatched.json').write_text(json.dumps(unmatched,indent=2))
print('UNMATCHED',unmatched)
print('SCHEMAS',len(schemas),'FIELD_TYPES',collections.Counter(f['type']['kind'] for s in schemas for f in s['fields']))
for n in ['EquipmentBaseData','ImmortalTreeConfigData','NormalEnemyData','StageInfoData','AdventureInfoBaseData']:
 for s in schemas:
  if s['name']==n:print(json.dumps(s,ensure_ascii=False))
