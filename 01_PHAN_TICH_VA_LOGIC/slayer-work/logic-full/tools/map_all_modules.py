"""Map all metadata methods to original ARM64 CodeGenModule pointers, statically."""
from pathlib import Path
import os,json,struct,collections,csv,sys
from elf_reader import ELF
R=Path(__import__('os').environ.get('SLAYER_LOGIC_DIR',sys.argv[1] if len(sys.argv)>1 else str(Path(__file__).parent.parent/'logic-full')));b=(R/'global-metadata.decoded.dat').read_bytes();E=ELF((R/'libil2cpp.so').read_bytes());T=json.loads((R/'type-map.json').read_text());N=json.loads((R/'native-type-map.json').read_text());P=json.loads((R/'parameter-map.json').read_text())
def text(i):
 p=0x1c4918+i;return b[p:b.index(0,p)].decode('utf8')
mods={}
for i in range(182):
 p=E.u64(0xa523ec0+i*8);name=E.cstr(E.u64(p));count=E.u64(p+8);ptr=E.u64(p+16);mods[name]=(count,ptr)
rows=[];images=[];labels=collections.defaultdict(list)
def pointer(va):
 try:return E.u64(va)
 except ValueError:
  if any(s['type']==8 and s['addr']<=va<s['addr']+s['size'] for s in E.sections):return 0
  raise
for i in range(182):
 p=0x1c10cc8+i*36;name=text(struct.unpack_from('<I',b,p)[0]);ts,tc=struct.unpack_from('<HH',b,p+8);types=T[ts:ts+tc];indices=[j for t in types for j in range(t['method_start'],t['method_start']+t['method_count'])];count,ptr=mods.get(name,(0,0));assert len(indices)==count,(name,len(indices),count)
 for j in sorted(indices):
  p=0x8787ac+j*32;ni,decl,ret,rtoken,params,generic,tok,flags,iflags,slot,pc=struct.unpack_from('<IHIIIHIHHHH',b,p);ordinal=(tok&0xffffff)-1;assert 0<=ordinal<count;va=pointer(ptr+ordinal*8);t=T[decl]
  r={'module':name,'token':hex(tok),'name':text(ni),'declaring_type_index':decl,'declaring_type_full_name':t['full_name'],'native_va':hex(va),'return_type_index':ret,'return_type_name':N[ret]['name'],'parameter_start':params,'parameter_count':pc,'parameters':[{**v,'type_name':N[v['type_index']]['name']} for v in P[params:params+pc]] if pc else [],'flags':flags,'iflags':iflags,'slot':slot,'metadata_record_offset':hex(p)}
  rows.append(r)
  if va:labels[hex(va)].append(t['full_name']+'::'+r['name'])
 images.append({'name':name,'type_start':ts,'type_count':tc,'methods':count,'method_pointer_table':hex(ptr)})
assert len(rows)==252578
(R/'all-method-map.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2));(R/'all-native-labels.json').write_text(json.dumps(labels,ensure_ascii=False,indent=2));(R/'all-module-map.json').write_text(json.dumps(images,ensure_ascii=False,indent=2));print('Mapped',len(rows),'methods,',len(images),'modules,',len(labels),'native addresses')
with (R/'all-method-map.csv').open('w',encoding='utf-8-sig',newline='') as out:
 fields=[k for k in rows[0] if k!='parameters'];w=csv.DictWriter(out,fieldnames=fields);w.writeheader();w.writerows({k:r[k] for k in fields} for r in rows)
