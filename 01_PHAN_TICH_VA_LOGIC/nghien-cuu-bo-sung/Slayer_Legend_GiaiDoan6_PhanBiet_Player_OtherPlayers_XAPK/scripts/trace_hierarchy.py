import sys,zipfile,io,gc,json,struct
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from read_serial_values_fixed import serialized_type_table,read_one
from scene_parser import parse
p=Path(sys.argv[1]).resolve()
scene_name=sys.argv[2] if len(sys.argv)>2 else 'level1'
assert scene_name in ('level1','sharedassets1.assets')
output=Path(sys.argv[3]).resolve() if len(sys.argv)>3 else Path(__file__).resolve().parent.parent
with zipfile.ZipFile(p) as z:
 with zipfile.ZipFile(io.BytesIO(z.read('monster.apk'))) as a:buf=a.read('assets/assetpack/monster')
 raw=serialized_bundle_head(buf,parse_unityfs(buf));tt,_,_=serialized_type_table(raw)
 roots={h:tree for cid,tree,h in tt if cid in [1,4,224,114]};print('Transform trees',[(cid,h,[x['name'] for x in tr['children']][:15]) for cid,tr,h in tt if cid==4][:3]);del buf,raw,tt;gc.collect()
 with zipfile.ZipFile(io.BytesIO(z.read('com.gear2.growslayer.apk'))) as a:
  stem='assets/bin/Data/'+scene_name;n=sum(x.startswith(stem+'.split') for x in a.namelist());src=b''.join(a.read(stem+'.split'+str(i)) for i in range(n))
 types,objs,base,at=parse(src);byid={pid:(off,sz,tid) for pid,off,sz,tid in objs};
 def get(pid):
  o=byid.get(pid)
  if not o:return None
  off,sz,tid=o;cid,h,si,_=types[tid]
  if h not in roots:return {'cid':cid,'hash':h}
  s=io.BytesIO(src[base+off:base+off+sz])
  try:
   v=read_one(s,roots[h]);return {'cid':cid,'hash':h,'values':v,'consumed':s.tell(),'size':sz}
  except Exception as e:return {'cid':cid,'hash':h,'error':str(e)}
 def findpath(go):
  x=get(go)
  if not x or 'values' not in x:return {'pathid':go,'error':'missing GameObject'}
  comps=x['values'].get('m_Component',[])
  trs=[v['component']['m_PathID'] for v in comps if get(v['component']['m_PathID'])['cid'] in [4,224]]
  return {'go':go,'name':x['values'].get('m_Name'),'transforms':trs}
 allpaths=[]
 for go in ([22167,22168,22169,22170,6416,2816,1522] if scene_name=='level1' else [3317,3757]):
  obj=findpath(go)
  print('\nSTART',go,obj)
  trs=obj.get('transforms',[])
  if not trs:continue
  tr=trs[0];chain=[];seen=set()
  for _ in range(25):
   if tr in seen or not tr:break
   seen.add(tr)
   x=get(tr)
   if not x or 'values' not in x:chain.append({'transform_pathid':tr,'error':x});break
   v=x['values'];parent=v.get('m_Father',{}).get('m_PathID',0)
   gg=v.get('m_GameObject',{}).get('m_PathID',0)
   gginfo=findpath(gg) if gg else {}
   chain.append({'transform_pathid':tr,'go':gg,'name':gginfo.get('name'),'parent_transform':parent,'bytes_read':x.get('consumed'),'object_size':x.get('size')})
   tr=parent
  allpaths.append({'start_go':go,'hierarchy':chain})
  print('HIERARCHY',[(v.get('name'),v.get('go'),v.get('bytes_read'),v.get('object_size')) for v in chain])
 (output/('level1_player_hierarchy.json' if scene_name=='level1' else 'sharedassets1_prefab_hierarchy.json')).write_text(json.dumps(allpaths,ensure_ascii=False,indent=2,default=str))
