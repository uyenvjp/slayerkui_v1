#!/usr/bin/env python3
"""Read Unity GameObject names from the main APK scene by borrowing type trees from monster assetpack."""
import zipfile,io,json,sys,csv,re,collections,gc
from pathlib import Path
from read_serial_values import serialized_type_table,read_one
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from scene_parser import parse
X=Path(sys.argv[1]);OUT=Path(sys.argv[2]);OUT.mkdir(exist_ok=True,parents=True)
with zipfile.ZipFile(X) as outer:
 with zipfile.ZipFile(io.BytesIO(outer.read('monster.apk'))) as apk:
  b=apk.read('assets/assetpack/monster')
 data=serialized_bundle_head(b,parse_unityfs(b));tt,_,_=serialized_type_table(data)
 gameobject_tree=next(root for cid,root,h in tt if cid==1 and h=='86e34eb8ee7642b089fb98c9d81dd9b0')
 del b,data,tt;gc.collect()
 with zipfile.ZipFile(io.BytesIO(outer.read('com.gear2.growslayer.apk'))) as apk:
  files=apk.namelist();stem='assets/bin/Data/level1';n=sum(a.startswith(stem+'.split') for a in files)
  b=b''.join(apk.read(stem+'.split'+str(i)) for i in range(n))
  types,objs,base,end=parse(b)
  matched=[];allnames=collections.Counter();fail=0
  for path,off,size,tid in objs:
   if types[tid][0]!=1:continue
   f=io.BytesIO(b[base+off:base+off+size])
   try:val=read_one(f,gameobject_tree)
   except Exception:fail+=1;continue
   if f.tell()!=size:fail+=1;continue
   name=val['m_Name'];allnames[name]+=1
   if re.search(r'player|slayer|stage|begin|tutorial|start|skin|costume|game|enemy|field|scene|quest|character',name,re.I):
    matched.append(dict(path_id=path,name=name,enabled=val['m_IsActive'],layer=val['m_Layer']))
  with (OUT/'scene_level1_relevant_gameobjects.csv').open('w',encoding='utf-8-sig',newline='') as f:
   w=csv.DictWriter(f,fieldnames=['path_id','name','enabled','layer']);w.writeheader();w.writerows(matched)
  (OUT/'scene_level1_scan_stats.json').write_text(json.dumps(dict(gameobjects=sum(1 for x in objs if types[x[3]][0]==1),name_parsed=sum(allnames.values()),parse_failures=fail,unique_names=len(allnames),keyword_matched_count=len(matched),name_examples=allnames.most_common(25)),indent=2))
  print('gameobject',sum(allnames.values()),'failure',fail,'keyword',len(matched))
  print('Keyword name unique:',[(n,k) for n,k in collections.Counter(m['name'] for m in matched).most_common(100)])
