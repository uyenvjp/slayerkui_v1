#!/usr/bin/env python3
"""Read-only extract original MonoScript names and pair with MonoBehaviour TypeTree fields.
Works directly on the user-supplied Slayer Legend 700.0.4 XAPK.
No LIAPP bypass, no decompilation, no external assets. Python 3 stdlib + bundled parsers.
"""
import csv, hashlib, io, json, struct, sys, zipfile, gc
from collections import Counter, defaultdict
from pathlib import Path
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from read_serial_values import serialized_type_table, read_one

XAPK = Path(sys.argv[1]) if len(sys.argv)>1 else Path('/mnt/data/Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk')
OUT = Path(sys.argv[2]) if len(sys.argv)>2 else Path('/mnt/data/Slayer_Legend_Phan_Tich_GiaiDoan4')
OUT.mkdir(parents=True, exist_ok=True)

# Unity MonoScript version used here: 4-byte aligned strings, 4-byte execution order,
# 16-byte properties hash, three 4-byte aligned strings.
def monoscript_details(blob):
    f=io.BytesIO(blob)
    def string():
        raw=f.read(4)
        if len(raw)!=4: raise ValueError('truncated string len')
        n=struct.unpack('<i',raw)[0]
        if n<0 or n>1024: raise ValueError('implausible length')
        b=f.read(n)
        if len(b)!=n: raise ValueError('truncated string')
        f.seek((f.tell()+3)&~3)
        return b.decode('utf8','replace')
    name=string()
    order=struct.unpack('<i',f.read(4))[0]
    prop_hash=f.read(16).hex()
    classname=string(); namespace=string();assembly=string()
    if f.tell()!=len(blob):raise ValueError('MonoScript object mismatch')
    return dict(m_Name=name, m_ClassName=classname, m_Namespace=namespace,
                m_AssemblyName=assembly, m_ExecutionOrder=order,
                m_PropertiesHash=prop_hash)

def get_bundle(x,name):
    with zipfile.ZipFile(io.BytesIO(x.read(name+'.apk'))) as inner:
        raw=inner.read('assets/assetpack/'+name)
    return serialized_bundle_head(raw,parse_unityfs(raw))

