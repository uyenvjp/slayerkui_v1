#!/usr/bin/env python3
"""Slayer Legend 700.0.4 — step 17, read-only static verifier.

Usage: python verify_step17.py libil2cpp.so all-method-map.csv field-map.csv

Only checks specified ARM64 opcodes/branch destinations, ELF SHA256, and
previously reconstructed metadata fields. No emulator, network, or patch run.
"""
import csv,hashlib,json,struct,sys
ELF_SHA='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
METHODS={
 'APIManager+<>c__DisplayClass91_0+<<ChangeSkinData>b__0>d.MoveNext':0x4814950,
 'SkinManager.<Button_CharacterChange_Confirm>b__169_0':0x536b50c,
 'DatabaseManager.Compare':0x4d5c818,
 'APIValidator.CheckValue':0x4808898,
 'APIManager+<>c__DisplayClass154_0+<<EnterStage>b__0>d.MoveNext':0x51cbdf8,
 'StageManager+<>c__DisplayClass22_0.<SelectStage>b__0':0x53a3494,
 'StageManager.SelectStage':0x53a2688,
 'APIManager.EnterStage':0x50d0ab4,
 'GameManager.SceneChage_BlackOut_StageInit':0x4e45d00,
 'Network.Request.IsValidCode':0x5428284,
}
FIELDS={
 ('GrowSlayer.ChangeSkinDataResponse','resultCode_'):0x18,
 ('GrowSlayer.ChangeSkinDataResponse','usingCharacterIndex_'):0x1c,
 ('GrowSlayer.ChangeSkinDataResponse','characterChangeCount_'):0x20,
 ('GrowSlayer.ChangeSkinDataResponse','skinData_'):0x28,
 ('GrowSlayer.ChangeSkinDataResponse','updateCurrencies_'):0x30,
 ('GrowSlayer.SkinData','characterNumber_'):0x18,
 ('GrowSlayer.SkinData','usingSkin_'):0x20,
 ('StageManager','MovePossible'):0x70,
 ('StageManager+<>c__DisplayClass22_0','prevStage'):0x18,
 ('GrowSlayer.EnterStageResponse','resultCode_'):0x18,
 ('GrowSlayer.EnterStageResponse','stageIndex_'):0x1c,
 ('StageInfo','Index'):0x20,
 ('DatabaseManager','CharacterNumber'):0x568,
 ('DatabaseManager','CharacterChangeCount'):0x56c,
 ('DatabaseManager','StageCurrent'):0x78,
}
BRANCHES={
 # target, link? Direct BL/B ARM64 with signed imm26
 'skin_valid_code':(0x4814ad4,0x5428284,'BL'),
 'skin_currency_check':(0x4814aec,0x4808898,'BL'),
 'skin_index_compare':(0x536b5a8,0x4d5c818,'BL'),
 'skin_count_compare':(0x536b5cc,0x4d5c818,'BL'),
 'skin_skinid_compare':(0x536b5f0,0x4d5c818,'BL'),
 'skin_use_bool_compare':(0x536b634,0x4d5c9b8,'B'),
 'stage_valid_code':(0x51cbf7c,0x5428284,'BL'),
 'stage_send_enter_request':(0x53a27f8,0x50d0ab4,'BL'),
 'stage_immediate_scene_transition':(0x53a2874,0x4e45d00,'BL'),
 'stage_rollback_scene_transition':(0x53a3530,0x4e45d00,'BL'),
}
# Raw instructions are an independent, bounded inspection of binary sites.
INSTRUCTIONS={
 'skin_response_result':(0x4814acc,0xb9401a80),
 'skin_currency_from_response':(0x4814ae0,0xf9401a81),
 'skin_optional_callback':(0x4814af0,0xf94012c8),
 'compare_local_character':(0x536b584,0xb9856915),
 'compare_response_character':(0x536b588,0xb9801e76),
 'compare_local_count':(0x536b5c0,0xb9856d01),
 'compare_response_count':(0x536b5c4,0xb9802262),
 'compare_skin_pointer':(0x536b5d8,0xf9401669),
 'compare_skin_character':(0x536b5e4,0xb9801922),
 'compare_skin_enabled':(0x536b61c,0x39408102),
 'stage_response_result':(0x51cbf74,0xb9401a80),
 'stage_special_code_comparison':(0x51cbf88,0x7100411f),
 'stage_callback_read':(0x51cbf94,0xf9400ec8),
 'stage_check_move_possible':(0x53a276c,0x3941c268),
 'stage_save_previous':(0x53a279c,0xb9001aa0),
 'stage_read_selected_index':(0x53a27ac,0xb9402296),
 'stage_rollback_previous':(0x53a34cc,0xb9401a60),
}

