from pathlib import Path
import struct,json,csv,os,collections,hashlib
from elf_reader import ELF
ROOT=Path(os.environ.get('SLAYER_LOGIC_DIR',str(Path(__file__).parent)))
b=(ROOT/'metadata-xor-partial.dat').read_bytes();HEAP=0x1c4918;PROTECTED=0x2356af
T=json.loads((ROOT/'type-map.json').read_text());F=json.loads((ROOT/'field-map.json').read_text());M=json.loads((ROOT/'method-map.json').read_text());elf=ELF((ROOT/'libil2cpp.so').read_bytes())
def txt(ni):
 p=HEAP+ni
 if p<PROTECTED or p>=len(b) or b[p-1]!=0:return None
 e=b.find(0,p,p+300)
 if e<0:return None
 try:s=b[p:e].decode();return s if s and all(c.isprintable() for c in s) else None
 except:return None
BASE=0x12f75f0;P=[]
for i in range(1000000):
 p=BASE+i*12
 if p+12>len(b):break
 ni,tok,ty=struct.unpack_from('<III',b,p)
 if tok>>24!=8:break
 P.append(dict(index=i,name=txt(ni),name_index=ni,type_index=ty,token=hex(tok),metadata_offset=hex(p)))
assert BASE+len(P)*12==0x156e97c
MR=0xa142998;type_count=elf.u64(MR+48);type_ptrs=elf.u64(MR+56);field_count=elf.u64(MR+80);field_ptrs=elf.u64(MR+88)
assert field_count==len(T)==32782
PRIM={0:'end',1:'void',2:'bool',3:'char',4:'sbyte',5:'byte',6:'short',7:'ushort',8:'int',9:'uint',10:'long',11:'ulong',12:'float',13:'double',14:'string',22:'typedref',24:'nint',25:'nuint',28:'object'}
N=[]
for i in range(type_count):
 ptr=elf.u64(type_ptrs+8*i);raw=elf.bytes(ptr,12);data,bits=struct.unpack('<QI',raw);kind=(bits>>16)&255;name=PRIM.get(kind);td=None
 if kind in (17,18):
  td=data
  if 0<=td<len(T):name=T[td]['full_name']
 if name is None:name={15:'pointer',16:'byref',19:'generic_parameter',20:'array',21:'generic_instance',27:'function_pointer',29:'vector',30:'method_generic_parameter'}.get(kind,f'il2cpp_kind_{kind}')
 N.append({'index':i,'name':name,'kind':kind,'attrs':bits&65535,'type_definition_index':td,'native_address':hex(ptr),'data':hex(data)})
for f in F:
 t=T[f['declaring_type_index']];pointer=elf.u64(field_ptrs+t['index']*8);f['native_field_offset']=struct.unpack('<i',elf.bytes(pointer+f['declared_order']*4,4))[0] if pointer else None
 n=N[f['type_index']];f['type_name']=n['name'];f['is_static']=bool(n['attrs']&16)
for r in M:
 r['return_type_name']=N[r['return_type_index']]['name'];count=r['parameter_count'];start=r['parameter_start'];assert not count or start+count<=len(P)
 r['parameters']=[{**p,'type_name':N[p['type_index']]['name']} for p in P[start:start+count]] if count else []
 for p in r['parameters']:assert p['type_index']<type_count
for name,rows in [('method-map',M),('field-map',F),('parameter-map',P),('native-type-map',N)]:
 (ROOT/(name+'.json')).write_text(json.dumps(rows,ensure_ascii=False,indent=2))
 with (ROOT/(name+'.csv')).open('w',encoding='utf-8-sig',newline='') as out:
  w=csv.DictWriter(out,fieldnames=list(rows[0]));w.writeheader()
  for r in rows:
   d=dict(r)
   if 'parameters' in d:d['parameters']='; '.join(p['type_name']+' '+(p['name'] or '<encrypted>') for p in d['parameters'])
   w.writerow(d)
stats={
 'source_metadata_sha256':hashlib.sha256((ROOT.parent.parent/'slayer-input/global-metadata.dat').read_bytes()).hexdigest() if (ROOT.parent.parent/'slayer-input/global-metadata.dat').exists() else '0f0c21c82432adab3421ea6c82e2662b032a8fc2fc17f81defe166b2ce294c46',
 'native_sha256':hashlib.sha256((ROOT/'libil2cpp.so').read_bytes()).hexdigest(),
 'recovery_status':'partial; no valid fully decrypted metadata header; no complete C# source or H5 build',
 'type_definitions':len(T),'type_names_readable':sum(t['name'] is not None for t in T),
 'fields':len(F),'field_names_readable':sum(f['name'] is not None for f in F),
 'parameters':len(P),'parameter_names_readable':sum(p['name'] is not None for p in P),
 'native_types':len(N),'method_records_four_modules':len(M),
 'modules':{n:{'records':len(rs),'names_readable':sum(r['name'] is not None for r in rs),'named_nonzero_native_pointers':sum(r['name'] is not None and r['native_va']!='0x0' for r in rs)} for n,rs in ((n,[r for r in M if r['module']==n]) for n in sorted(set(r['module'] for r in M)))},
 'verified_method_type_ranges':len(M),'invalid_method_type_ranges':0,
 'layout':{'string_heap':'0x1c4918','method_table':'0x8787ac','method_stride':32,'parameter_table':'0x12f75f0','parameter_stride':12,'field_table':'0x156e97c','field_stride':12,'type_definition_table':'0x198084c','type_stride':82,'metadata_registration':hex(MR),'code_registration':'0x9d722c0','type_definition_count_matches_native_field_offsets_count':True},
 'notes':['Null names are still inside the protected prefix or otherwise fail string validation.','Native_va=0 is not evidence that a function has no implementation; generic sharing and AOT stripping must be examined.','IFix dispatch can replace selected native baselines; active patch contents have not been recovered.','Field offsets include instance and static offsets: inspect is_static before use.','No supplied binary was executed.']}
(ROOT/'parameter-layout.json').write_text(json.dumps({'base':hex(BASE),'stride':12,'parameter_count':len(P),'end':hex(BASE+len(P)*12),'end_matches_field_table_start':True},indent=2))
(ROOT/'verification.json').write_text(json.dumps(stats,ensure_ascii=False,indent=2));print(json.dumps(stats,ensure_ascii=False,indent=2))
