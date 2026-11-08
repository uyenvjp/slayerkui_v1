#!/usr/bin/env python3
"""Version-specific static recovery from the supplied Slayer Legend 700.0.4 XAPK.
No APK/native code is executed. Recovered metadata remains partial.
"""
from pathlib import Path
import argparse,zipfile,io,hashlib,json,os,sys,runpy,contextlib
from elf_reader import ELF
EXPECTED_METADATA='0f0c21c82432adab3421ea6c82e2662b032a8fc2fc17f81defe166b2ce294c46'
EXPECTED_NATIVE='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
p=argparse.ArgumentParser(description=__doc__);p.add_argument('xapk');p.add_argument('--out',required=True);p.add_argument('--asm',action='store_true',help='Also generate selected ARM64 disassemblies; requires libLLVM.so.20.1 and ctypes')
a=p.parse_args();out=Path(a.out).resolve();out.mkdir(parents=True,exist_ok=True);scripts=Path(__file__).resolve().parent;sys.path.insert(0,str(scripts));os.environ['SLAYER_LOGIC_DIR']=str(out)
with zipfile.ZipFile(a.xapk) as x:
 with zipfile.ZipFile(io.BytesIO(x.read('com.gear2.growslayer.apk'))) as z:meta=z.read('assets/bin/Data/Managed/Metadata/global-metadata.dat')
 with zipfile.ZipFile(io.BytesIO(x.read('config.arm64_v8a.apk'))) as z:native=z.read('lib/arm64-v8a/libil2cpp.so')
for data,expected,name in [(meta,EXPECTED_METADATA,'metadata'),(native,EXPECTED_NATIVE,'libil2cpp')]:
 if hashlib.sha256(data).hexdigest()!=expected:raise SystemExit('Input SHA256 differs: '+name+'. Refusing to apply this version-specific layout.')
(out/'libil2cpp.so').write_bytes(native);part=bytearray(meta)
for phase,key in enumerate(range(0x43,0x4b)):part[phase::8]=part[phase::8].translate(bytes(v^key for v in range(256)))
(out/'metadata-xor-partial.dat').write_bytes(part);elf=ELF(native);modules=[]
for name,expected_count in [('Assembly-CSharp.dll',65440),('Assembly-CSharp-firstpass.dll',448),('GrowSlayer.DataTableClient.dll',9801),('GrowSlayer.ProtoGenScripts.dll',38031)]:
 pos=native.find(name.encode()+b'\0');refs=[v for v,t,ix,add in elf.reladd if t==1027 and add==pos];matches=[]
 for va in refs:
  if elf.u64(va+8)!=expected_count:continue
  table=elf.u64(va+16);ptrs=[elf.u64(table+i*8) for i in range(expected_count)];matches.append(dict(name=name,module_addr=hex(va),count=expected_count,methods_table=hex(table),pointers=[hex(n) for n in ptrs]))
 if len(matches)!=1:raise SystemExit('CodeGenModule match is ambiguous: '+name)
 modules.extend(matches)
(out/'codegen-modules.json').write_text(json.dumps(modules,indent=2))
for script in ['recover_types.py','recover_fields.py','finish_recovery.py']:
 print('Running',script,flush=True)
 with contextlib.redirect_stdout(io.StringIO()):runpy.run_path(str(scripts/script),run_name='__main__')
if a.asm:
 from native_analysis import asm
 M=json.loads((out/'method-map.json').read_text());labels={int(r['native_va'],16):r['declaring_type_full_name']+'::'+r['name'] for r in M if r['native_va']!='0x0' and r['name']}
 import re
 for name,va,end in [('GameManager__GoldAmount_Cal',0x4e50c80,0x4e512d8),('EquipmentSlotManager__HavePowerCritical_Cal',0x4e9c0c4,0x4e9c2ec),('EnemyBase__NormalMonsterDmg_Cal',0x50b8b60,0x50b8cbc),('EnemyBase__BossMonsterDmg_Cal',0x50b8cbc,0x50b8e74),('EnemyBase__LowHpDmg_Cal',0x50ba354,0x50ba584)]:
  text=asm(va,end-va);text=re.sub(r'-> (0x[0-9a-f]+)',lambda m:m.group(0)+(' ['+labels[int(m.group(1),16)]+']' if int(m.group(1),16) in labels else ''),text);(out/(name+'.asm')).write_text(text+'\n')
print('Done. See verification.json. This is partial static recovery, not fully decrypted metadata or complete C# source.')
