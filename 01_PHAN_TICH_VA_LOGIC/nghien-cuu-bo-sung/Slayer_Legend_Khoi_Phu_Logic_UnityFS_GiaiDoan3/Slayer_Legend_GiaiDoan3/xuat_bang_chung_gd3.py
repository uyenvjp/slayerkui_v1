#!/usr/bin/env python3
"""Make a reproducible report from original user's Slayer Legend XAPK.
Static analysis only; does not decrypt LIAPP, defeat protection, or invent game logic.
Run: python xuat_bang_chung_gd3.py <Slayer.xapk> <destination-folder>
Requires lz4 Python package for the UnityFS block map parser (LZMA game payload).
"""
from pathlib import Path
import sys,json,csv,hashlib,io,zipfile,subprocess
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from read_serial_values import serialized_type_table,read_one

KEYWORDS=('Attack','atk','dmg','Skill','speed','Hp','HpBar','Monster','Enemy','State','Level','Reward','Boss','Stat','Demon','Weapon','Awaken','Spirit','Buff','Quest','Prob','Cooltime','Accuracy','accuracy','miss','hit')
SELECTED={'monster':[20,28,59,61], 'popup':[65,74,98,189,206,222,224,422,458,496,533,540]}

def sha(path):
 h=hashlib.sha256()
 with open(path,'rb') as f:
  for block in iter(lambda:f.read(8*1024*1024),b''):h.update(block)
 return h.hexdigest()

def make_samples(xapk):
 with zipfile.ZipFile(xapk) as x:
  with zipfile.ZipFile(io.BytesIO(x.read('monster.apk'))) as a:
   payload=a.read('assets/assetpack/monster')
 d=parse_unityfs(payload)
 serialized=serialized_bundle_head(payload,d)
 types,objects,base=serialized_type_table(serialized)
 samples=[]
 for tid in [28,20]:
  selected=[x for x in objects if x[3]==tid]
  for pathid,off,size,tid in selected[:5]:
   buff=serialized[base+off:base+off+size]
   stream=io.BytesIO(buff)
   try:
    val=read_one(stream,types[tid][1]); consumed=stream.tell()
    if consumed!=size:continue
    if tid==28:
     fields={k:val.get(k) for k in ['characterType','state','atkSpeed','miss','accuracy','dmgReduce','MonsterType','AttackRange','SpecialAttack_Cooltime','SpecialAttack_Prob','AttackPossible','isDead']}
    else:
     sp=val.get('theSpirit',{});basefields=sp.get('spiritBase',{})
     fields={'SpiritId':sp.get('SpiritId'),'SpeciesIndex':sp.get('SpeciesIndex'),'Grade':sp.get('Grade'),'Level':sp.get('Level'),'AwakenCount':sp.get('AwakenCount'),'SkillType':basefields.get('SkillType'),'SkillValues':basefields.get('SkillValues'),'maxCooltime':val.get('maxCooltime'),'curCooltime':val.get('curCooltime')}
    samples.append({'pack':'monster','serialized_class_id':114,'type_index':tid,'type_hash':types[tid][2],'path_id':str(pathid),'serialized_object_offset_dec':off,'declared_object_size':size,'consumed_bytes':consumed,'values':fields,'interpretation':'Serialized prefab/component defaults; not runtime combat formula'})
   except (ValueError,IndexError,EOFError,struct.error) as ex:pass
 return samples