def signed26(n):return n-(1<<26) if n&(1<<25) else n

def verify(binary,methodmap,fieldmap):
 checks=[]
 with open(binary,'rb') as f: sha=hashlib.file_digest(f,'sha256').hexdigest()
 assert sha==ELF_SHA, f'wrong SHA {sha}'
 with open(methodmap,'r',encoding='utf-8-sig',newline='') as f:
  found={}
  for row in csv.DictReader(f):
   name=row['declaring_type_full_name']+'.'+row['name']
   if name in METHODS:found.setdefault(name,set()).add(int(row['native_va'],16))
 for name,addr in METHODS.items():
  assert addr in found.get(name,set()),('method',name,hex(addr),found.get(name))
  checks.append({'kind':'method','name':name,'va':hex(addr)})
 with open(fieldmap,'r',encoding='utf-8-sig',newline='') as f:
  found={}
  for row in csv.DictReader(f):
   key=(row['declaring_type'],row['name'])
   if key in FIELDS and row['is_static']=='False':found.setdefault(key,set()).add(int(row['native_field_offset']))
 for key,off in FIELDS.items():
  assert off in found.get(key,set()),('field',key,off,found.get(key))
  checks.append({'kind':'field','name':'.'.join(key),'offset':hex(off)})
 with open(binary,'rb') as f:
  h=f.read(64)
  assert h[:6]==b'\x7fELF\x02\x01'
  pho=struct.unpack_from('<Q',h,32)[0]; entsz=struct.unpack_from('<H',h,54)[0];count=struct.unpack_from('<H',h,56)[0]
  segments=[]
  for i in range(count):
   f.seek(pho+i*entsz)
   ty,fl,off,va,_,sz,_,_=struct.unpack('<IIQQQQQQ',f.read(56))
   if ty==1 and fl&1:segments.append((va,va+sz,off))
  def insn(va):
   for low,high,off in segments:
    if low<=va and va+4<=high:
     f.seek(off+va-low)
     return struct.unpack('<I',f.read(4))[0]
   raise ValueError('ELF VA not mapped '+hex(va))
  for name,(va,expected) in INSTRUCTIONS.items():
   op=insn(va)
   assert op==expected,('opcode',name,hex(op),hex(expected))
   checks.append({'kind':'opcode','name':name,'va':hex(va),'opcode':hex(op)})
  for name,(at,expected,kind) in BRANCHES.items():
   op=insn(at)
   mask=0x94000000 if kind=='BL' else 0x14000000
   assert op & 0xfc000000 == mask,('not BL/B',name,hex(op))
   actual=at+4*signed26(op & 0x03ffffff)
   assert actual==expected,('wrong target',name,hex(actual),hex(expected))
   checks.append({'kind':kind,'name':name,'at':hex(at),'target':hex(actual)})
  # Verify conditional *order/targets* for result code==16 handling.
  assert insn(0x51cbf80)==0x37000180  # tbnz w0, #0, 0x51cbfb0
  assert insn(0x51cbf8c)==0x54000121  # b.ne 0x51cbfb0 after cmp #16
  assert insn(0x53a2770)==0x34000968  # cbz w8 -> 0x53a289c
  checks.append({'kind':'control_flow','name':'stage_result16_error_branch_and_move_guard',
                 'locations':['0x51cbf80','0x51cbf88','0x51cbf8c','0x53a2770']})
 return {'source':'Slayer Legend 700.0.4, original user XAPK-derived libil2cpp.so + checkpoint metadata maps',
         'elf_sha256':sha,'total_checks':len(checks),
         'count_by_kind':{k:sum(c['kind']==k for c in checks) for k in sorted({c['kind'] for c in checks})},
         'checks':checks,
         'limitations':['static non-patched ARM64 code only','does not reproduce server behavior',
                        'IFix can override functions','ResultCode 16 symbolic enum meaning not resolved',
                        'response behavior outside traced functions not covered','not a playable H5 game']}

if __name__=='__main__':
 if len(sys.argv)!=4:raise SystemExit(__doc__)
 print(json.dumps(verify(*sys.argv[1:]),ensure_ascii=False,indent=2))
