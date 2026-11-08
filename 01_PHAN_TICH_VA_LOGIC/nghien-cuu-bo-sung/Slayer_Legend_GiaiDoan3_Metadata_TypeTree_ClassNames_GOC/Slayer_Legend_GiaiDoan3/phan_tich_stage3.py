#!/usr/bin/env python3
"""Read-only static analysis of Slayer Legend 700.0.4 binaries.

Not a LIAPP decryptor and not an IL2CPP decompiler.
Usage: python phan_tich_stage3.py GLOBAL-METADATA.DAT LIBIL2CPP.SO [OUTPUT_DIRECTORY]
Requires only the Python standard library (readelf and nm are optional).

All output is derived from supplied binary files; source files are never modified.
"""
import csv
import hashlib
import json
import math
import re
import struct
import subprocess
import sys
from collections import Counter
from pathlib import Path

KEY = bytes(range(0x43, 0x4b))
MAGIC = bytes.fromhex('af1bb1fa')
START = 0x2356af

def sha256(p):
    h = hashlib.sha256()
    with open(p, 'rb') as f:
        for b in iter(lambda: f.read(1024*1024), b''):
            h.update(b)
    return h.hexdigest()

def decode_xor(raw):
    result = bytearray(len(raw))
    for n, key in enumerate(KEY):
        table = bytes.maketrans(bytes(range(256)), bytes(k ^ key for k in range(256)))
        result[n::8] = raw[n::8].translate(table)
    return bytes(result)

def entropy(b):
    c=Counter(b)
    return -sum((x/len(b))*math.log2(x/len(b)) for x in c.values()) if b else 0.

def read_strings(decoded, start, stop):
    result=[]
    for m in re.finditer(rb'[^\x00]+',decoded[start:stop]):
        data=m.group()
        if all(32<=x<127 for x in data):
            result.append((start+m.start(),data.decode('ascii')))
    return result

