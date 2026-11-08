#!/usr/bin/env python3
"""Read-only checkpoint verification for Slayer Legend 700.0.4.
Inputs: prior checkpoint ZIP with table JSON and field/method maps; extracted libil2cpp.so.
Uses an ELF64 segment reader and direct decoding of AArch64 BL-immediate instructions. This script does not run, patch, or modify the game.
"""
import csv, hashlib, io, json, os, re, struct, sys, zipfile

METHODS={
 'PlayerInGameDisplay::InitPlayer_MySkin':(0x535214c,0x53522e4),
 'PlayerInGameDisplay::SettingSkin':(0x5351af8,0x5351b78),
 'SkinManager::GetMyOriginalSkinData':(0x535ecc4,0x535ed20),
 'DatabaseManager::BuildUserAppearanceInfo':(0x4d4bc84,0x4d4c304),
 'DatabaseManager::get_Skin_BodyIndex':(0x4d4b038,0x4d4b090),
 'StageManager::SelectStage':(0x53a2688,0x53a2910),
 'GameManager::Stage_Init':(0x4e425bc,0x4e431fc),
 'UserData::get_StageCurrent':(0x53eb268,0x53eb270),
}
TARGET_LINKS={
 'PlayerInGameDisplay::InitPlayer_MySkin': {'PlayerInGameDisplay::SettingSkin':0x5351af8},
 'SkinManager::GetMyOriginalSkinData': {'DatabaseManager::BuildUserAppearanceInfo':0x4d4bc84},
 'DatabaseManager::BuildUserAppearanceInfo': {
    'DatabaseManager::get_Skin_BodyIndex':0x4d4b038,
    'DatabaseManager::get_Skin_FaceIndex':0x4d4b168,
    'DatabaseManager::get_Skin_HairIndex':0x4d4b304,
    'DatabaseManager::get_Skin_HatIndex':0x4d4b564,
    'DatabaseManager::get_Skin_CostumeIndex':0x4d4ab28,
    'DatabaseManager::get_Skin_WeaponIndex':0x4d4a804,
 },
 'StageManager::SelectStage': {
    'APIManager::EnterStage':0x50d0ab4,
    'GameManager::SceneChage_BlackOut_StageInit':0x4e45d00,
 },
 'GameManager::Stage_Init':{
    'MapManager::MapSetting_Index':0x4ec0c88,
    'PlayerBase::PlayerBattleStart':0x4ef4a60,
    'GameManager::Start_MakeEnemy_Stage':0x4e479ec,
 },
}

def sha256(path):
 h=hashlib.sha256()
 with open(path,'rb') as f:
  for b in iter(lambda:f.read(1024*1024),b''):h.update(b)
 return h.hexdigest()

def main():
 if len(sys.argv)!=4:
  print('Usage: python Slayer_Legend_Buoc13_Verify.py checkpoint.zip libil2cpp.so evidence.json')
  return 2
 zip_path,elf_path,out_path=sys.argv[1:]
 with zipfile.ZipFile(zip_path) as z:
  # Field offsets and method VAs were identified in the saved checkpoint tables.
  # Avoid loading the entire ~65k-method/field catalogs on every verification.
  fields=[
    {'name':'CharacterNumber','offset':0x568,'type':'int'},
    {'name':'Skin_BodyIndex0','offset':0x584,'type':'int'},
    {'name':'Skin_BodyIndex1','offset':0x5b0,'type':'int'},
    {'name':'Skin_CostumeIndex0','offset':0x588,'type':'int'},
    {'name':'Skin_CostumeIndex1','offset':0x5b4,'type':'int'},
    {'name':'Skin_FaceIndex0','offset':0x58c,'type':'int'},
    {'name':'Skin_FaceIndex1','offset':0x5b8,'type':'int'},
    {'name':'Skin_HairIndex0','offset':0x590,'type':'int'},
    {'name':'Skin_HairIndex1','offset':0x5bc,'type':'int'}
  ]
  st=[]
  for tab in ['StageInfoBaseData','StageInfoBase1000Data','StageInfoBase2000Data']:
   st+=json.loads(z.read('logic-full/table-json/'+tab+'.json'))
  samples=[{k:st[i][k] for k in ['Id','MainNumber','SubNumber','Map','Type','Hp','BossHp','BossAtk','Gold','Exp','Monster']} for i in [0,1,19,20,21,40,1000,2000,2999]]
 results={'sources':{'libil2cpp_sha256':sha256(elf_path),'checkpoint_zip_sha256':sha256(zip_path)},'stage':{'count':len(st),'ids_contiguous':all(x['Id']==i for i,x in enumerate(st)),'base_table_20_subs_each_main_0_to_49':all(sum(x['MainNumber']==n for x in st[:1000])==20 for n in range(50)),'samples':samples},'skin_fields':fields,'functions':{},'disclaimer':'Static baseline IL2CPP; possible IFix runtime patches, account state and server behavior are not verified.'}
 for method,(start,end) in METHODS.items():
  # Map ELF virtual addresses to file offsets using PT_LOAD program headers.
  with open(elf_path,'rb') as native:
   hdr=native.read(64)
   assert hdr[:6]==b'\x7fELF\x02\x01'  # ELF64 LE
   phoff=struct.unpack_from('<Q',hdr,32)[0]
   phentsize,phnum=struct.unpack_from('<HH',hdr,54)
   segments=[]
   native.seek(phoff)
   for _ in range(phnum):
    h=native.read(phentsize)
    typ,flags,poff,vaddr,_,filesz,memsz,align=struct.unpack_from('<IIQQQQQQ',h)
    if typ==1:segments.append((poff,vaddr,filesz))
   segment=next((s for s in segments if s[1]<=start and end<=s[1]+s[2]),None)
   assert segment,('missing segment',hex(start),hex(end))
   poff,vaddr,filesz=segment
   native.seek(poff+start-vaddr)
   raw=native.read(end-start)
   assert len(raw)==end-start and len(raw)%4==0
  calls=set()
  call_count=0
  for offset in range(0,len(raw),4):
   ins=struct.unpack_from('<I',raw,offset)[0]
   if (ins & 0xfc000000)==0x94000000:  # AArch64 BL immediate
    imm26=ins & 0x03ffffff
    if imm26 & (1<<25):imm26-=1<<26
    calls.add(start+offset+(imm26<<2))
    call_count+=1
  expected=TARGET_LINKS.get(method,{})
  results['functions'][method]={'start_va':hex(start),'end_va':hex(end),'expected_calls':{n:{'va':hex(va),'present':va in calls} for n,va in expected.items()},'direct_call_count':call_count}
  assert all(va in calls for va in expected.values()),'expected call missing in '+method
 assert len(st)==3000 and results['stage']['ids_contiguous'] and results['stage']['base_table_20_subs_each_main_0_to_49']
 assert any(f['name']=='CharacterNumber' and f['offset']==0x568 for f in fields)
 assert any(f['name']=='Skin_BodyIndex0' and f['offset']==0x584 for f in fields)
 assert any(f['name']=='Skin_BodyIndex1' and f['offset']==0x5b0 for f in fields)
 with open(out_path,'w',encoding='utf8') as f:json.dump(results,f,ensure_ascii=False,indent=2)
 print('OK',len(st),'stage records;',len(METHODS),'functions; native SHA256',results['sources']['libil2cpp_sha256'])
 return 0
if __name__=='__main__':sys.exit(main())
