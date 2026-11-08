import io,zipfile,sys,gc,json,re
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from read_serial_values_fixed import serialized_type_table,read_one
from scene_parser import parse
P=sys.argv[1]
OUTPUT=Path(sys.argv[2]).resolve() if len(sys.argv)>2 else Path(__file__).resolve().parent.parent
with zipfile.ZipFile(P) as z:
 with zipfile.ZipFile(io.BytesIO(z.read('monster.apk'))) as a:b=a.read('assets/assetpack/monster')
 d=serialized_bundle_head(b,parse_unityfs(b));types0,_,_=serialized_type_table(d);trees={h:t for cid,t,h in types0};print('bundle typetrees',len(trees));del b,d,types0;gc.collect()
 with zipfile.ZipFile(io.BytesIO(z.read('com.gear2.growslayer.apk'))) as a:
  stem='assets/bin/Data/level1';n=sum(name.startswith(stem+'.split') for name in a.namelist());d=b''.join(a.read(stem+'.split'+str(i)) for i in range(n))
 ty,ob,base,end=parse(d);byid={p:(off,sz,tid) for p,off,sz,tid in ob}
 def get(pid):
  item=byid.get(pid)
  if not item:return None
  off,sz,tid=item;cid,h,si,p=ty[tid]
  if h not in trees:return None
  stream=io.BytesIO(d[base+off:base+off+sz])
  try: val=read_one(stream,trees[h])
  except Exception: return None
  if stream.tell()!=sz:return None
  return val
 names=[]
 for pid,off,sz,tid in ob:
  if ty[tid][0]!=1:continue
  val=get(pid)
  if not val:continue
  name=val.get('m_Name','')
  if re.search(r'^t_stage|^t_Stage|stageNumber|stageName|Stage_Spirit',name,re.I):
   items=[]
   for co in val.get('m_Component',[]):
    child=co['component']['m_PathID'];ent=byid.get(child)
    if not ent:continue
    h=ty[ent[2]][1];cv=get(child)
    if not cv:continue
    fields={k:v for k,v in cv.items() if re.search(r'^m_Text$|^text$|^m_FontSize$|^key$|^prefix$|^suffix$',k)}
    if fields:items.append({'component_path_id':child,'typehash':h,'fields':fields})
   names.append({'pathid':pid,'name':name,'components':items})
 print('matched GO',len(names),'textField match',sum(len(r['components']) for r in names))
 for r in names[:35]:
  print(r)
 (OUTPUT/'stage_ui_serialized_labels.json').write_text(json.dumps(names,indent=2,ensure_ascii=False,default=str))
