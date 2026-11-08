from pathlib import Path
import struct,json,csv,re,collections,hashlib
import os
ROOT=Path(os.environ.get('SLAYER_LOGIC_DIR',str(Path(__file__).parent)))
b=(ROOT/'metadata-xor-partial.dat').read_bytes();HEAP=0x1c4918;PROTECTED=0x2356af
modules=json.loads((ROOT/'codegen-modules.json').read_text());STARTS={'Assembly-CSharp.dll':0x8787c0,'GrowSlayer.ProtoGenScripts.dll':0xa77bc0,'GrowSlayer.DataTableClient.dll':0xcfcfe0,'Assembly-CSharp-firstpass.dll':0xfdd0a0}
def text_at(index):
 p=HEAP+index
 if p<PROTECTED or p>=len(b):return None
 if p>0 and b[p-1]!=0:return None
 end=b.find(b'\0',p,p+300)
 if end==-1:return None
 try:s=b[p:end].decode('utf8')
 except:return None
 return s if s and all(c.isprintable() for c in s) else None
rows=[]
for mod in modules:
 tok=STARTS[mod['name']];count=mod['count'];valid=0
 for i in range(count):
  p=tok+i*32-20;name,decl,ret,rtoken,params,generic,token,flags,iflags,slot,pc=struct.unpack_from('<IHIIIHIHHHH',b,p)
  assert token==0x06000001+i,(mod['name'],i,hex(token))
  n=text_at(name);valid+=n is not None
  rows.append(dict(module=mod['name'],token=hex(token),name=n,declaring_type_index=decl,return_type_index=ret,parameter_start=params,parameter_count=pc,flags=flags,iflags=iflags,slot=slot,metadata_record_offset=hex(p),name_index=name,name_offset=hex(HEAP+name),native_va=mod['pointers'][i]))
 print(mod['name'],'count',count,'names_readable',valid,'named_native',sum(r['name'] is not None and r['native_va']!='0x0' for r in rows if r['module']==mod['name']))
(ROOT/'method-map.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2))
with (ROOT/'method-map.csv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
for r in rows:
 if r['module']=='Assembly-CSharp.dll' and r['name'] and re.search(r'GoldAmount_Cal|^(NormalMonsterDmg_Cal|BossMonsterDmg_Cal|Atk_Cal|HavePowerCritical_Cal|LowHpDmg_Cal)$',r['name']):print('TARGET',r)
