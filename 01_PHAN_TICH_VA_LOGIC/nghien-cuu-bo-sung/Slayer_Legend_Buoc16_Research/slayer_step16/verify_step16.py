#!/usr/bin/env python3
"""Read-only static verifier of Slayer Legend 700.0.4 character-selection traces.

Usage:
  python verify_step16.py libil2cpp.so all-method-map.csv field-map.csv

Source: user's original XAPK-derived IL2CPP ELF + prior recovered metadata maps.
Checks are executable byte signatures and map entries only; NOT server/runtime proof.
"""
import csv,hashlib,json,struct,sys
EXPECTED_SHA='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
METHODS={
 'UserInfoLoad.Load':0x5226e14,
 'UserInfoLoadEquipment.LoadEquipmentState':0x522e574,
 'UserInfoLoadSkinData.LoadSkinData':0x5239dc0,
 'SkinManager.Button_CharacterChange_Confirm':0x5369550,
 'SkinManager.GetMyOriginalSkinData':0x535ecc4,
 'SkinManager.Skin_Apply':0x535e1ac,
 'SkinManager.Weapon_Apply':0x535e654,
 'DatabaseManager.BuildUserAppearanceInfo':0x4d4bc84,
 'DatabaseManager.get_Skin_BodyIndex':0x4d4b038,
 'APIManager.ChangeSkinData':0x50c943c,
 'GrowSlayer.ChangeSkinDataRequest..ctor':0x896dbbc,
 'Network.Request.IsValidCode':0x5428284,
}
FIELDS={
 ('GrowSlayer.UserInfo','equipmentState_'):0xa0,
 ('GrowSlayer.EquipmentState','usingCharacterIndex_'):0x24,
 ('DatabaseManager','CharacterNumber'):0x568,
 ('DatabaseManager','CharacterChangeCount'):0x56c,
 ('DatabaseManager','Skin_BodyIndex0'):0x584,
 ('DatabaseManager','Skin_BodyIndex1'):0x5b0,
 ('SkinManager','SelectedCharacterNumber'):0x278,
 ('GrowSlayer.SkinData','characterNumber_'):0x18,
 ('GrowSlayer.ChangeSkinDataRequest','selectedCharacterNumber_'):0x18,
 ('GrowSlayer.ChangeSkinDataResponse','usingCharacterIndex_'):0x1c,
}
# AArch64 direct calls/branches. The tail calls are B, not BL.
BRANCHES={
 'load_equipment_state':(0x5227404,0x522e574,'BL'),
 'load_skin_data':(0x5227ac8,0x5239dc0,'BL'),
 'assemble_current_avatar':(0x535ed08,0x4d4bc84,'BL'),
 'apply_skin_after_confirm':(0x5369668,0x535e1ac,'BL'),
 'apply_weapon_after_confirm':(0x5369674,0x535e654,'BL'),
 'request_change_skin_data':(0x5369780,0x50c943c,'B'),
 'create_change_skin_request':(0x50c9540,0x896dbbc,'BL'),
 'handle_change_skin_response_code':(0x4814ad4,0x5428284,'BL'),
}
# Explicit little-endian instruction words from the original ELF. Exact-byte
# tests avoid pretending we know the full semantic meaning of each native method.
INSNS={
 'load_equipment_ptr':(0x522e5e8,0xf9405288,'ldr x8,[x20,#0xa0]'),
 'read_index_and_next_field':(0x522e69c,0x29448109,'ldp w9,w0,[x8,#0x24]'),
 'load_current_character_number':(0x522e6a8,0xb9056a69,'str w9,[x19,#0x568]'),
 'avatar_uses_character_number':(0x4d4bd90,0xb9456a68,'ldr w8,[x19,#0x568]'),
 'avatar_sets_skin_character_number':(0x4d4bd98,0xb9001a88,'str w8,[x20,#0x18]'),
 'body_getter_reads_active_character':(0x4d4b070,0xb9456a68,'ldr w8,[x19,#0x568]'),
 'body_getter_uses_skin_1_if_nonzero':(0x4d4b078,0xb945b260,'ldr w0,[x19,#0x5b0]'),
 'body_getter_uses_skin_0_if_zero':(0x4d4b080,0xb9458660,'ldr w0,[x19,#0x584]'),
 'confirm_reads_selected_index':(0x5369630,0xb9427a6b,'ldr w11,[x19,#0x278]'),
 'confirm_sets_selected_index':(0x536963c,0xb905690b,'str w11,[x8,#0x568]'),
 'confirm_increments_change_count':(0x5369640,0xb9056d0a,'str w10,[x8,#0x56c]'),
 'api_sets_request_index':(0x50c9554,0xb9001af6,'str w22,[x23,#0x18]'),
 'api_sets_is_event':(0x50c9558,0x390072e8,'strb w8,[x23,#0x1c]'),
 'api_id_86':(0x50c9608,0x52800ac0,'mov w0,#0x56'),
}

