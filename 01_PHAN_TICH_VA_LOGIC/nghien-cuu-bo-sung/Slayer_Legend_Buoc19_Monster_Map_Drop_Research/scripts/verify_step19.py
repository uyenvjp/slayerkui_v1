#!/usr/bin/env python3
"""Slayer Legend 700.0.4: read-only verification and sprite catalog from user-supplied XAPK.

Usage:
 python scripts/verify_step19.py <xapk> <Stage3000.csv> <MonsterInfoBaseData.json> [libil2cpp.so] [output_folder]

No asset substitution, no art generation, no network, no writes to input files.
Original APK assets/assetpack/monster and map are decompressed in memory.
"""
import sys,os,zipfile,io,struct,hashlib,json,csv,ast,re,collections,pathlib,contextlib
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from scene_parser import parse

def valid_sprite_name(b):
 if len(b)<4:return None
 n=struct.unpack_from('<i',b)[0]
 if 0<n<1000 and 4+n<=len(b):
  return b[4:4+n].decode('utf-8','replace')
 return None

def read_bundle(xapk, pack):
 with zipfile.ZipFile(xapk) as z:
  with zipfile.ZipFile(io.BytesIO(z.read(pack+'.apk'))) as a:
   blob=a.read('assets/assetpack/'+pack)
 meta=parse_unityfs(blob)
 raw=serialized_bundle_head(blob,meta)
 with contextlib.redirect_stdout(io.StringIO()):
  types,objs,base,tail=parse(raw)
 sprites=[];textures=[];others=collections.Counter()
 for pid,off,size,tid in objs:
  cls=types[tid][0]
  if cls not in (213,28):
   others[cls]+=1
   continue
  item=raw[base+off:base+off+size]
  obj={'path_id':pid,'name':valid_sprite_name(item),'serialized_size':size}
  if cls==213:sprites.append(obj)
  else:textures.append(obj)
 return {'source_assetpack':pack,'sprites':sprites,'textures':textures,'serial_objects':len(objs),'other_class_counts':dict(others),'source_node_count':len(meta['nodes'])}

def sha(path):
 h=hashlib.sha256()
 with open(path,'rb') as f:
  for chunk in iter(lambda:f.read(4*1024*1024),b''): h.update(chunk)
 return h.hexdigest()

def bl_target(binary,va):
 # On this specific ARM64 ELF build: executable LOAD VA 0x411c800 is file offset 0x4118800.
 file_offset=va-0x4000
 v=struct.unpack_from('<I',binary,file_offset)[0]
 if (v & 0xFC000000)!=0x94000000:return {'opcode':hex(v),'actual_target':None}
 offset=v&0x3FFFFFF
 if offset & 0x2000000:offset-=0x4000000
 return {'opcode':hex(v),'actual_target':hex(va+offset*4)}

def write_csv(path,rows,fields):
 with open(path,'w',newline='',encoding='utf-8-sig') as f:
  w=csv.DictWriter(f,fieldnames=fields,extrasaction='ignore');w.writeheader();w.writerows(rows)

