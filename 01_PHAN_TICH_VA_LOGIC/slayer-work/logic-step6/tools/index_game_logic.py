#!/usr/bin/env python3
"""Static call inventory, not a claim of whole-game semantic recovery.
Method range ownership uses consecutive mapped addresses and can be ambiguous
for shared/generic native bodies. Indirect calls and callback edges are not
resolved by this scan. Never label scan coverage as gameplay completeness.
"""
from pathlib import Path
import argparse,collections,csv,hashlib,json,re,sys
import numpy as np
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-full'/'tools'))
from elf_reader import ELF
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args()
r=Path(a.source);out=Path(a.out);out.mkdir(parents=True,exist_ok=True)
with (r/'all-method-map.csv').open(encoding='utf-8-sig') as f:methods=list(csv.DictReader(f))
native=(r/'libil2cpp.so').read_bytes();assert hashlib.sha256(native).hexdigest()=='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
e=ELF(native);byva=collections.defaultdict(list)
for row in methods:
    va=int(row['native_va'],16)
    if va:byva[va].append(row)
addresses=np.array(sorted(byva),dtype=np.int64)
project=np.array([any(m['module']=='Assembly-CSharp.dll' for m in byva[int(va)]) for va in addresses])
sections=[e.sec[name] for name in ['.text','il2cpp']]
words=np.concatenate([np.frombuffer(native,dtype='<u4',count=s['size']//4,offset=s['off']) for s in sections])
instruction_pcs=np.concatenate([s['addr']+np.arange(s['size']//4,dtype=np.int64)*4 for s in sections])
nodes={};edges=collections.Counter();unknown=collections.Counter()
def owners(pcs):return np.searchsorted(addresses,pcs,side='right')-1
for kind,mask in [('call',(words&0xfc000000)==0x94000000),('tail',(words&0xfc000000)==0x14000000)]:
    indices=np.flatnonzero(mask);pcs=instruction_pcs[indices];owner=owners(pcs);valid=owner>=0
    indices,pcs,owner=indices[valid],pcs[valid],owner[valid];valid=project[owner];indices,pcs,owner=indices[valid],pcs[valid],owner[valid]
    imm=(words[indices]&0x3ffffff).astype(np.int64);imm=np.where(imm&(1<<25),imm-(1<<26),imm);targets=pcs+imm*4
    for own,pc,target in zip(owner.tolist(),pcs.tolist(),targets.tolist()):
        src=int(addresses[own])
        if kind=='tail' and (target not in byva or target==src):continue
        edges[(src,target,kind)]+=1
        if target not in byva:unknown[target]+=1
for name,opcode in [('indirectCall',0xd63f0000),('indirectTail',0xd61f0000)]:
    indices=np.flatnonzero((words&0xfffffc1f)==opcode);pcs=instruction_pcs[indices];owner=owners(pcs);valid=owner>=0;pcs,owner=pcs[valid],owner[valid];valid=project[owner]
    for own in owner[valid].tolist():
        src=int(addresses[own]);nodes.setdefault(src,collections.Counter())[name]+=1
classes=collections.defaultdict(lambda:dict(method_records=0,nonzero_native_records=0))
for row in methods:
    if row['module']!='Assembly-CSharp.dll':continue
    c=classes[row['declaring_type_full_name']];c['method_records']+=1;c['nonzero_native_records']+=int(int(row['native_va'],16)!=0)
for src,target,kind in edges:nodes.setdefault(src,collections.Counter())[kind+'Edges']+=1
edge_rows=[{'from':hex(src),'to':hex(dst),'kind':kind,'sites':count} for (src,dst,kind),count in sorted(edges.items())]
node_rows=[{'native_va':hex(va),'labels':[m['declaring_type_full_name']+'::'+m['name'] for m in byva[va]],'modules':sorted({m['module'] for m in byva[va]}),**c} for va,c in sorted(nodes.items())]
(out/'static-call-edges.json').write_text(json.dumps(edge_rows,separators=(',',':'))+'\n')
(out/'static-call-nodes.json').write_text(json.dumps(node_rows,separators=(',',':'),ensure_ascii=False)+'\n')
(out/'assembly-csharp-class-inventory.json').write_text(json.dumps(classes,indent=2,ensure_ascii=False)+'\n')
report={'assembly_csharp_method_records':sum(v['method_records'] for v in classes.values()),'assembly_csharp_classes':len(classes),
 'mapped_native_ranges_with_outgoing_edges':len(nodes),'distinct_static_edges':len(edges),'unknown_direct_targets':len(unknown),
 'indirect_call_sites':sum(c.get('indirectCall',0) for c in nodes.values()),'indirect_tail_sites':sum(c.get('indirectTail',0) for c in nodes.values()),
 'all_gameplay_semantically_analyzed':False,'all_gameplay_translated':False,
 'scope':'Static direct-call inventory in mapped native ranges; not semantic recovery. Generic/shared addresses may have multiple owners; indirect/delegate/Unity callback edges remain unresolved.'}
(out/'logic-inventory-status.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