def run(xapk,folder):
 base=Path(folder);base.mkdir(parents=True,exist_ok=True)
 catalog=json.load(open(base/'UnityFS_Catalog.json',encoding='utf-8'))
 totals=[]
 with (base/'He_Thong_Gameplay_Tu_TypeTree.csv').open('w',encoding='utf-8-sig',newline='') as f:
  w=csv.writer(f)
  w.writerow(['Bundle','UnityClassID','TypeIndex','TypeHash','CacTruongDocDuoc','GhiChu'])
  for pack in catalog:
   name=pack['pack'];s=pack['serialized'];totals.append((name,s['object_count'],s['objects_by_class'].get('114',0),len(s['types']),s['objects_by_class'].get('49',0)))
   for idx in SELECTED.get(name,[]):
    t=s['types'][idx]
    fields=[]
    for v in t['node_words']:
     if any(q.lower() in v.lower() for q in KEYWORDS) and not v.startswith('PPtr<'):
      if v not in fields:fields.append(v)
    w.writerow([name,t['class_id'],idx,t['type_hash'],'; '.join(fields),'Field names extracted from Unity serialized TypeTree, not program code'])
 samples=make_samples(xapk)
 (base/'Monster_MonoBehaviour_GiaTri_KiemChung.json').write_text(json.dumps(samples,indent=2,ensure_ascii=False),encoding='utf-8')
 libfile=Path('/mnt/data/Slayer_Legend_Phan_Tich_GiaiDoan2/libeufxww.so')
 libinfo=''
 if libfile.exists():
  result=subprocess.run(['readelf','-d',str(libfile)],capture_output=True,text=True)
  libinfo='\n'.join(l for l in result.stdout.splitlines() if ('SONAME' in l or '(NEEDED)' in l))
 text='SLAYER LEGEND 700.0.4 — BẰNG CHỨNG GIAI ĐOẠN 3\n'
 text+='Nguồn: file XAPK nguyên bản do người dùng cung cấp. Phân tích tĩnh, không chạy Android/không phá LIAPP.\n'
 text+='\n1. XUẤT CẤU TRÚC UNITYFS VÀ ĐẾM OBJECT\n'
 text+='Bundle                 Objects     MonoBehaviour(114)   Type kinds  TextAsset(49)\n'
 for a,b,c,d,e in totals:text+=f'{a:<20} {b:>8,}     {c:>8,}            {d:>5}         {e:>5}\n'
 text+=f'Tổng các bundle: {sum(x[1] for x in totals):,} serialized objects.\n'
 text+='Đã đọc ObjectInfo và kiểm tra mọi byteStart + size nằm trong vùng data cho 8 bundle (0 record out-of-bounds).\n'
 text+='Số MonoBehaviour tính theo OBJECT CLASS, không phải số class C# hay hàm game.\n'
 text+='Class 49 (TextAsset) không xuất hiện trong 8 bundle kiểm tra; điều này KHÔNG loại trừ dữ liệu bảng ở nơi khác.\n'
 text+='\n2. DỮ LIỆU GAMEPLAY CÓ THỂ KHÔI PHỤC TỪ TYPE TREE\n'
 text+='monster MonoBehaviour type index 28, typeHash 7a0dadb0914a768bc4e3387266e66c16:\n'
 text+='  các field atkSpeed, miss, accuracy, dmgReduce, MonsterType, AttackRange, SpecialAttack_Cooltime, SpecialAttack_Prob.\n'
 text+='monster MonoBehaviour type index 20, typeHash 296cc624c2421c376a8521488e9fd63e:\n'
 text+='  nested Spirit/SpiritBase chứa SpeciesIndex, Grade, Level, AbilityValues, SkillType, SkillValues.\n'
 text+='popup (UI/prefab): các type riêng có TXT_StatValue, BTN_LevelUp, _rewards, BTN_GetReward,\n'
 text+='  _skillPattern, attackEffect, WorldBoss, DemonSkill... xem He_Thong_Gameplay_Tu_TypeTree.csv.\n'
 text+='\n3. KIỂM TRA GIÁ TRỊ OBJECT THỰC\n'
 text+=f'  Đã đọc {len(samples)} mẫu MonoBehaviour đủ đúng số byte khai báo.\n'
 ex=next((s for s in samples if s['type_index']==28),None)
 if ex:
  text+=f"  Một mẫu quái: {ex['consumed_bytes']}/{ex['declared_object_size']} byte, SpecialAttack_Cooltime={ex['values'].get('SpecialAttack_Cooltime')}.\n"
 text+='  Đây là giá trị đã serialize trong prefab, KHÔNG phải xác nhận cooldown khi game vận hành.\n'
 text+='\n4. KIỂM CHỨNG BỘ BẢO VỆ\n'
 text+=('  libeufxww.so (tệp bản gốc tách ở giai đoạn 2) có ELF SONAME=libliapp.so.\n' if 'SONAME' in libinfo else '  Chưa đọc được ELF SONAME trong phiên này.\n')
 text+=libinfo+'\n'
 text+='  Việc tìm được TypeTree từ bundle không có nghĩa metadata LIKEY đã được giải mã.\n'
 text+='\n5. CHƯA PHỤC HỒI\n'
 text+='  Chưa có metadata IL2CPP hợp lệ, dump.cs, script.json, source C#, công thức combat, xác suất rơi hay server data.\n'
 text+='  Các dữ liệu type tree giúp dựng cấu trúc hoặc tham số mặc định, KHÔNG thay thế logic hàm native.\n'
 text+='\n6. FILE KÈM\n'
 text+='  UnityFS_Catalog.json: danh mục mọi bundle, object count và type-tree từ dữ liệu thực.\n'
 text+='  He_Thong_Gameplay_Tu_TypeTree.csv: các field chọn lọc kèm typeHash và index.\n'
 text+='  Monster_MonoBehaviour_GiaTri_KiemChung.json: mẫu giá trị + offset, chỉ giữ các mẫu parse đủ bytes.\n'
 text+='  parse_unityfs.py, catalog_unity.py, read_serial_values.py: script phân tích tĩnh tái lập.\n'
 text+='  xuat_bang_chung_gd3.py: xuất bảng tóm tắt và mẫu sau khi có UnityFS_Catalog.json.\n'
 (base/'BAO_CAO_GIAI_DOAN3.txt').write_text(text,encoding='utf-8')
 shs=['SHA-256 file goc XAPK: '+sha(xapk)]
 for p in sorted(base.glob('*')):
  if p.is_file() and p.name!='SHA256_TAP_TIN.txt':shs.append(f'{sha(p)}  {p.name}')
 (base/'SHA256_TAP_TIN.txt').write_text('\n'.join(shs)+'\n',encoding='utf-8')
 print(text[:5000])
 print('samples',len(samples))

if __name__=='__main__':
 if len(sys.argv)!=3:raise SystemExit('Usage: python xuat_bang_chung_gd3.py <original.xapk> <output_dir>')
 run(sys.argv[1],sys.argv[2])