def main(xapk,stage_csv,monster_json,so=None,out='step19_output'):
 out=pathlib.Path(out);out.mkdir(parents=True,exist_ok=True)
 stage=list(csv.DictReader(open(stage_csv,encoding='utf-8-sig')))
 mons=json.loads(pathlib.Path(monster_json).read_text(encoding='utf-8-sig'))
 monster=read_bundle(xapk,'monster'); mapp=read_bundle(xapk,'map')
 sprite_lookup=collections.defaultdict(list)
 for x in monster['sprites']:sprite_lookup[x['name']].append(x['path_id'])
 used=collections.defaultdict(list)
 for s in stage:
  for mid in set(ast.literal_eval(s['Monster'])):
   if mid>0:used[mid].append(int(s['Id']))
 rows=[]; missing=[]
 for m in mons:
  mid=m['Id'];key=f'{mid:03d}' if mid<=999 else str(mid)
  frames=[sprite_lookup.get(f'{key}_{i}',[]) for i in range(16)]
  n=sum(bool(v) for v in frames)
  if mid in used and n<16:missing.append({'id':mid,'present':n,'stages':used[mid]})
  rows.append({'MonsterID':mid,'Name':m['Name'],'EnemyType':m['EnemyType'],'UsedInStageCount':len(used.get(mid,[])),'FirstStages':','.join(map(str,used.get(mid,[])[:15])),'VerifiedFrameCount':n,'SpriteNamePattern':f'{key}_{{0..15}}','Frame0PathID':frames[0][0] if frames[0] else '', 'MissingIndices':','.join(str(i) for i,f in enumerate(frames) if not f)})
 write_csv(out/'MonsterID_SpritePathID.csv',rows,list(rows[0]))
 strows=[]
 for s in stage:
  sid=int(s['Id']); mi=ast.literal_eval(s['Monster'])
  for idx,mid in enumerate(mi):
   if mid<=0:continue
   prefix=f'{mid:03d}' if mid<=999 else str(mid)
   strows.append({'StageID':sid,'StageMapID':s['Map'],'MonsterSlot':idx,'MonsterID':mid,'SpritePrefix':prefix,'FrameCount':sum(bool(sprite_lookup.get(f'{prefix}_{i}')) for i in range(16)),'Frame0PathID':(sprite_lookup.get(f'{prefix}_0') or [''])[0]})
 write_csv(out/'Stage_Monster_Sprite_Links.csv',strows,list(strows[0]))
 mp=[];base_map=collections.defaultdict(list)
 for s in mapp['sprites']:
  mm=re.fullmatch(r'(.+?) Layer (\d+)',s['name'] or '')
  b=mm.group(1) if mm else ''
  if b:base_map[b].append(int(mm.group(2)))
  mp.append({'SpriteName':s['name'],'SpritePathID':s['path_id'],'BaseMapName':b,'LayerNo':mm.group(2) if mm else ''})
 write_csv(out/'MapSprite_Layer_Index.csv',mp,list(mp[0]))
 (out/'MonsterSprites_15987.json').write_text(json.dumps(monster['sprites'],ensure_ascii=False),encoding='utf-8')
 (out/'MapSprites_1356.json').write_text(json.dumps(mapp['sprites'],ensure_ascii=False),encoding='utf-8')
 checks=[]
 def ck(label,got,expected):checks.append({'check':label,'passed':got==expected,'observed':got,'expected':expected})
 ck('original_xapk_sha256',sha(xapk),'b8c19d5fdf4da70c8c45cddf3f7e6b8a850863fd55b09b087c6d06d7001d6098')
 ck('original_monster_sprite_class_count',len(monster['sprites']),15987)
 ck('original_map_sprite_class_count',len(mapp['sprites']),1356)
 ck('original_stage_rows',len(stage),3000)
 ck('original_monster_table_rows',len(mons),952)
 ck('unique_stage_used_monster_ids',len(used),575)
 ck('stage_used_monsters_with_16_frames',sum(any(r['MonsterID']==m and r['VerifiedFrameCount']==16 for r in rows) for m in used),574)
 ck('stage_used_missing_id',sorted(x['id'] for x in missing),[102])
 ck('map_layer_named_groups',len(base_map),149)
 ck('map_layer_sprite_total',sum(map(len,base_map.values())),1179)
 # Verify frame indices and Id cross references without guessing the default character or stage.
 for mid in (1,6,28,32,53):
  pref=f'{mid:03d}';ck(f'monster_{mid}_has_all_frames',all(len(sprite_lookup.get(f'{pref}_{i}',[]))==1 for i in range(16)),True)
 if so:
  ck('libil2cpp_sha256',sha(so),'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537')
  binary=open(so,'rb').read()
  callsites={
   0x4e518fc:0x4ecb900, # stage enemy pool
   0x50b4c54:0x4cc9b4c, # enemy animation sprite
   0x50b4cb0:0x4cc9b4c,
   0x4cc9c60:0x4cc9aa0, # monster ID name key
   0x4ec09a8:0x4cca6a4, # per-map sprite
   0x50f9510:0x50f9804, # death invokes stage drops
   0x50f97dc:0x4e466f8, # death notifies manager
   0x50f9a50:0x4e513b4, # stage gold in drop
   0x4e43924:0x4e50c80, # buffed stage gold
   0x4e5143c:0x99fb600, # rng(90,111)
  }
  for va,dest in callsites.items():
   b=bl_target(binary,va);ck(f'bl_{va:08x}',b['actual_target'],hex(dest))
  # Constants are checked from exact contiguous opcodes in ELF.
  for va,op in [(0x4e51430,0x52800b40),(0x4e51434,0x52800de1),(0x4e51484,0x52800c80)]:
   val=struct.unpack_from('<I',binary,va-0x4000)[0];ck(f'gold_moving_constant_{va:08x}',hex(val),hex(op))
 result={'input_xapk':os.path.basename(xapk),'xapk_sha256':sha(xapk),'monster_sprite_count':len(monster['sprites']),'monster_texture_count':len(monster['textures']),'map_sprite_count':len(mapp['sprites']),'map_texture_count':len(mapp['textures']),'monster_info_count':len(mons),'total_stage_rows':len(stage),'unique_stage_monster_ids':len(used),'complete_16_frame_ids_in_stage':sum(r['MonsterID'] in used and r['VerifiedFrameCount']==16 for r in rows),'missing_used_monster_ids':missing,'map_layer_series_count':len(base_map),'map_layer_sprite_count':sum(map(len,base_map.values())),'all_monsters_with_16_frames':sum(r['VerifiedFrameCount']==16 for r in rows),'sprite_class_duplicates':len(monster['sprites'])-len(sprite_lookup),'checks':checks,'check_pass_count':sum(x['passed'] for x in checks),'check_count':len(checks),'notes':['Sprite name and PathID verified from original UnityFS, not extracted PNG.','Map ID to named layer mapping not verified.','Initial account Stage/appearance not verified.','Loot formula and IFix runtime patch not fully verified.']}
 (out/'verification_step19.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
 print('Checked',result['check_pass_count'],'/',result['check_count'],'Monster IDs with 16 frames:',result['complete_16_frame_ids_in_stage'],'/',result['unique_stage_monster_ids'],'Map groups',result['map_layer_series_count'])
 for c in checks:
  if not c['passed']:print('FAIL',c)
 return 0 if all(c['passed'] for c in checks) else 1

if __name__=='__main__':
 if len(sys.argv)<4:
  print(__doc__);sys.exit(2)
 sys.exit(main(sys.argv[1],sys.argv[2],sys.argv[3],sys.argv[4] if len(sys.argv)>4 and sys.argv[4]!='-' else None,sys.argv[5] if len(sys.argv)>5 else 'step19_output'))
