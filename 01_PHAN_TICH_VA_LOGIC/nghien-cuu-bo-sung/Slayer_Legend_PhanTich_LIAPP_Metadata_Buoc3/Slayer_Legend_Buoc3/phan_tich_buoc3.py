#!/usr/bin/env python3
"""Reproducible, read-only static analysis for the USER-SUPPLIED Slayer Legend 700.0.4 APK.
No decryption of LIAPP protected metadata, no executable code launched from APK.
Python 3.9+ stdlib only.
Usage: python phan_tich_buoc3.py global-metadata.dat .eufxww.dex libeufxww.so OUT_DIRECTORY
"""
from pathlib import Path
from collections import Counter
import csv, hashlib, json, math, struct, sys

KEY=b'CDEFGHIJ'
MAGIC=bytes.fromhex('AF 1B B1 FA')
TERMS=['Xls_Skill','Xls_SkillLevel','Xls_SkillMakingData','Xls_AdventureInfo',
       'Xls_AdventureWaveInfo','Xls_WeaponSkin','LiappforUnityImpl','GameManager','GrowSlayer']

def sha(b):return hashlib.sha256(b).hexdigest()
def entro(b):
    counts=Counter(b); n=len(b)
    return round(-sum((v/n)*math.log2(v/n) for v in counts.values()),4)
def printable(b):return round(sum(32<=x<=126 or x in (9,10,13) for x in b)/len(b),4)
def decode_all(raw):return bytes((x ^ KEY[i%len(KEY)]) for i,x in enumerate(raw))
def asciiz_following(data,at,limit=45):
    result=[];p=at
    for _ in range(limit):
        e=data.find(b'\x00',p,min(p+180,len(data)))
        if e<0:break
        v=data[p:e]
        if not v or not all(32<=c<127 for c in v):break
        result.append({'offset_hex':hex(p),'value':v.decode('ascii')})
        p=e+1
    return result

def read_elf_dynamic(path):
    # ELF64 little-endian PT_DYNAMIC and PT_LOAD; no readelf dependency.
    b=Path(path).read_bytes()
    if b[:4]!=b'\x7fELF' or b[4]!=2 or b[5]!=1:
        return {'error':'not ELF64 little endian'}
    phoff=struct.unpack_from('<Q',b,32)[0]
    entsz,num=struct.unpack_from('<HH',b,54)
    ph=[]
    for i in range(num):
        o=phoff+i*entsz
        typ,flags,off,vaddr,paddr,filesz,memsz,align=struct.unpack_from('<IIQQQQQQ',b,o)
        ph.append(dict(type=typ,flags=flags,off=off,vaddr=vaddr,filesz=filesz))
    dyn=next((x for x in ph if x['type']==2),None)
    if not dyn:return {'error':'dynamic segment not found'}
    entries=[]
    for o in range(dyn['off'],dyn['off']+dyn['filesz'],16):
        tag,val=struct.unpack_from('<qQ',b,o)
        if tag==0:break
        entries.append((tag,val))
    straddr=next((v for t,v in entries if t==5),None)
    if straddr is None:return {'error':'DT_STRTAB not found'}
    load=next((p for p in ph if p['type']==1 and p['vaddr']<=straddr<p['vaddr']+p['filesz']),None)
    if load is None:return {'error':'cannot map strtab VA to file offset'}
    strtab=load['off']+(straddr-load['vaddr'])
    def getstr(o):
        start=strtab+o
        end=b.find(b'\x00',start)
        return b[start:end].decode('utf-8','replace') if end>=0 else ''
    return {'ELF_architecture':'AArch64','file_bytes':len(b),'sha256':sha(b),
            'soname':[getstr(v) for t,v in entries if t==14],
            'needed_libraries':[getstr(v) for t,v in entries if t==1],
            'dynamic_segment_offset_hex':hex(dyn['off'])}

