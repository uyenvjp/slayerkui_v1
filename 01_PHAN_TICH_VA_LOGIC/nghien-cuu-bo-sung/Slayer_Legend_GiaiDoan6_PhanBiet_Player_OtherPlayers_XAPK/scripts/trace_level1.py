#!/usr/bin/env python3
"""Read-only static Unity scene traversal: PlayerInGameDisplay in level1 and scene initialization.
Uses only original user XAPK and Unity TypeTrees from its own monster asset pack.
"""
from pathlib import Path
import zipfile,io,json,struct,sys,csv,collections,hashlib,gc
ROOT=Path(__file__).resolve().parent.parent
UTIL=Path(__file__).resolve().parent
sys.path.insert(0,str(UTIL))

from read_serial_values_fixed import serialized_type_table,read_one
from catalog_unity import serialized_bundle_head
from parse_unityfs import parse_unityfs
from scene_parser import parse
X=Path(sys.argv[1]).resolve()
OUT=Path(sys.argv[2]).resolve() if len(sys.argv)>2 else ROOT
OUT.mkdir(exist_ok=True)
PARTS=('Body','Costume','Head','Hair','Hat','Hair_Back','Hair_Light','Face','FaceDeco','Earring','Cloak_Front','Cloak_Back','Lens','Leg_Body','Leg_Costume','Equipment_SpriteRenderer')
TH={'Player':'4eabe2c9972c74f672c222da7c385ea3','Renderer':'231f81ccfaa84f1a447c2fd7e50f9120','GameObject':'86e34eb8ee7642b089fb98c9d81dd9b0'}
def blob(apk,key):
 pre='assets/bin/Data/'+key
 try:return apk.read(pre)
 except KeyError:
  names=[n for n in apk.namelist() if n.startswith(pre+'.split') and n.rsplit('.split',1)[-1].isdigit()]
  indices=sorted(int(n.rsplit('.split',1)[-1]) for n in names)
  if indices!=list(range(len(indices))):raise ValueError('missing split indices')
  return b''.join(apk.read(pre+'.split'+str(i)) for i in indices)
def read_externals(b,pos):
 f=io.BytesIO(b);f.seek(pos)
 n=struct.unpack('<i',f.read(4))[0]
 if not 0<=n<=100000:raise ValueError('script count '+str(n))
 f.seek(n*12,1)
 m=struct.unpack('<i',f.read(4))[0]
 if not 0<=m<=100000:raise ValueError('externals count '+str(m))
 items=[]
 def cstr():
  b=bytearray()
  while True:
   c=f.read(1)
   if c==b'\0':return b.decode('utf-8','replace')
   if not c:raise EOFError('external')
   b+=c
 for id in range(1,m+1):
  extra=cstr();guid=f.read(16).hex();type=struct.unpack('<i',f.read(4))[0];path=cstr()
  items.append({'file_id':id,'path':path,'extra':extra,'type':type,'guid':guid})
 return items
def read_typed(data,types,byid,base,pid,trees):
 hit=byid.get(pid)
 if hit is None:return {'status':'missing_object'}
 off,size,tid=hit;cid,h,si,p=types[tid]
 if cid==213:
  s=data[base+off:base+off+size]
  if len(s)<4:return {'status':'truncated_sprite'}
  ln=int.from_bytes(s[:4],'little',signed=True)
  return {'status':'sprite','cid':cid,'name':s[4:4+ln].decode('utf-8','replace')} if 0<=ln<1000 else {'status':'invalid_sprite'}
 if h not in trees:return {'status':'no_tree','cid':cid,'typehash':h}
 bio=io.BytesIO(data[base+off:base+off+size])
 try:val=read_one(bio,trees[h]);return {'status':'full' if bio.tell()==size else 'partial','cid':cid,'values':val,'expected_size':size,'bytes_read':bio.tell()}
 except Exception as ex:return {'status':'parse_error','cid':cid,'error':str(ex)}
