#!/usr/bin/env python3
"""Static, reproducible evidence collector for user-supplied Slayer Legend 700.0.4 XAPK.
It does not decrypt the LIAPP-protected prefix, execute APK code, or reconstruct methods.
Requires Python 3.9+ stdlib. Usage:
    python slayer_phase2_build.py game.xapk global-metadata.dat output_directory
"""
from pathlib import Path
import zipfile, hashlib, json, math, csv, io, sys, re, shutil, tempfile
from collections import Counter

KEY = bytes.fromhex('43 44 45 46 47 48 49 4a')
MAGIC = bytes.fromhex('af 1b b1 fa')
TERMS = ['Assembly-CSharp','GrowSlayer','GameManager','Xls_Skill','Xls_AdventureInfo','Xls_WeaponSkin','SkillName','UnityEngine','MetadataRegistration']

def digest(data): return hashlib.sha256(data).hexdigest()
def entropy(data):
    if not data: return None
    c = Counter(data); l=len(data)
    return round(-sum((n/l)*math.log2(n/l) for n in c.values()), 4)
def hashes_from_file_stream(f):
    h=hashlib.sha256();size=0
    while part:=f.read(1048576):h.update(part);size+=len(part)
    return size,h.hexdigest()
def scan_apk_inner(xapk_z, name, root):
    info = xapk_z.getinfo(name)
    with tempfile.SpooledTemporaryFile(max_size=8*1024*1024) as tf:
        with xapk_z.open(info) as src: shutil.copyfileobj(src,tf,1024*1024)
        tf.seek(0)
        with zipfile.ZipFile(tf) as apk:
            entries=apk.infolist()
            markers=[]
            paths=[]
            for entry in entries:
                if any(s in entry.filename.lower() for s in ['liapp','eufxww','lockincomp']):
                    paths.append({'path':entry.filename,'bytes':entry.file_size})
            # examine only known relevant files, no execution
            for entry in entries:
                p=entry.filename
                if p.endswith('.dex') or p.endswith('.ini'):
                    data=apk.read(p)
                    for token in [b'com/liapp',b'com.liapp',b'lockincomp',b'LIKEY']:
                        at=data.lower().find(token.lower())
                        if at>=0: markers.append({'file':p,'marker':token.decode(),'offset_dec':at,'offset_hex':hex(at)})
                if p=='assets/LIAPP.ini':
                    data=apk.read(p)
                    (root/'LIAPP_ini_from_XAPK.txt').write_bytes(data)
            return {'apk':name,'apk_bytes':info.file_size,'entry_count':len(entries), 'selected_paths':paths,'dex_ini_markers':markers}