summary={}; rows=[];scripts_all=[];defaults=[]
with zipfile.ZipFile(XAPK) as x:
 for pack in ('monster','popup','skin'):
    data=get_bundle(x,pack)
    types,objects,base=serialized_type_table(data)
    scripts={};invalid=[]
    for path,off,size,tid in objects:
        if types[tid][0]!=115:continue
        try:
            d=monoscript_details(data[base+off:base+off+size]);
            scripts[path]=d
            scripts_all.append(dict(bundle=pack,path_id=str(path), **d))
        except Exception as ex:
            invalid.append(dict(path=str(path),error=str(ex)))
    pair_info=defaultdict(lambda:dict(count=0,invalid_refs=0,script_paths=Counter(),direct_class_names=Counter(),hash_verified=0,hash_mismatches=0))
    rawcomponents=0
    for path,off,size,tid in objects:
        if types[tid][0]!=114:continue
        rawcomponents+=1
        key=tid
        item=pair_info[key];item['count']+=1
        fields=types[tid][1].get('children',[])
        # Verify canonical MonoBehaviour prefix before using fixed script PPtr at byte +16.
        if [f['name'] for f in fields[:3]] != ['m_GameObject','m_Enabled','m_Script']:
            item['invalid_refs']+=1
            continue
        if size<28:
            item['invalid_refs']+=1;continue
        blob=data[base+off:base+off+28]
        file_id,script_id=struct.unpack_from('<iq',blob,16)
        item['script_paths'][(file_id,script_id)]+=1
        if file_id==0 and script_id in scripts:
            sd=scripts[script_id]
            item['direct_class_names'][(sd['m_Namespace'],sd['m_ClassName'],sd['m_AssemblyName'])]+=1
            if sd['m_PropertiesHash']==types[tid][2]:
                item['hash_verified']+=1
            else:
                item['hash_mismatches']+=1
    for tid,stats in pair_info.items():
        t=types[tid]
        script_name='';script_ns='';assembly='';link_status='unresolved'
        if len(stats['direct_class_names'])==1:
            ((script_ns,script_name,assembly),n),=stats['direct_class_names'].items()
            if n==stats['count'] and stats['invalid_refs']==0:link_status='all_objects_verified'
            else:link_status='some_objects_verified'
        elif len(stats['direct_class_names'])>1:
            link_status='multiple_linked_classes'
        fs=[a['name'] for a in t[1].get('children',[]) if not a['name'].startswith('m_')]
        rows.append(dict(bundle=pack,type_index=tid,type_hash=t[2],object_count=stats['count'],
                         class_name=script_name,namespace=script_ns,assembly=assembly,
                         linked_objects=sum(stats['direct_class_names'].values()),
                         foreign_or_unresolved_objects=stats['count']-sum(stats['direct_class_names'].values()),
                         link_status=link_status,hash_verified_objects=stats['hash_verified'],hash_mismatch_objects=stats['hash_mismatches'], fields='; '.join(fs)))
    summary[pack]={
        'serialized_objects':len(objects),'monobehaviour_objects':rawcomponents,
        'monoscript_objects':len(scripts), 'monoscript_invalid':invalid,
        'mono_types':len(pair_info), 'mono_types_with_identified_class':sum(bool(r['class_name']) for r in rows if r['bundle']==pack),
        'mono_objects_directly_linked':sum(sum(v['direct_class_names'].values()) for v in pair_info.values()),
        'all_direct_linked':sum(sum(v['direct_class_names'].values()) for v in pair_info.values())==rawcomponents,
        'type_hash_match_objects':sum(v['hash_verified'] for v in pair_info.values()),
        'type_hash_mismatch_objects':sum(v['hash_mismatches'] for v in pair_info.values()),
        'assembly_csharp_class_count':sum(1 for d in scripts.values() if d['m_AssemblyName']=='Assembly-CSharp'),
    }
    if pack=='monster':
        # Verify original serialized defaults only for selected enemy-script component types.
        for tid,stats in pair_info.items():
            names=[f['name'] for f in types[tid][1].get('children',[])]
            if 'SpecialAttack_Cooltime' not in names:continue
            for path,off,size,otid in objects:
                if otid!=tid:continue
                f=io.BytesIO(data[base+off:base+off+size])
                try:
                    value=read_one(f,types[tid][1])
                    if f.tell()!=size:raise ValueError(f'consumed {f.tell()}, expected {size}')
                    keep=('characterType','state','atkSpeed','miss','accuracy','dmgReduce','MonsterType',
                          'EnemyType','AttackRange','SpecialAttack_Cooltime','SpecialAttack_Prob','AttackPossible')
                    defaults.append(dict(bundle=pack,path_id=str(path),type_index=tid,type_hash=types[tid][2],
                                         declared_bytes=size,consumed_bytes=f.tell(),values={k:value.get(k) for k in keep if k in value},result='verified'))
                except Exception as ex:
                    defaults.append(dict(bundle=pack,path_id=str(path),type_index=tid,type_hash=types[tid][2],
                                         declared_bytes=size,consumed_bytes=f.tell(),error=str(ex),result='unparsed'))
    print(pack,summary[pack],flush=True)
    del data,types,objects,scripts
    gc.collect()

rows.sort(key=lambda r:(r['bundle'], -r['object_count'],r['type_index']))
with (OUT/'MonoBehaviour_Class_Field_Linkage.csv').open('w',encoding='utf-8-sig',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
with (OUT/'MonoScript_Ten_Class_Goc.csv').open('w',encoding='utf-8-sig',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(scripts_all[0]));w.writeheader();w.writerows(scripts_all)
(OUT/'Monster_Defaults_Verified.json').write_text(json.dumps(defaults,ensure_ascii=False,indent=2),encoding='utf-8')
(OUT/'MonoScript_Linkage_Summary.json').write_text(json.dumps({'source_xapk':XAPK.name,'summary':summary,
  'linked_gameplay_examples':[r for r in rows if r['class_name'] and any(x in r['fields'] for x in ['SpecialAttack_Cooltime','Skill','Boss','attackEffect','BTN_LevelUp'])][:80],
  'notes':['Class names and fields obtained from original Unity serialized MonoScript and TypeTree.',
           'These are not method bodies, native function addresses, gameplay formulas, or server logic.',
           'Local PPtr linkage validated by checking m_Script reference and matching a MonoScript path ID.']},
  ensure_ascii=False,indent=2),encoding='utf8')
print('written',len(rows),'type-link rows,',len(scripts_all),'monoscripts and',len(defaults),'monster defaults')
