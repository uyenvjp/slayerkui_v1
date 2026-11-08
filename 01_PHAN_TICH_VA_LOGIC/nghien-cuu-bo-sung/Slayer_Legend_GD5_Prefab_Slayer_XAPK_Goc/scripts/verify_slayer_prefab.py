#!/usr/bin/env python3
"""Read-only verifiable avatar prefab PPtr traversal from Slayer Legend 700.0.4 XAPK.

No external image assets, no guessed cosmetic IDs, no Unity runtime, no LIAPP bypass.
Usage: python verify_slayer_prefab.py /path/to/game.xapk /path/to/out
"""
from pathlib import Path
import collections
import csv
import gc
import hashlib
import io
import json
import struct
import sys
import zipfile

from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from read_serial_values import serialized_type_table, read_one
from scene_parser import parse as parse_scene

XAPK = Path(sys.argv[1])
OUT = Path(sys.argv[2])
OUT.mkdir(parents=True, exist_ok=True)
HEADERS = {
    'PlayerInGameDisplay': '4eabe2c9972c74f672c222da7c385ea3',
    'SpriteRenderer': '231f81ccfaa84f1a447c2fd7e50f9120',
    'GameObject': '86e34eb8ee7642b089fb98c9d81dd9b0',
}
PARTS = (
    'Body', 'Costume', 'Head', 'Hair', 'Hat', 'Hair_Back', 'Hair_Light',
    'Face', 'FaceDeco', 'Earring', 'Cloak_Front', 'Cloak_Back', 'Lens',
    'Leg_Body', 'Leg_Costume', 'Equipment_SpriteRenderer',
)

def sha256_file(path):
    h=hashlib.sha256()
    with Path(path).open('rb') as f:
        while True:
            chunk=f.read(4*1024*1024)
            if not chunk:break
            h.update(chunk)
    return h.hexdigest()

def source_blob(apk, key):
    path = 'assets/bin/Data/' + key
    try:
        return apk.read(path)
    except KeyError:
        sections = [name for name in apk.namelist() if name.startswith(path + '.split') and name.rsplit('.split',1)[-1].isdigit()]
        if not sections:
            raise
        numbered = sorted(int(p.rsplit('.split',1)[1]) for p in sections)
        if numbered != list(range(len(numbered))):
            raise ValueError(f'Split numbering incomplete: {key}')
        return b''.join(apk.read(path + '.split' + str(i)) for i in numbered)

def indexed_scene(data):
    typ, objs, dataoff, endpos = parse_scene(data)
    bypath = {path: (off, size, idx) for path,off,size,idx in objs}
    return typ, bypath, dataoff, endpos

def parse_externals(data, position):
    f = io.BytesIO(data)
    f.seek(position)
    script_count = struct.unpack('<i',f.read(4))[0]
    if not (0 <= script_count <= 500000):
        raise ValueError('bad script count')
    f.seek(script_count * 12,1)
    n = struct.unpack('<i',f.read(4))[0]
    if not (0 <= n <= 50000):
        raise ValueError('bad external reference count')
    out = []
    def cstr():
        b = bytearray()
        while True:
            ch=f.read(1)
            if not ch:raise EOFError('incomplete external string')
            if ch == b'\0':return b.decode('utf8','replace')
            b.extend(ch)
    for file_id in range(1,n+1):
        extra=cstr()
        guid=f.read(16).hex()
        typ=struct.unpack('<i',f.read(4))[0]
        path=cstr()
        out.append(dict(file_id=file_id,path=path,guid=guid,type=typ,extra=extra))
    return out

def parse_object(data, typ, bypath, base, path_id, tree):
    if path_id not in bypath:
        return dict(status='path_id_not_found')
    off,size,tidx = bypath[path_id]
    cid, thash, *_ = typ[tidx]
    ans = {'class_id':cid,'type_hash':thash,'declared_size':size,'path_id':path_id}
    if tree is None:
        # Sprite and Texture2D both begin with an aligned m_Name string.
        if cid not in (213,28):
            ans['status']='not_a_sprite'
            return ans
        raw=data[base+off:base+off+size]
        if len(raw) < 4:
            ans['status']='too_short'
            return ans
        n=struct.unpack_from('<i',raw)[0]
        if 0<=n<256 and 4+n<=len(raw):
            ans['sprite_name']=raw[4:4+n].decode('utf8','strict')
            ans['status']='name_from_serialized_sprite'
        else:ans['status']='invalid_m_Name'
        return ans
    if thash not in tree:
        ans['status']='unknown_type_tree'
        return ans
    f=io.BytesIO(data[base+off:base+off+size])
    values=read_one(f,tree[thash])
    if f.tell()!=size:
        raise ValueError(f'{path_id}: read {f.tell()} but expected {size}')
    ans['status']='fully_read'
    ans['values']=values
    return ans