def main(xapk_path, metadata_path, out_dir):
    out=Path(out_dir);out.mkdir(parents=True,exist_ok=True)
    d=Path(metadata_path).read_bytes()
    decoded=bytes((v^KEY[i%len(KEY)]) for i,v in enumerate(d))
    reference=None
    with zipfile.ZipFile(xapk_path) as x:
        apk_summaries=[]
        for name in ['com.gear2.growslayer.apk','config.arm64_v8a.apk']:
            apk_summaries.append(scan_apk_inner(x,name,out))
        with tempfile.SpooledTemporaryFile(max_size=8*1024*1024) as tf:
            with x.open('com.gear2.growslayer.apk') as src:shutil.copyfileobj(src,tf,1024*1024)
            tf.seek(0)
            with zipfile.ZipFile(tf) as apk:
                n='assets/bin/Data/Managed/Metadata/global-metadata.dat'
                with apk.open(n) as zf: size_in_apk,sha_in_apk=hashes_from_file_stream(zf)
    evidence={
        'description':'Static evidence only; no recovered IL2CPP metadata header, class/method table, or game formula',
        'xapk':Path(xapk_path).name,
        'metadata_file':Path(metadata_path).name,
        'metadata_bytes':len(d),
        'metadata_sha256':digest(d),
        'metadata_apk_embedded_bytes':size_in_apk,
        'metadata_apk_embedded_sha256':sha_in_apk,
        'metadata_matches_embedded_file':size_in_apk==len(d) and sha_in_apk==digest(d),
        'raw_first_48_bytes_hex':d[:48].hex(' '),
        'raw_startswith_LIKEY':d.startswith(b'LIKEY'),
        'raw_magic_positions':[],
        'xor_key_hex':KEY.hex(' '),
        'xor_first_16_bytes_hex':decoded[:16].hex(' '),
        'xor_magic_positions':[],
        'xor_contains_strings':{},
        'apk_evidence':apk_summaries,
        'liapp_ini_content':(out/'LIAPP_ini_from_XAPK.txt').read_text(errors='replace'),
        'xor_decode_complete':False,
        'dump_cs_recovered':False,
        'native_method_mappings_recovered':False,
    }
    start=0
    while (pos:=d.find(MAGIC,start))!=-1 and len(evidence['raw_magic_positions'])<50:
        evidence['raw_magic_positions'].append(pos); start=pos+1
    start=0
    while (pos:=decoded.find(MAGIC,start))!=-1 and len(evidence['xor_magic_positions'])<50:
        evidence['xor_magic_positions'].append(pos);start=pos+1
    for term in TERMS:
        p=term.encode('ascii'); loc=[];start=0
        while (pos:=decoded.find(p,start))!=-1 and len(loc)<20:
            loc.append({'decimal':pos,'hex':hex(pos)});start=pos+1
        evidence['xor_contains_strings'][term]={'count':decoded.count(p),'example_offsets':loc}
    with (out/'METADATA_REGION_ENTROPY.csv').open('w',newline='',encoding='utf-8') as f:
        wr=csv.writer(f);wr.writerow(['offset_hex','offset_dec','block_bytes','entropy_raw','entropy_xor','decoded_printable_fraction'])
        # 64KiB for overview; detailed 256B windows around transition
        for off in list(range(0,len(d),65536)) + list(range(0x235000,0x236000,256)):
            length=256 if 0x235000<=off<0x236000 and off%65536 else 65536
            a=d[off:off+length]; b=decoded[off:off+length]
            frac=round(sum(x in (9,10,13) or 32<=x<=126 for x in b)/len(b),4)
            wr.writerow([hex(off),off,len(a),entropy(a),entropy(b),frac])
    (out/'EVIDENCE_VERIFIED.json').write_text(json.dumps(evidence,ensure_ascii=False,indent=2),encoding='utf-8')
    ini=evidence['liapp_ini_content']
    src=evidence['xor_contains_strings']
    readme=f'''# SLAYER LEGEND 700.0.4 — PHÂN TÍCH TĨNH / BƯỚC 2

Nguồn: file XAPK do người dùng cung cấp. Chỉ có báo cáo tĩnh; **chưa giải mã hoàn chỉnh metadata hoặc mã gameplay**.

## Xác minh trực tiếp

- Metadata được tách trước đó **trùng SHA-256** với `assets/bin/Data/Managed/Metadata/global-metadata.dat` trong APK chính: **{evidence['metadata_matches_embedded_file']}**.
- Dung lượng metadata: **{len(d):,} bytes**. SHA-256: `{digest(d)}`.
- Header gốc: `{d[:16].hex(' ')}`; bắt đầu bằng `LIKEY`: **{evidence['raw_startswith_LIKEY']}**.
- Gói APK chính chứa `assets/LIAPP.ini`, `assets/.eufxww.dex`; split arm64 có `lib/arm64-v8a/libeufxww.so`.
- File `assets/LIAPP.ini` ghi rõ: `{ini.splitlines()[-1]}`. Đây là **bằng chứng xác nhận LIAPP**, không còn chỉ là giả thuyết về tên `LIKEY`.
- Phép XOR key `43 44 45 46 47 48 49 4A` đọc được một số chuỗi, nhưng không sinh header metadata chuẩn ở đầu file. **Không có file dump.cs**.
- Vùng 0x000000–0x22FFFF có entropy ~7.99 bit/byte tính theo block 64 KiB; sự chuyển tiếp sang vùng ít entropy hơn nằm gần `0x235600`–`0x235800`. Đây là phép đo thống kê, **không phải offset giải mã đã được xác định**.

## Chuỗi được tìm thấy sau XOR (chỉ chứng minh có định danh, KHÔNG chứng minh đã khôi phục logic)

| Chuỗi | Lần xuất hiện | Offset ví dụ |
|---|---:|---|
'''
    for term in TERMS:
        offsets=src[term]['example_offsets']; example=offsets[0]['hex'] if offsets else '(không thấy)'
        readme+=f'| `{term}` | {src[term]["count"]:,} | `{example}` |\n'
    readme+='''
## File bàn giao
- `EVIDENCE_VERIFIED.json`: bằng chứng tên tệp, marker, kích thước, SHA, offset được đọc trực tiếp.
- `METADATA_REGION_ENTROPY.csv`: bảng entropy của metadata theo vùng (bao gồm vùng chuyển tiếp).
- `LIAPP_ini_from_XAPK.txt`: nội dung gốc 220 byte, không sửa đổi.
- `reproduce_static.py`: script tái lập bằng Python chuẩn (không cần cài thư viện).

## Phần chưa làm được
- Chưa giải được vùng metadata đầu, chưa có bảng offset/type/method hợp lệ, chưa xuất được `dump.cs` hoặc `script.json`.
- Chưa phục hồi công thức sát thương, nâng cấp, AI hay backend của Slayer Legend.
- Chưa xác định chính xác thuật toán/khóa giải mã LIAPP của bản game này.
- Không dùng bất kỳ hình, texture hoặc gameplay tự chế nào trong gói phân tích.

## Cách chạy lại trên máy Windows
`python reproduce_static.py "Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" global-metadata.dat ket_qua`
'''
    (out/'README_KET_QUA.md').write_text(readme,encoding='utf-8')
    print(json.dumps({'out':str(out),'match':evidence['metadata_matches_embedded_file'],'sha256':evidence['metadata_sha256'],'src':{term:src[term] for term in ['GameManager','Xls_Skill','Assembly-CSharp']},'liapp_ini':ini},ensure_ascii=False,indent=2))

if __name__=='__main__':
    if len(sys.argv)!=4:
        sys.exit('Usage: python slayer_phase2_build.py game.xapk global-metadata.dat out_directory')
    main(*sys.argv[1:])