def run(metapath, libpath, outdir):
    outdir.mkdir(parents=True,exist_ok=True)
    raw=metapath.read_bytes()
    decoded=decode_xor(raw)

    # This is the longest contiguous printable+NUL prefix starting at an independently
    # observed candidate boundary; does NOT establish the metadata string-table offset.
    end=START
    while end<len(decoded) and (decoded[end]==0 or 32<=decoded[end]<127):
        end+=1
    names=read_strings(decoded,START,end)
    exact_xls=[(off,s) for off,s in names if re.fullmatch(r'Xls_[A-Za-z0-9_]+',s)]

    # Adjacent tokens are likely field names for *most* Xls classes, but without
    # TypeDefinition/FieldDefinition indices this must never be labeled an exact schema.
    groups=[]
    offsets=[a for a,s in names]
    for idx,(start_off,name) in enumerate(exact_xls):
        next_off=exact_xls[idx+1][0] if idx+1<len(exact_xls) else None
        if next_off is None:  # Last table has no reliable boundary
            groups.append({'table':name,'offset_hex':hex(start_off),'next_table_offset_hex':None,
                           'following_tokens':[],'field_assignment_validated':False})
            continue
        between=[s for off,s in names if start_off<off<next_off]
        groups.append({'table':name,'offset_hex':hex(start_off),
                       'next_table_offset_hex':hex(next_off),'following_tokens':between,
                       'field_assignment_validated':False})

    with open(outdir/'chuoi_NUL_vung_1.csv','w',encoding='utf-8',newline='') as f:
        w=csv.writer(f);w.writerow(['file_offset_hex','text_ascii','evidence'])
        for off,s in names:w.writerow([f'0x{off:08X}',s,'XOR_8BYTE_NULL_TERMINATED'])
    with open(outdir/'bang_Xls_chuoi_lien_ke.csv','w',encoding='utf-8',newline='') as f:
        w=csv.writer(f);w.writerow(['ten_bang','offset_hex','offset_bang_ke_tiep','so_chuoi_lien_ke','chuoi_lien_ke_khong_phai_field_da_xac_minh'])
        for g in groups:
            w.writerow([g['table'],g['offset_hex'],g['next_table_offset_hex'],len(g['following_tokens']),'; '.join(g['following_tokens'])])
    (outdir/'bang_Xls_chuoi_lien_ke.json').write_text(json.dumps(groups,ensure_ascii=False,indent=2),encoding='utf-8')

    # Check presence of selected IL2CPP markers and all 8 rotated XOR signatures.
    # A raw or XOR-transformed signature alone is NOT proof of a valid metadata table.
    magic_checks={'plain_magic_hits':[],'xor_magic_hits_by_phase':{},'plausible_version_hits':[]}
    pos=raw.find(MAGIC)
    while pos!=-1:
        magic_checks['plain_magic_hits'].append(hex(pos));pos=raw.find(MAGIC,pos+1)
    for phase in range(8):
        # For every file offset p, hypothesized key is KEY[(p+phase)%8].
        # Searching an aligned 8-byte signature checks both magic and version 39.
        count=0;hit_offsets=[]
        for residue in range(8):
            pattern=bytes((MAGIC+struct.pack('<I',39))[j] ^ KEY[(residue+phase+j)%8] for j in range(8))
            start=0
            while True:
                at=raw.find(pattern,start)
                if at<0:break
                if at%8==residue:
                    count+=1
                    if len(hit_offsets)<15:hit_offsets.append(hex(at))
                start=at+1
        magic_checks['xor_magic_hits_by_phase'][str(phase)]={'matches_header_version39':count,'offsets':hit_offsets}
    magic_checks['decoded_magic_phase0_count']=decoded.count(MAGIC)

    lib=libpath.read_bytes()
    elf=lib[:4]==b'\x7fELF' and lib[4]==2 and lib[5]==1 and lib[18:20]==b'\xb7\x00'
    symbols={}
    try:
        output=subprocess.run(['nm','-D',str(libpath)],capture_output=True,text=True,timeout=25)
        if output.returncode==0:
            for ln in output.stdout.splitlines():
                parts=ln.split()
                if len(parts)>=3 and parts[-1].startswith('il2cpp_'):
                    symbols[parts[-1]]=parts[0]
    except (OSError,subprocess.TimeoutExpired):pass
    with open(outdir/'il2cpp_API_xuat_ra.csv','w',encoding='utf-8',newline='') as f:
        w=csv.writer(f);w.writerow(['symbol_il2cpp','value_elf_virtual_address_hex','phan_loai'])
        for name,addr in sorted(symbols.items()):w.writerow([name,addr,'ENGINE_API_KHONG_PHAI_HAM_GAMEPLAY'])

    target_names=['Xls_Skill','Xls_AdventureInfo','Xls_AdventureWaveInfo','Xls_WeaponSkin',
                  'GameManager','GrowSlayer','LIAPP_DETECTED_ANTI_DEBUGGER','LIAPP_DETECTED_INTEGRITY',
                  'SkillBasicDes','BossNumber','Damage','Assembly-CSharp.dll',
                  'global-metadata.dat']
    offsets={}
    for name in target_names:
        pattern=name.encode()
        offsets[name]={'metadata_xor_first_hex':hex(decoded.find(pattern)) if decoded.find(pattern)>=0 else None,
                       'metadata_xor_total':decoded.count(pattern),
                       'libil2cpp_raw_first_hex':hex(lib.find(pattern)) if lib.find(pattern)>=0 else None,
                       'libil2cpp_raw_total':lib.count(pattern)}

    entropy_windows=[]
    for a in range(0x233000,0x239000,0x100):
        block=decoded[a:a+0x100]
        entropy_windows.append({'offset_hex':hex(a),
                'xor_ascii_or_nul_ratio':round(sum(v==0 or 32<=v<127 for v in block)/len(block),4),
                'raw_entropy_bits_per_byte':round(entropy(raw[a:a+0x100]),4)})
    with open(outdir/'ranh_gioi_XOR_256B.csv','w',encoding='utf-8',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(entropy_windows[0].keys()))
        w.writeheader();w.writerows(entropy_windows)

    report={
        'project':'Slayer Legend 700.0.4 - static metadata study phase 3',
        'source_metadata':{'name':metapath.name,'bytes':len(raw),'sha256':sha256(metapath),
                           'first_32_bytes_hex':raw[:32].hex(' '),'starts_with_LIKEY':raw.startswith(b'LIKEY')},
        'source_libil2cpp':{'name':libpath.name,'bytes':len(lib),'sha256':sha256(libpath),
                            'elf64_little_endian_aarch64':elf,
                            'native_il2cpp_exported_api_count':len(symbols)},
        'xor_hypothesis':{'key_hex':KEY.hex(' '),'key_phase_for_named_region':0,
                          'decoded_file_sha256':hashlib.sha256(decoded).hexdigest(),
                          'NOTE':'XOR is not a full LIAPP metadata decryption!'},
        'observed_ascii_zone':{'first_complete_visible_ALARM_TEXT_022_offset_hex':hex(START),
            'first_contiguous_printable_or_nul_run_end_exclusive_hex':hex(end),
            'run_length_bytes':end-START,'null_separated_ascii_strings_in_run':len(names),
            'xls_names_in_run':len(exact_xls),'distinct_xls_names':len(set(s for o,s in exact_xls)),
            'NOTE':'This is an observed data zone, not a validated IL2CPP metadata table offset.'},
        'metadata_magic_checks':magic_checks,
        'selected_string_locations':offsets,
        'important_note':('Names adjacent to an Xls_* token are NOT confirmed to be its fields '
                          'without IL2CPP field indices; no actual row values or formulas were recovered.'),
        'status':{'protected_metadata_recovered':False,'dump_cs_created':False,
                  'method_addresses_linked':False,'gameplay_formulas_recovered':False}
    }
    (outdir/'Stage3_Evidence.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    readme=f'''SLAYER LEGEND 700.0.4 - BÁO CÁO PHÂN TÍCH TĨNH GIAI ĐOẠN 3
===============================================================
Nguồn: global-metadata.dat và libil2cpp.so gốc trích từ XAPK do người dùng cung cấp.
Kiểm tra: Python stdlib, read-only. Mọi byte-offset là vị trí trong file, không phải RVA của game.

1) VÙNG TÊN ĐỊNH DANH SAU XOR
- Khóa thử: 43 44 45 46 47 48 49 4A, dùng phase=0 theo offset file.
- Phần đầu file gốc có header LIKEY, vẫn KHÔNG phải metadata chuẩn.
- Tại 0x2356AF bắt đầu thấy chuỗi nguyên vẹn 'ALARM_TEXT_022' sau XOR.
- Dải byte từ {hex(START)} đến {hex(end)} (đầu cuối không tính) liên tục chứa ASCII hiển thị / NUL.
- Chiều dài dải: {end-START:,} byte; có {len(names):,} chuỗi ASCII không rỗng phân tách bởi NUL.
- Trong đó có {len(exact_xls)} token bắt đầu chính xác bằng Xls_ (không trùng tên).
- Đây là vùng tên, KHÔNG CHỨNG MINH đã phục hồi bảng IL2CPP đầy đủ.