with zipfile.ZipFile(X) as x:
 with zipfile.ZipFile(io.BytesIO(x.read('monster.apk'))) as a:b=a.read('assets/assetpack/monster')
 raw=serialized_bundle_head(b,parse_unityfs(b));typesmon,_,_=serialized_type_table(raw)
 trees={h:r for cid,r,h in typesmon if h in TH.values()};assert len(trees)==3
 del b,raw,typesmon;gc.collect()
 with zipfile.ZipFile(io.BytesIO(x.read('com.gear2.growslayer.apk'))) as a:
  scene=blob(a,'level1');types,objects,base,pos=parse(scene);byid={p:(off,size,tid) for p,off,size,tid in objects};external=read_externals(scene,pos)
  player_objects=[(p,off,size,tid) for p,off,size,tid in objects if types[tid][1]==TH['Player'] and types[tid][0]==114]
  print('objects',len(objects),'player display',len(player_objects),'external',len(external))
  cache={}
  def resolve(fid,pid):
   if pid==0:return {'status':'null_sprite'}
   if fid==0:return dict(read_typed(scene,types,byid,base,pid,trees),file='level1',file_id=fid,path_id=pid)
   if fid<0 or fid>len(external):return {'status':'invalid_external','file_id':fid,'path_id':pid}
   file=external[fid-1]['path']
   if not file:return {'status':'empty_external','file_id':fid,'path_id':pid}
   if file not in cache:
    try:
     raw=blob(a,file)
     t,ob,bo,ep=indexed(raw)
     cache[file]=(raw,t,ob,bo)
    except Exception as ex:return {'status':'external_read_error','file':file,'error':str(ex)}
   d,t,ob,bo=cache[file]
   return dict(read_typed(d,t,ob,bo,pid,trees),file=file,file_id=fid,path_id=pid)
  def indexed(s):
   ty,obj,base,ep=parse(s);return ty,{p:(off,size,idx) for p,off,size,idx in obj},base,ep
  players=[];refs=[]
  for path,off,size,tid in player_objects:
   info=read_typed(scene,types,byid,base,path,trees)
   if info['status']!='full':print('BAD',path,info['status']);continue
   val=info['values'];go=val['m_GameObject']['m_PathID'];go_info=read_typed(scene,types,byid,base,go,trees)
   name=go_info.get('values',{}).get('m_Name')
   row={'player_path_id':path,'gameobject_path_id':go,'gameobject':name,'state':val.get('state'),'isHat':val.get('isHat'),'attackHitRange':val.get('attackHitRange'),'attackHitHeight':val.get('attackHitHeight'),'layers':{}}
   for part in PARTS:
    r=val.get(part)
    if not isinstance(r,dict) or not 'm_PathID' in r:continue
    rend=read_typed(scene,types,byid,base,r['m_PathID'],trees)
    if rend['status']!='full' or rend.get('cid')!=212:
     sr={'status':'renderer_unavailable','renderer_pid':r['m_PathID'],'detail_status':rend['status']}
    else:
     s=rend['values']['m_Sprite'];sprite=resolve(s['m_FileID'],s['m_PathID'])
     sr={'renderer_pid':r['m_PathID'],'sprite_file_id':s['m_FileID'],'sprite_pid':s['m_PathID'],'sprite':sprite.get('name'), 'source_file':sprite.get('file'),'status':sprite.get('status')}
    row['layers'][part]=sr
    refs.append({'player_path_id':path,'gameobject_name':name,'part':part,**sr})
   players.append(row)
   print('PLAYER',path,name,'state',row['state'],'isHat',row['isHat'],'head',row['layers'].get('Head'),'weapon',row['layers'].get('Equipment_SpriteRenderer'))
  target_go={'TutorialManager','Player','GameManager','StageManager','StageBar','StageSlots','PanelnewbieQuest_mini','OtherPlayers','CharacterDisplay_Main','PlayerClassManager','SkinManager'}
  go_rows=[]
  for path,off,size,tid in objects:
   if types[tid][0]!=1:continue
   info=read_typed(scene,types,byid,base,path,trees)
   if info['status']!='full' or info['values']['m_Name'] not in target_go:continue
   val=info['values'];comp=[]
   for pp in val['m_Component']:
    pid=pp['component']['m_PathID'];inf=byid.get(pid)
    if not inf:continue
    coff,sz,ct=inf;cid,h,si,_=types[ct]
    comp.append({'path_id':pid,'class_id':cid,'type_hash':h,'serialized_size':sz,'script_index':si})
   go_rows.append({'path_id':path,'name':val['m_Name'],'active_in_scene':val['m_IsActive'],'components':comp})
  payload={'source':X.name,'source_sha256':hashlib.sha256(X.read_bytes()).hexdigest(),'scene':'level1','scene_object_count':len(objects),'scene_external_count':len(external),'player_in_game_display_count':len(player_objects),'player_instances':players,'scene_gameobjects':go_rows,'warning':'Static serialized scene data only; no runtime new-account defaults proven.'}
  (OUT/'level1_slayer_displays.json').write_text(json.dumps(payload,indent=2,ensure_ascii=False,default=str),encoding='utf-8')
  cols=['player_path_id','gameobject_name','part','renderer_pid','sprite_file_id','sprite_pid','sprite','source_file','status','detail_status']
  with (OUT/'level1_slayer_sprite_layers.csv').open('w',encoding='utf-8-sig',newline='') as f:
   w=csv.DictWriter(f,fieldnames=cols,extrasaction='ignore');w.writeheader();w.writerows(refs)
  print('WRITTEN',len(players),'players',len(refs),'sprite refs',sum(bool(i.get('sprite')) for i in refs),'named GO',len(go_rows))