with zipfile.ZipFile(XAPK) as outer:
    # Get original TypeTrees from a resource bundle that contains type metadata.
    with zipfile.ZipFile(io.BytesIO(outer.read('monster.apk'))) as inner:
        raw=inner.read('assets/assetpack/monster')
    asset=serialized_bundle_head(raw,parse_unityfs(raw))
    types,_,_=serialized_type_table(asset)
    trees={h:root for cid,root,h in types if h in set(HEADERS.values())}
    if len(trees)!=len(HEADERS):
        raise ValueError(f'Missing required TypeTrees: {set(HEADERS.values())-set(trees)}')
    del raw,asset,types
    gc.collect()

    with zipfile.ZipFile(io.BytesIO(outer.read('com.gear2.growslayer.apk'))) as apk:
        shared1=source_blob(apk,'sharedassets1.assets')
        ty1,ob1,base1,end1=indexed_scene(shared1)
        externals=parse_externals(shared1,end1)
        print('sharedassets1 external refs:',len(externals),flush=True)
        if len(externals)!=902:raise ValueError('unanticipated external layout')
        players=[]
        for path,(off,size,tidx) in ob1.items():
            cid,h,*_=ty1[tidx]
            if cid==114 and h==HEADERS['PlayerInGameDisplay']:
                val=parse_object(shared1,ty1,ob1,base1,path,trees)
                if val['status']!='fully_read':raise ValueError('Player prefab incomplete')
                go=val['values']['m_GameObject']['m_PathID']
                go_info=parse_object(shared1,ty1,ob1,base1,go,trees)
                players.append(dict(player_path_id=path,gameobject_path_id=go,gameobject_name=go_info['values'].get('m_Name'),values=val['values'],declared_bytes=size))
        if len(players)!=2:raise ValueError(f'expected 2 prefab instances, got {len(players)}')
        print('player components:',len(players),'PathIDs:',[p['player_path_id'] for p in players],flush=True)
        shared0=None
        extfile_cache={}
        rows=[]
        for player in players:
            for part in PARTS:
                ref=player['values'].get(part,{})
                if not isinstance(ref,dict) or not {'m_FileID','m_PathID'}<=ref.keys():
                    continue
                r=ref['m_PathID']
                result=dict(player_component=player['player_path_id'],player_object=player['gameobject_name'],part=part,
                            renderer_local_path_id=r,renderer_class_id=None,
                            sprite_file_id=None,sprite_path_id=None,sprite_source_file='',sprite_name='',
                            evidence_status='')
                if not r:
                    result['evidence_status']='no_renderer_reference';rows.append(result);continue
                renderer=parse_object(shared1,ty1,ob1,base1,r,trees)
                result['renderer_class_id']=renderer.get('class_id')
                if renderer['status']!='fully_read' or renderer['class_id']!=212:
                    result['evidence_status']='renderer_not_resolved';rows.append(result);continue
                sprite=renderer['values']['m_Sprite']
                fid,pid=sprite['m_FileID'],sprite['m_PathID']
                result['sprite_file_id']=fid;result['sprite_path_id']=pid
                if not pid:
                    result['evidence_status']='sprite_not_assigned';rows.append(result);continue
                if fid==0:
                    sinfo=parse_object(shared1,ty1,ob1,base1,pid,None)
                    result['sprite_source_file']='sharedassets1.assets'
                elif 1<=fid<=len(externals):
                    extname=externals[fid-1]['path']
                    result['sprite_source_file']=extname
                    if extname=='sharedassets0.assets':
                        if shared0 is None:
                            data0=source_blob(apk,'sharedassets0.assets')
                            ty0,ob0,base0,end0=indexed_scene(data0)
                            shared0=(data0,ty0,ob0,base0)
                        data0,ty0,ob0,base0=shared0
                        sinfo=parse_object(data0,ty0,ob0,base0,pid,None)
                    else:
                        if extname not in extfile_cache:
                            dataext=source_blob(apk,extname)
                            extfile_cache[extname]=(dataext,*indexed_scene(dataext)[:3])
                        dataext,tyext,obext,baseext=extfile_cache[extname]
                        sinfo=parse_object(dataext,tyext,obext,baseext,pid,None)
                else:
                    result['evidence_status']='bad_external_id';rows.append(result);continue
                result['sprite_name']=sinfo.get('sprite_name','')
                result['evidence_status']=sinfo.get('status')
                if sinfo.get('class_id')!=213:
                    result['evidence_status']+=';not_sprite_class'
                rows.append(result)

    output = dict(
        source_file=XAPK.name,
        source_sha256=sha256_file(XAPK),
        workflow='UnityFS TypeTree from monster bundle -> sharedassets1 stripped scene -> PlayerInGameDisplay MonoBehaviour -> component SpriteRenderer -> m_Sprite -> serialized Sprite m_Name',
        stripped_scene_type_tree=False,
        sharedassets1_external_file_count=len(externals),
        player_instances=[dict(player_component=p['player_path_id'],gameobject_path_id=p['gameobject_path_id'],gameobject_name=p['gameobject_name'],state=p['values']['state'],attackHitRange=p['values']['attackHitRange'],attackHitHeight=p['values']['attackHitHeight'],
                               player_layers={k:v for k,v in p['values'].items() if k in PARTS}) for p in players],
        named_sprite_refs=rows,
        interpretation='Prefab references reflect static serialized assignments. They do not prove new-account default appearance or final combat behavior; runtime logic can override them.',
    )
    (OUT/'verified_avatar_prefab.json').write_text(json.dumps(output,ensure_ascii=False,indent=2),encoding='utf8')
    with (OUT/'avatar_sprite_references.csv').open('w',encoding='utf-8-sig',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]))
        w.writeheader();w.writerows(rows)
    print('WROTE',len(rows),'component rows','resolved',sum(r['evidence_status']=='name_from_serialized_sprite' for r in rows))
    for row in rows:
        if row['sprite_name']:
            print(row['player_component'],row['part'],row['sprite_name'])
