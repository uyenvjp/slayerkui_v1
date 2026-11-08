#!/usr/bin/env python3
"""Read-only Slayer Legend 700.0.4 Unity sprite inventory verification.

Reads only the user's XAPK, hero and skin assetpacks. Does NOT make or substitute art.
Depends on bundled parse_unityfs.py, catalog_unity.py, read_serial_values.py.
"""
import csv, hashlib, io, json, struct, sys, zipfile
from collections import Counter, defaultdict
from pathlib import Path
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from read_serial_values import serialized_type_table

XAPK = Path(sys.argv[1]) if len(sys.argv)>1 else Path('/mnt/data/Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk')
OUT = Path(sys.argv[2]) if len(sys.argv)>2 else Path('..')
OUT.mkdir(parents=True, exist_ok=True)
summary = {'source_filename': XAPK.name, 'xapk_sha256': None,'packs': {}, 'notes': ['Asset names and counts come from serialized Unity objects, not inferred from a YouTube video.', 'No default player costume has been identified; missing configuration is not guessed.']}
rows=[]
with zipfile.ZipFile(XAPK) as outer:
  for pack in ('hero','skin'):
    with zipfile.ZipFile(io.BytesIO(outer.read(pack+'.apk'))) as inner:
      bundle = inner.read('assets/assetpack/'+pack)
    head=parse_unityfs(bundle)
    serialized=serialized_bundle_head(bundle,head)
    types,objects,base=serialized_type_table(serialized)
    count=Counter();group=Counter();samples=defaultdict(list)
    for path,offset,size,tidx in objects:
      class_id=types[tidx][0]
      count[str(class_id)]+=1
      if class_id not in (213,28):
        continue
      if size<4: continue
      pos=base+offset
      n=struct.unpack_from('<i',serialized,pos)[0]
      if n < 0 or n > 256 or n+4>size:
        raise ValueError(f'Invalid name size {n} in {pack} {path}')
      name=serialized[pos+4:pos+4+n].decode('utf-8','strict')
      category=(name.split('_')[0] or '').lower()
      # Treat skin_* categories separately to locate avatar construction layers.
      if pack=='skin' and name.lower().startswith('skin_'):
        category='_'.join(name.lower().split('_')[:2])
      if pack=='skin' and name.lower().startswith('display_'):
        category='_'.join(name.lower().split('_')[:2])
      group[(class_id,category)]+=1
      if len(samples[(class_id,category)]) < 8:
        samples[(class_id,category)].append(name)
      rows.append({'bundle':pack, 'class_id':class_id,'path_id':path, 'name':name,'category':category})
    summary['packs'][pack]={'bundle_sha256':hashlib.sha256(bundle).hexdigest(), 'unity_revision':head['unity_revision'], 'serialized_object_count':len(objects), 'class_id_counts':dict(count), 'groups':[{'class_id':cl,'category':g,'count':n,'examples':samples[(cl,g)]} for (cl,g),n in group.most_common()]}
    print(pack, 'sprites',count['213'],'textures',count['28'],'total',len(objects))

with (OUT/'XAPK_original_sprite_names.csv').open('w',encoding='utf-8-sig',newline='') as f:
  w=csv.DictWriter(f,fieldnames=['bundle','class_id','path_id','name','category'])
  w.writeheader();w.writerows(rows)
(OUT/'XAPK_Hero_Skin_Verified.json').write_text(json.dumps(summary,indent=2,ensure_ascii=False),encoding='utf-8')
print('saved',len(rows),'sprite and texture names')
