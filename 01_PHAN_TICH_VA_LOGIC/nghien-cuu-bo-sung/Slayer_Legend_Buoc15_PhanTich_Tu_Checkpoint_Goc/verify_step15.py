#!/usr/bin/env python3
"""Slayer Legend 700.0.4, checkpoint 15 - reproducible READ-ONLY ELF verification.
Usage: python verify_step15.py libil2cpp.so all-method-map.csv field-map.csv
Input comes from user-provided XAPK extraction and prior recovered metadata.
This is NOT runtime/server/IFix verification and it does not create gameplay data.
"""
import csv,hashlib,json,struct,sys
from pathlib import Path
EXPECTED_SHA='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
METHODS={
 'UserInfoLoad.Load':0x5226e14,
 'UserInfoLoadSkinData.LoadSkinData':0x5239dc0,
 'UserInfoLoadSkinData.LoadSkinDataMan':0x523a088,
 'UserInfoLoadSkinData.LoadSkinDataWoman':0x523a428,
 'UserInfoLoadSkinData.LoadSkinCostumes':0x523a7c8,
 'UserInfoLoadSkinData.LoadSkins':0x523abb0,
 'APIValidator.LoadUserInfo':0x481fb70,
 'Liapp.SecureVariable.LiappSecureInt.op_Implicit':0x46dbfdc,
}
FIELDS={
 ('GrowSlayer.UserInfo','stageData_'):0x58,
 ('GrowSlayer.StageData','stageCurrent_'):0x18,
 ('GrowSlayer.StageData','stageBest_'):0x1c,
 ('GrowSlayer.UserInfo','skinDatas_'):0x88,
 ('GrowSlayer.SkinData','characterNumber_'):0x18,
 ('GrowSlayer.SkinData','skins_'):0x28,
 ('DatabaseManager','StageCurrent'):0x78,
 ('DatabaseManager','StageBest'):0x48,
 ('DatabaseManager','CharacterNumber'):0x568,
 ('DatabaseManager','Skin_BodyIndex0'):0x584,
 ('DatabaseManager','Skin_FaceIndex0'):0x58c,
 ('DatabaseManager','Skin_BodyIndex1'):0x5b0,
 ('DatabaseManager','Skin_FaceIndex1'):0x5b8,
}
# Direct call addresses and AArch64 targets checked against the unmodified ELF.
CALLS={
 'user_info_validation':(0x52271f0,0x481fb70),
 'stagebest_secure_wrap':(0x5227260,0x46dbfdc),
 'stagecurrent_secure_wrap':(0x52272b0,0x46dbfdc),
 'load_skin_costumes':(0x522737c,0x523a7c8),
 'load_owned_skins':(0x522738c,0x523abb0),
 'load_skin_datas':(0x5227ac8,0x5239dc0),
 'skin_man_branch':(0x5239f84,0x523a088),
 'skin_woman_branch':(0x5239f78,0x523a428),
 'skin_man_weapon_setter':(0x523a14c,0x4d4a8ac),
 'skin_woman_weapon_setter':(0x523a4ec,0x4d4a8ac),
}
# Raw AArch64 instruction bytes, not just recovered C# names. These checks also
# preserve register identity. Readers can verify output with llvm-objdump.
INSNS={
 'user_info_stage_ptr':(0x5227248,0xf9402ea8,'ldr x8, [x21, #0x58]'),
 'stage_best_value':(0x5227254,0xb9401d00,'ldr w0, [x8, #0x1c]'),
 'stage_best_dest':(0x5227284,0x3c8482c0,'stur q0, [x22, #0x48]'),
 'stage_current_value':(0x52272a4,0xb9401900,'ldr w0, [x8, #0x18]'),
 'stage_current_dest':(0x52272d4,0x3c8782c0,'stur q0, [x22, #0x78]'),
 'user_info_skin_list':(0x5239e64,0xf9404680,'ldr x0, [x20, #0x88]'),
 'skin_character_number_value':(0x5239f64,0xb9401828,'ldr w8, [x1, #0x18]'),
 'skin_zero_test':(0x5239f68,0x340000c8,'cbz w8, 0x5239f80'),
 'skin_one_test':(0x5239f6c,0x7100051f,'cmp w8, #0x1'),
 'skin_man_body_field':(0x523a2f0,0xb9058668,'str w8, [x19, #0x584]'),
 'skin_man_face_field':(0x523a2c8,0xb9058e68,'str w8, [x19, #0x58c]'),
}