2) TÊN BẢNG VÀ TRƯỜNG NẰM LIỀN KỀ (CHƯA CÓ FIELD INDEX)
- Xls_Skill có chuỗi theo sau: SkillName, SkillBasicDes, SkillSpecificDes,
  skillOpenType, skillType, activeType, passiveType, MpCost, upgradeValue,
  ActiveNeedValue, Range, Duration, AnimationNumber, Have, OldSkill, MaxLevelType.
- Xls_AdventureInfo có: AdventureIndex, SubIndex, SubName, CameraSetting,
  BossNumber, Boss, BossScale, Dia_Clear, Emerald_Clear, Map, Hp, Atk,
  AttackSpeed, Miss, Accuracy, BattleTime.
- Xls_AdventureWaveInfo có: WaveNumber, MonsterCount, RepeatCount,
  DistanceIndex, m1..m10, S1..S10.
- Việc gán các chuỗi này làm field vẫn là GIẢ THUYẾT rất hợp lý dựa vào
  sự liền kề; chưa khẳng định cho đến khi đọc được FieldDefinition.
- Chuỗi LIAPP_DETECTED_ANTI_DEBUGGER và LIAPP_DETECTED_INTEGRITY còn xuất
  hiện sau Xls_WeaponUpgradeStat: ví dụ rõ rằng KHÔNG thể mặc nhiên coi
  tất cả chuỗi giữa hai tên Xls_ là field của bảng trước.

3) THƯ VIỆN LIBIL2CPP
- ELF64 little-endian AArch64: {elf}
- Có {len(symbols)} export API tên il2cpp_* qua nm -D (nếu nm khả dụng).
- Có literal Assembly-CSharp.dll và global-metadata.dat trong nhị phân.
- Không tìm thấy literal GameManager hoặc Xls_Skill trong libil2cpp.so.
- Những API engine KHÔNG PHẢI địa chỉ hàm gameplay gốc.

4) TÌNH TRẠNG GIẢI MÃ
- Magic IL2CPP gốc tìm thấy: {len(magic_checks['plain_magic_hits'])} vị trí.
- Magic IL2CPP trong bản XOR phase=0 tìm thấy: {magic_checks['decoded_magic_phase0_count']} vị trí.
- Chưa có header, bảng MethodDefinition / TypeDefinition hợp lệ.
- Chưa khôi phục dump.cs / script.json hay công thức sát thương.
- Chưa có dữ liệu chứng minh giá trị từng hàng Xls_* được lấy lại.

5) ĐẦU RA
- Stage3_Evidence.json: thống kê, SHA256, mốc byte và kết quả thử.
- chuoi_NUL_vung_1.csv: các chuỗi ASCII trong vùng liền mạch, với offset.
- bang_Xls_chuoi_lien_ke.csv/.json: token Xls_* và các chuỗi ngay sau nó.
- ranh_gioi_XOR_256B.csv: entropy/khả năng đọc của vùng chuyển tiếp.
- il2cpp_API_xuat_ra.csv: địa chỉ API public của Unity, KHÔNG PHẢI gameplay.
- phan_tich_stage3.py: script tái lập kiểm tra.

Lệnh tái chạy:
  python phan_tich_stage3.py global-metadata.dat libil2cpp.so thu_muc_ket_qua
'''
    (outdir/'BAO_CAO_GIAI_DOAN3.txt').write_text(readme,encoding='utf-8')
    print('Completed:',outdir)
    print('String zone:',hex(START),hex(end),'nstrings',len(names),'xls',len(exact_xls))
    print('Magic raw:',len(magic_checks['plain_magic_hits']),'xor_phase0:',magic_checks['decoded_magic_phase0_count'])
    print('API symbols:',len(symbols))
    return report

if __name__=='__main__':
    if len(sys.argv)<3:raise SystemExit(__doc__)
    run(Path(sys.argv[1]),Path(sys.argv[2]),Path(sys.argv[3]) if len(sys.argv)>=4 else Path('Slayer_Legend_GiaiDoan3'))
