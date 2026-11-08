#!/usr/bin/env python3
"""Read-only MonoScript catalog and linkage to MonoBehaviour objects in UnityFS.
This is serialized asset metadata, NOT decompiled IL2CPP code.
"""
import csv,io,json,struct,sys,zipfile
from pathlib import Path
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from read_serial_values import serialized_type_table

def read_name(buf,pos):
    if pos+4>len(buf):raise ValueError('bad length offset')
    size=struct.unpack_from('<i',buf,pos)[0]
    if size<0 or size>8192 or pos+4+size>len(buf):raise ValueError('bad string length')
    value=buf[pos+4:pos+4+size].decode('utf-8','replace')
    return value,(pos+4+size+3)&~3

def decode_script_object(data):
    pos=0
    name,pos=read_name(data,pos)
    if pos+20>len(data):raise ValueError('header truncation')
    order=struct.unpack_from('<i',data,pos)[0];pos+=4
    digest=data[pos:pos+16].hex();pos+=16
    klass,pos=read_name(data,pos)
    namespace,pos=read_name(data,pos)
    assembly,pos=read_name(data,pos)
    if pos!=len(data):raise ValueError(f'consumed {pos}, declared {len(data)}')
    return {'name':name,'execution_order':order,'properties_hash':digest,
            'class_name':klass,'namespace':namespace,'assembly':assembly}

def inspect_pack(xapk,pack):
    with zipfile.ZipFile(xapk) as outer:
        with zipfile.ZipFile(io.BytesIO(outer.read(pack+'.apk'))) as inner:
            payload=inner.read('assets/assetpack/'+pack)
    serialized=serialized_bundle_head(payload,parse_unityfs(payload))
    types,objects,data_start=serialized_type_table(serialized)
    scripts={};errors=[];examples=[]
    for pathid,off,size,tid in objects:
        if types[tid][0]!=115:continue
        b=serialized[data_start+off:data_start+off+size]
        try:
            value=decode_script_object(b)
            scripts[pathid]={**value,'script_path_id':pathid,'bundle':pack,'object_offset':off}
        except Exception as e:
            errors.append({'path_id':str(pathid),'error':str(e)})
    class114={}
    for pathid,off,size,tid in objects:
        if types[tid][0]!=114 or size<28:continue
        # MonoBehaviour common prefix: PPtr<GameObject>(4+8), enabled (1)+3pad,
        # PPtr<MonoScript>(4+8). Validate any assumption by confirming path id.
        b=serialized[data_start+off:data_start+off+min(size,64)]
        fileid,script_pathid=struct.unpack_from('<iq',b,16)
        entry=class114.setdefault(tid,{'class_id':114,'type_index':tid,'type_hash':types[tid][2],
                                         'object_count':0,'first_object_pathid':str(pathid),
                                         'script_path_id':str(script_pathid),'script_file_id':fileid,
                                         'script_class_name':None,'script_namespace':None,'script_assembly':None})
        entry['object_count']+=1
        if len(examples)<30:
            examples.append({'bundle':pack,'component_path_id':str(pathid),'type_index':tid,
                             'mono_script_path_id':str(script_pathid),'linked':script_pathid in scripts})
    for tid,row in class114.items():
        pid=int(row['script_path_id']);s=scripts.get(pid)
        if s:
            row['script_class_name']=s['class_name']
            row['script_namespace']=s['namespace']
            row['script_assembly']=s['assembly']
    return {'bundle':pack,'script_count':len(scripts),'script_parse_errors':errors,
            'class_114_types':list(class114.values()),'scripts':list(scripts.values()),
            'mono_count':sum(x['object_count'] for x in class114.values()),'link_examples':examples}

if __name__=='__main__':
    if len(sys.argv)<4:raise SystemExit('python parse_monoscripts_and_links.py <XAPK> <OUT_DIR> <pack> [<pack> ...]')
    game=Path(sys.argv[1]);outdir=Path(sys.argv[2]);outdir.mkdir(parents=True,exist_ok=True)
    output=[]
    for pack in sys.argv[3:]:
        result=inspect_pack(game,pack)
        print(pack,'scripts',result['script_count'],'parse_err',len(result['script_parse_errors']),
              'mono',result['mono_count'],'linked types',sum(x['script_class_name'] is not None for x in result['class_114_types']),
              'of',len(result['class_114_types']),flush=True)
        output.append(result)
    (outdir/'LienKet_MonoScript_MonoBehaviour.json').write_text(json.dumps(output,ensure_ascii=False,indent=2),encoding='utf8')
    with open(outdir/'LienKet_TypeTree_ClassGame.csv','w',newline='',encoding='utf-8') as f:
        cols=['bundle','type_index','type_hash','object_count','script_class_name','script_namespace','script_assembly','script_path_id','script_file_id','first_object_pathid']
        w=csv.DictWriter(f,fieldnames=cols,extrasaction='ignore');w.writeheader()
        for r in output:
            for row in r['class_114_types']:w.writerow({'bundle':r['bundle'],**row})
    with open(outdir/'MonoScript_ClassNames_Goc.csv','w',newline='',encoding='utf-8') as f:
        cols=['bundle','script_path_id','class_name','namespace','assembly','name','properties_hash','execution_order','object_offset']
        w=csv.DictWriter(f,fieldnames=cols,extrasaction='ignore');w.writeheader()
        for r in output:
            w.writerows(r['scripts'])
