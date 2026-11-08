#!/usr/bin/env python3
"""Static source evidence exporter. Does not execute any game code."""
from pathlib import Path
import argparse,csv,hashlib,json,os,re,sys
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);p.add_argument('--class',dest='cls',required=True);p.add_argument('--names',nargs='*');a=p.parse_args()
root=Path(a.source).resolve();out=Path(a.out).resolve();out.mkdir(parents=True,exist_ok=True)
assert hashlib.sha256((root/'libil2cpp.so').read_bytes()).hexdigest()=='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
os.environ['SLAYER_LOGIC_DIR']=str(root);sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-full'/'tools'))
from native_analysis import asm
with (root/'all-method-map.csv').open(encoding='utf-8-sig') as f:rows=list(csv.DictReader(f))
addrs=sorted({int(r['native_va'],16) for r in rows if int(r['native_va'],16)});ends=dict(zip(addrs,addrs[1:]));labels={}
for r in rows:labels.setdefault(r['native_va'],[]).append(r['declaring_type_full_name']+'::'+r['name'])
selected=[r for r in rows if r['declaring_type_full_name']==a.cls and (a.names is None or r['name'] in a.names) and int(r['native_va'],16)]
for r in selected:
    va=int(r['native_va'],16);r['end_va']=hex(ends[va]);code=asm(va,ends[va]-va);code=re.sub(r'-> (0x[0-9a-f]+)',lambda m:m[0]+' '+', '.join(labels.get(m[1],[])),code)
    r['asm_file']=re.sub(r'[^\w.\-]','_',a.cls)+'__'+re.sub(r'[^\w.\-]','_',r['name'])+'_'+r['token']+'.asm'
    (out/r['asm_file']).write_text(code+'\n')
(out/(re.sub(r'[^\w.\-]','_',a.cls)+'-method-manifest.json')).write_text(json.dumps(selected,indent=2,ensure_ascii=False)+'\n')
print(json.dumps({'class':a.cls,'methods':len(selected),'bytes':sum(int(r['end_va'],16)-int(r['native_va'],16) for r in selected)}))
