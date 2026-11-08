#!/usr/bin/env python3
"""Reproduce the verified static recovery from the supplied Slayer Legend XAPK.
No APK or native game code is executed. Requires Python 3, numpy and cryptography.
"""
from pathlib import Path
import argparse,zipfile,io,hashlib,json,os,sys,subprocess
from elf_reader import ELF
from decode_metadata import decode_xapk
from decode_game_tables import decode_tables
EXPECTED_NATIVE='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
p=argparse.ArgumentParser(description=__doc__);p.add_argument('xapk');p.add_argument('--out',required=True);a=p.parse_args();out=Path(a.out).resolve();out.mkdir(parents=True,exist_ok=True);scripts=Path(__file__).resolve().parent;source=Path(a.xapk).resolve()
print('Decoding LIKEY metadata...',flush=True);decode_xapk(source,out)
with zipfile.ZipFile(source) as x:
 with zipfile.ZipFile(io.BytesIO(x.read('config.arm64_v8a.apk'))) as apk:native=apk.read('lib/arm64-v8a/libil2cpp.so')
assert hashlib.sha256(native).hexdigest()==EXPECTED_NATIVE
(out/'libil2cpp.so').write_bytes(native);elf=ELF(native);all_modules=[]
for i in range(182):
 va=elf.u64(0xa523ec0+i*8);name=elf.cstr(elf.u64(va));count=elf.u64(va+8);ptr=elf.u64(va+16)
 if name not in ['Assembly-CSharp.dll','Assembly-CSharp-firstpass.dll','GrowSlayer.ProtoGenScripts.dll','GrowSlayer.DataTableClient.dll']:continue
 pointers=[hex(elf.u64(ptr+j*8)) for j in range(count)]
 all_modules.append(dict(name=name,module_addr=hex(va),count=count,methods_table=hex(ptr),pointers=pointers))
assert len(all_modules)==4
(out/'codegen-modules.json').write_text(json.dumps(all_modules,indent=2));del native,elf,all_modules
print('Decoding 423 original table assets...',flush=True);decode_tables(source,out,scripts/'game-data-inventory.json')
env=dict(os.environ);env['SLAYER_LOGIC_DIR']=str(out)
for script in ['recover_types.py','recover_fields.py','finish_recovery.py','map_all_modules.py','export_table_schema.py','read_memorypack_tables.py','export_used_enums.py']:
 print('Running',script,flush=True)
 with (out/(script.replace('.py','.log'))).open('w') as log:subprocess.run([sys.executable,str(scripts/script)],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
report=json.loads((out/'table-parse-verification.json').read_text());assert len(report['parsed'])==423 and not report['unparsed'];assert report['total_rows_parsed']==44777
print('Complete: decoded metadata, 252,578 method records, 423 tables / 44,777 rows. Gameplay logic analysis and H5 port remain unfinished.',flush=True)
