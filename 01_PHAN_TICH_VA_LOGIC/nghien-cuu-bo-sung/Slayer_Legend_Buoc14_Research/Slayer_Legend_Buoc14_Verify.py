#!/usr/bin/env python3
"""Read-only static verification for Slayer Legend 700.0.4 IL2CPP.
Usage: python verify_step14.py libil2cpp.so all-method-map.csv field-map.csv
No native code is executed; no APK data is modified.
"""
import os,sys,json,struct,hashlib,csv

EXPECTED_SHA='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
CALLS={
 'lookup_new_user_flag':(0x529fab8,0x543ecdc),
 'confirm_selected_character':(0x52a4624,0x52a4674),
 'make_character_coroutine':(0x52a4754,0x52a8d48),
 'signup_request_constructor':(0x52a8f90,0x8704954),
 'fetch_lookup_login_response':(0x52a8fac,0x541e6b0),
 'signup_get_jwt':(0x52a8fb8,0x543eb3c),
 'signup_set_jwt':(0x52a8fcc,0x8704bb0),
 'signup_set_nickname':(0x52a900c,0x8704d3c),
 'signup_load_user_after_response':(0x52a946c,0x5226e14),
 'enter_stage_request_constructor':(0x50d0b9c,0x8a3376c),
 'select_stage_api':(0x53a27f8,0x50d0ab4),
 'enter_stage_response_code_check':(0x51cbf7c,0x5428284),
 'preview_character_display_0':(0x52a4408,0x5348364),
 'preview_character_display_1':(0x52a4510,0x5348364),
}
BRANCHES={'enter_stage_queue_request':(0x50d0c1c,0x50c1a44)}
MEM32={
 'selected_character_write':(0x52a40c0,'str',20,19,0xd8),
 'signup_character_id_write':(0x52a9028,'str',8,21,0x38),
 'first_preview_body_read':(0x52a43d0,'ldr',6,8,0x584),
 'first_preview_face_read':(0x52a43d4,'ldr',5,8,0x58c),
 'second_preview_body_read':(0x52a44d4,'ldr',6,8,0x5b0),
 'second_preview_face_read':(0x52a44d8,'ldr',5,8,0x5b8),
 'stage_request_index_write':(0x50d0bac,'str',19,20,0x18),
 'userdata_stage_current_set':(0x53eb270,'str',1,0,0x30),
 'userdata_character_number_set':(0x53eba30,'str',1,0,0x214),
}
FIELDS={
 ('SignManager','SelectedCharacterNumber'):216,
 ('GrowSlayer.SignUpV2Request','characterId_'):56,
 ('GrowSlayer.EnterStageRequest','stageIndex_'):24,
 ('GrowSlayer.EnterStageResponse','stageIndex_'):28,
 ('UserData','<StageCurrent>k__BackingField'):48,
 ('UserData','<CharacterNumber>k__BackingField'):532,
 ('DatabaseManager','Skin_BodyIndex0'):1412,
 ('DatabaseManager','Skin_FaceIndex0'):1420,
 ('DatabaseManager','Skin_BodyIndex1'):1456,
 ('DatabaseManager','Skin_FaceIndex1'):1464,
}

def sign(x,n):return x-(1<<n) if x&(1<<(n-1)) else x

def main():
 if len(sys.argv)!=4:
  print(__doc__);sys.exit(2)
 so,method_path,field_path=sys.argv[1:]
 sha=hashlib.sha256()
 with open(so,'rb') as f:
  while b:=f.read(1048576):sha.update(b)
 assert sha.hexdigest()==EXPECTED_SHA,'libil2cpp.so SHA mismatch: source version differs'
 with open(so,'rb') as f:
  hdr=f.read(64)
  assert hdr[:4]==b'\x7fELF' and hdr[4]==2 and hdr[5]==1
  phoff=struct.unpack_from('<Q',hdr,32)[0]; phentsz=struct.unpack_from('<H',hdr,54)[0];phnum=struct.unpack_from('<H',hdr,56)[0]
  segments=[]
  for k in range(phnum):
   f.seek(phoff+k*phentsz);b=f.read(56)
   ty,fl,fo,va,_,fs,ms,_=struct.unpack('<IIQQQQQQ',b)
   if ty==1 and fl&1:segments.append((va,va+fs,fo))
  def instr(va):
   for a,b,off in segments:
    if a<=va<b:
     f.seek(off+va-a);return struct.unpack('<I',f.read(4))[0]
   raise ValueError('VA not mapped: '+hex(va))
  results=[]
  for label,(va,target) in CALLS.items():
   w=instr(va)
   assert (w&0xfc000000)==0x94000000,(label,'not BL',hex(w))
   actual=va+sign(w&0x3ffffff,26)*4
   assert actual==target,(label,hex(actual),hex(target))
   results.append({'kind':'BL','label':label,'va':hex(va),'target':hex(target)})
  for label,(va,target) in BRANCHES.items():
   w=instr(va)
   assert (w&0xfc000000)==0x14000000,(label,'not B',hex(w))
   actual=va+sign(w&0x3ffffff,26)*4
   assert actual==target,(label,hex(actual),hex(target))
   results.append({'kind':'B','label':label,'va':hex(va),'target':hex(target)})
  for label,(va,kind,rt,rn,offset) in MEM32.items():
   w=instr(va)
   opcode=w&0xffc00000
   target_opcode=0xb9000000 if kind=='str' else 0xb9400000
   assert opcode==target_opcode,(label,'incorrect memory op',hex(w))
   actual=(w&31,(w>>5)&31,((w>>10)&0xfff)*4)
   assert actual==(rt,rn,offset),(label,actual,(rt,rn,offset))
   results.append({'kind':kind,'label':label,'va':hex(va),'reg':rt,'base_reg':rn,'byte_offset':offset})
 fld={}
 with open(field_path,encoding='utf-8-sig',newline='') as inp:
  for x in csv.DictReader(inp):
   key=(x['declaring_type'],x['name'])
   if key in FIELDS and x['is_static']=='False':fld[key]=int(x['native_field_offset'])
 for key,off in FIELDS.items():
  assert fld.get(key)==off,('field mismatch',key,fld.get(key),off)
  results.append({'kind':'field','declaring_type':key[0],'name':key[1],'byte_offset':off})
 maps={}
 with open(method_path,encoding='utf-8-sig',newline='') as inp:
  for x in csv.DictReader(inp):
   v=int(x['native_va'],16)
   if v in set(y for _,y in CALLS.values()) |set(y for _,y in BRANCHES.values()) or v in [0x52a8d48,0x52a4178,0x52a4674,0x53a2688]:
    maps.setdefault(hex(v),[]).append(x['declaring_type_full_name']+'.'+x['name'])
 out={'file_sha256':sha.hexdigest(),'checks_passed':len(results),'evidence':results,'method_map_samples':maps,
 'scope':'static native instructions + recovered metadata maps; does not execute Unity, LIAPP runtime patches or backend'}
 print(json.dumps(out,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