def sign(x,bits):return x-(1<<bits) if x&(1<<(bits-1)) else x

def main(so,method_csv,field_csv):
 sha=hashlib.file_digest(open(so,'rb'),'sha256').hexdigest()
 assert sha==EXPECTED_SHA,(sha,'binary differs from previous checkpoint')
 m={}; f={}
 with open(method_csv,newline='',encoding='utf-8-sig') as rd:
  for r in csv.DictReader(rd):
   k=r['declaring_type_full_name']+'.'+r['name']
   if k in METHODS:
    m.setdefault(k,set()).add(int(r['native_va'],16))
 with open(field_csv,newline='',encoding='utf-8-sig') as rd:
  for r in csv.DictReader(rd):
   k=(r['declaring_type'],r['name'])
   if k in FIELDS and r['is_static']=='False':
    f.setdefault(k,set()).add(int(r['native_field_offset']))
 tests=[]
 for k,v in METHODS.items():
  assert v in m.get(k,set()),('method mapping mismatch',k,m.get(k))
  tests.append({'kind':'method','name':k,'va':hex(v)})
 for k,v in FIELDS.items():
  assert v in f.get(k,set()),('field mapping mismatch',k,f.get(k))
  tests.append({'kind':'field','type':k[0],'name':k[1],'offset':hex(v)})
 with open(so,'rb') as r:
  h=r.read(64)
  assert h[:4]==b'\x7fELF' and h[4]==2 and h[5]==1
  phoff=struct.unpack_from('<Q',h,32)[0]
  entsz=struct.unpack_from('<H',h,54)[0]
  phnum=struct.unpack_from('<H',h,56)[0]
  ranges=[]
  for i in range(phnum):
   r.seek(phoff+entsz*i)
   b=r.read(56)
   typ,flags,fo,va,_,filesz,_,_=struct.unpack('<IIQQQQQQ',b)
   if typ==1 and (flags&1):ranges.append((va,va+filesz,fo))
  def insn(va):
   for lo,hi,fo in ranges:
    if lo<=va and va+4<=hi:
     r.seek(fo+va-lo)
     return struct.unpack('<I',r.read(4))[0]
   raise ValueError('unmapped VA: '+hex(va))
  for name,(at,target) in CALLS.items():
   op=insn(at)
   assert (op & 0xfc000000)==0x94000000,(name,'not BL',hex(op))
   imm=sign(op&0x3ffffff,26)*4
   assert at+imm==target,(name,hex(at+imm),hex(target))
   tests.append({'kind':'BL','name':name,'at':hex(at),'target':hex(target)})
  for name,(at,expected,disasm) in INSNS.items():
   op=insn(at)
   assert op==expected,(name,hex(op),hex(expected))
   tests.append({'kind':'instruction','name':name,'at':hex(at),'opcode_le':hex(expected),'disasm':disasm})
 return {'source_sha256':sha,'method_checks':len(METHODS),'field_checks':len(FIELDS),
 'call_checks':len(CALLS),'instruction_checks':len(INSNS),'total_passed':len(tests),
 'tests':tests,'limitations':['Static ELF only','Recovered metadata maps not independent runtime observation',
 'IFix runtime may modify method behavior','No actual server account creation response','No verified initial character or Stage numeric values']}
if __name__=='__main__':
 if len(sys.argv)!=4:raise SystemExit(__doc__)
 print(json.dumps(main(*sys.argv[1:]),ensure_ascii=False,indent=2))