def read_dex(path):
    b=Path(path).read_bytes();sz=struct.unpack_from('<I',b,32)[0]
    candidates=[];off=0
    while len(candidates)<10:
        at=b.find(b'dex\n',off)
        if at<0:break
        if at+40<=len(b) and b[at+7]==0:
            file_size=struct.unpack_from('<I',b,at+32)[0]
            candidates.append({'offset_hex':hex(at),'version':b[at+4:at+7].decode('ascii','replace'),
                               'declared_file_size_bytes':file_size})
        off=at+4
    return {'file_bytes':len(b),'sha256':sha(b),'top_level_dex_declared_size':sz,
            'bytes_after_first_dex':len(b)-sz,'embedded_dex_candidates':candidates,
            'liapp_class_marker_offset_hex':hex(b.find(b'com/liapp')),
            'likey_marker_offset_hex':hex(b.find(b'LIKEY'))}

def main(metadata,dex,elf,outdir):
    out=Path(outdir);out.mkdir(exist_ok=True,parents=True)
    raw=Path(metadata).read_bytes();dec=decode_all(raw)
    report={'provenance':'Derived from files extracted from user supplied Slayer Legend XAPK 700.0.4',
            'status':'STATIC EVIDENCE ONLY, NO SOURCE CODE OR GAMEPLAY FORMULAE RECOVERED',
            'metadata':{'file_bytes':len(raw),'sha256':sha(raw),'first_16_bytes_hex':raw[:16].hex(' '),
                        'LIKEY_at_start':raw.startswith(b'LIKEY'),
                        'IL2CPP_magic_at_start':raw.startswith(MAGIC),
                        'XOR_8byte_key_hex':KEY.hex(' '),
                        'xor_first_16_bytes_hex':dec[:16].hex(' '),
                        'xor_magic_at_start':dec.startswith(MAGIC),
                        'ALARM_TEXT_022_at_offset_hex':hex(dec.find(b'ALARM_TEXT_022')),
                        'zero_terminated_name_region_notice':'Identifiable strings, not proven metadata table structure'},
            'dex':read_dex(dex),'native_protection_library':read_elf_dynamic(elf),
            'sample_strings_and_fieldnames':{},'regional_stats':[]}
    for term in TERMS:
        p=dec.find(term.encode())
        report['sample_strings_and_fieldnames'][term]={
           'offset_hex':hex(p) if p>=0 else None,
           'following_strings':asciiz_following(dec,p,45) if p>=0 else []}
    for off in [0,0x200000,0x230000,0x235000,0x235600,0x235700,0x235800,0x240000,0x27d000,0x300000]:
        a=raw[off:off+4096];z=dec[off:off+4096]
        report['regional_stats'].append({'offset_hex':hex(off),'bytes':len(a),
           'entropy_raw':entro(a),'entropy_xor':entro(z),'xor_ascii_fraction':printable(z)})
    (out/'BUOC3_KET_QUA_KIEM_CHUNG.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    with (out/'BANG_TEN_XLS_VA_TRUONG_LIEN_KE.csv').open('w',encoding='utf-8',newline='') as f:
        wr=csv.writer(f);wr.writerow(['ten_bang_xls','offset_hex','cac_chuoi_ke_tiep_trong_string_heap','chu_y'])
        start=0;done=set()
        while (at:=dec.find(b'Xls_',start))!=-1:
            start=at+4
            if at>0 and dec[at-1]!=0:continue
            end=dec.find(b'\x00',at,at+100)
            if end<0:continue
            name=dec[at:end]
            if not name or not all(c in b'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_' for c in name):continue
            if name in done:continue
            done.add(name)
            nexts=asciiz_following(dec,at,40)
            followers=[]
            for item in nexts[1:]:
                if item['value'].startswith('Xls_'):break
                followers.append(item['value'])
            wr.writerow([name.decode(),hex(at),'; '.join(followers),'Adjacency only; not verified class/field relationship'])
    md=report['metadata'];dx=report['dex'];el=report['native_protection_library']
    lines=[
    '# SLAYER LEGEND 700.0.4 — BƯỚC 3: BẰNG CHỨNG TĨNH ĐỌC TRỰC TIẾP',
    '',
    'Các kết quả dưới đây lấy trực tiếp từ hai file bảo vệ LIAPP và metadata của XAPK người dùng gửi.',
    '**Không có `dump.cs`, không giải mã hoàn chỉnh metadata, không trích xuất được công thức sát thương.**',
    '',
    '## 1. Metadata',
    f'- Kích thước: {md["file_bytes"]:,} byte; SHA256: `{md["sha256"]}`',
    f'- Header 16 byte gốc: `{md["first_16_bytes_hex"]}`.',
    f'- Header 16 byte sau XOR: `{md["xor_first_16_bytes_hex"]}`; **không phải** magic IL2CPP hợp lệ.',
    f'- Chuỗi `ALARM_TEXT_022` xuất hiện ở offset `{md["ALARM_TEXT_022_at_offset_hex"]}` sau XOR.',
    '- Vùng đầu có entropy cao; sau đó xuất hiện chuỗi NUL-terminated đọc được với khóa XOR. Đây là **phân vùng quan sát**, không phải offset giải mã header.',
    '',
    '## 2. Thành phần bảo vệ LIAPP',
    f'- File `.eufxww.dex`: {dx["file_bytes"]:,} byte, SHA256 `{dx["sha256"]}`.',
    f'- DEX đầu tiên khai báo kích thước {dx["top_level_dex_declared_size"]} byte; file chứa thêm {dx["bytes_after_first_dex"]} byte phía sau.',
    f'- Dấu `LIKEY` ở offset `{dx["likey_marker_offset_hex"]}`; `com/liapp` ở offset `{dx["liapp_class_marker_offset_hex"]}`.',
    f'- Tìm thấy các chữ ký DEX tại: {", ".join(x["offset_hex"] for x in dx["embedded_dex_candidates"])}.',
    f'- File `libeufxww.so`: {el.get("file_bytes",0):,} byte, SONAME ELF thực tế: `{", ".join(el.get("soname",[]))}`.',
    f'- Phụ thuộc ELF: {", ".join(el.get("needed_libraries",[]))}.',
    '- Các yếu tố trên cùng với `assets/LIAPP.ini` xác nhận game có thành phần LIAPP. Chúng **không đủ** để tìm thuật toán giải mã hoặc lấy source code.',
    '',
    '## 3. Tên bảng dữ liệu được đọc ra sau XOR (chưa xác minh liên hệ class/method)',
    ]
    for term in ['Xls_Skill','Xls_AdventureInfo','Xls_WeaponSkin','LiappforUnityImpl']:
        vals=report['sample_strings_and_fieldnames'][term]
        snippets=', '.join('`'+x['value']+'`' for x in vals['following_strings'][1:13])
        lines.append(f'- `{term}` tại `{vals["offset_hex"]}`; các chuỗi kề nhau: {snippets}.')
    lines.extend(['','## 4. Phần vẫn chưa phục hồi',
      '- Chưa giải mã được phần bảng metadata đầu file `LIKEY`.',
      '- Chưa có `TypeDefinition`/`MethodDefinition` với vị trí hợp lệ, chưa có method→native address map.',
      '- Chưa có công thức sát thương, skill, drop, tiến trình hay backend của game.',
      '- Không tự tạo hình/asset hay gameplay thay thế.',
      '', '## Cách chạy lại',
      '`python phan_tich_buoc3.py global-metadata.dat .eufxww.dex libeufxww.so thu_muc_bao_cao`',
      'Script chỉ đọc nhị phân và xuất JSON/CSV; không thực thi game và không thay đổi file gốc.'])
    (out/'DOC_KET_QUA.md').write_text('\n'.join(lines)+'\n',encoding='utf-8')
    print(json.dumps({'output':str(out),'dex':dx,'native':el,'first_readable_string_offset':md['ALARM_TEXT_022_at_offset_hex']},ensure_ascii=False,indent=2))
if __name__=='__main__':
    if len(sys.argv)!=5:raise SystemExit('Usage: python phan_tich_buoc3.py global-metadata.dat .eufxww.dex libeufxww.so output_dir')
    main(*sys.argv[1:])