def s26(v):return v-(1<<26) if v&(1<<25) else v

def verify(so,mp,fp):
 with open(so,'rb') as fd:sha=hashlib.file_digest(fd,'sha256').hexdigest()
 if sha!=EXPECTED_SHA:raise AssertionError('ELF digest mismatch: '+sha)
 m={};f={}
 with open(mp,encoding='utf-8-sig',newline='') as inp:
  for row in csv.DictReader(inp):
   key=row['declaring_type_full_name']+'.'+row['name']
   if key in METHODS:m.setdefault(key,set()).add(int(row['native_va'],16))
 with open(fp,encoding='utf-8-sig',newline='') as inp:
  for row in csv.DictReader(inp):
   key=(row['declaring_type'],row['name'])
   if key in FIELDS and row['is_static']=='False':f.setdefault(key,set()).add(int(row['native_field_offset']))
 checks=[]
 for key,value in METHODS.items():
  if value not in m.get(key,set()):raise AssertionError(('method',key,value,m.get(key)))
  checks.append({'kind':'method','name':key,'va':hex(value)})
 for key,value in FIELDS.items():
  if value not in f.get(key,set()):raise AssertionError(('field',key,value,f.get(key)))
  checks.append({'kind':'field','name':'.'.join(key),'offset':hex(value)})
 with open(so,'rb') as fd:
  hdr=fd.read(64)
  if hdr[:6]!=b'\x7fELF\x02\x01':raise AssertionError('not ELF64 LE')
  phoff=struct.unpack_from('<Q',hdr,32)[0];entsz=struct.unpack_from('<H',hdr,54)[0];num=struct.unpack_from('<H',hdr,56)[0]
  segments=[]
  for i in range(num):
   fd.seek(phoff+entsz*i);b=fd.read(56)
   typ,flags,fo,va,_,sz,_,_=struct.unpack('<IIQQQQQQ',b)
   if typ==1 and (flags&1):segments.append((va,va+sz,fo))
  def opcode(va):
   for lo,hi,fo in segments:
    if lo<=va and va+4<=hi:
     fd.seek(fo+va-lo); return struct.unpack('<I',fd.read(4))[0]
   raise ValueError('unmapped VA '+hex(va))
  for name,(at,target,kind) in BRANCHES.items():
   op=opcode(at); expected_mask=0x94000000 if kind=='BL' else 0x14000000
   if op&0xfc000000!=expected_mask:raise AssertionError(('branch opcode',name,hex(op)))
   actual=at+4*s26(op&0x03ffffff)
   if actual!=target:raise AssertionError(('branch target',name,hex(actual),hex(target)))
   checks.append({'kind':kind,'name':name,'at':hex(at),'target':hex(target),'opcode':hex(op)})
  for name,(va,expected,disasm) in INSNS.items():
   actual=opcode(va)
   if actual!=expected:raise AssertionError(('instruction',name,hex(actual),hex(expected)))
   checks.append({'kind':'instruction','name':name,'at':hex(va),'opcode':hex(actual),'disasm':disasm})
  # Relative ordering only; do not claim actual IFix/runtime execution sequence.
  if not 0x5227404<0x5227ac8:raise AssertionError('loader call order')
  checks.append({'kind':'order','name':'load_equipment_before_load_skin_data','calls':[hex(0x5227404),hex(0x5227ac8)]})
  if not 0x536963c<0x5369668<0x5369674<0x5369780:raise AssertionError('change code order')
  checks.append({'kind':'order','name':'local_character_switch_before_network_request','sites':[hex(a) for a in (0x536963c,0x5369668,0x5369674,0x5369780)]})
 return {'origin':'Slayer Legend 700.0.4 user-supplied XAPK archive; static ELF/metadata checkpoint',
 'elf_sha256':sha,'checks_passed':len(checks),
 'method_checks':len(METHODS),'field_checks':len(FIELDS),'branch_checks':len(BRANCHES),
 'instruction_checks':len(INSNS),'order_checks':2,'checks':checks,
 'limitations':['static ARM64 only','IFix and other hooks may alter runtime behavior','server default starting character unknown',
 'no live ChangeSkinDataResponse observed','no confirmation of backend rejecting or accepting changes','no gameplay H5 port created']}
if __name__=='__main__':
 if len(sys.argv)!=4:raise SystemExit(__doc__)
 print(json.dumps(verify(*sys.argv[1:]),indent=2,ensure_ascii=False))
