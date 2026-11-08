#!/usr/bin/env python3
"""Reproducible READ-ONLY static diagnostic for Slayer Legend 700.0.4.
Uses only Python standard library. NOT a LIAPP decryptor or IL2CPP decompiler.
Usage: python phan_tich_giai_doan3.py global-metadata.dat libeufxww.so [output_dir]
"""
from __future__ import annotations
from pathlib import Path
import csv, hashlib, json, re, struct, sys

KEY=bytes(range(0x43,0x4b))
MAGIC=bytes.fromhex('AF1BB1FA')
ELF_MAGIC=b'\x7fELF'

def sha256(p:Path)->str:
    h=hashlib.sha256()
    with p.open('rb') as f:
        for block in iter(lambda:f.read(1024*1024),b''):
            h.update(block)
    return h.hexdigest()

def xor8(buf:bytes)->bytes:
    output=bytearray(len(buf))
    for mod,k in enumerate(KEY):
        output[mod::8]=bytes(c^k for c in buf[mod::8])
    return bytes(output)

def elf_soname(path:Path):
    """Resolve DT_SONAME via ELF64 PT_DYNAMIC and PT_LOAD without section headers."""
    data=path.read_bytes()
    if data[:6]!=b'\x7fELF\x02\x01':
        raise ValueError('ELF64 little endian required')
    e_machine=struct.unpack_from('<H',data,18)[0]
    phoff=struct.unpack_from('<Q',data,32)[0]
    phentsize=struct.unpack_from('<H',data,54)[0]
    phnum=struct.unpack_from('<H',data,56)[0]
    loads=[]; dynamic=None
    for i in range(phnum):
        pos=phoff+i*phentsize
        p_type,p_flags,p_offset,p_vaddr,p_paddr,p_filesz,p_memsz,p_align=struct.unpack_from('<IIQQQQQQ',data,pos)
        if p_type==1:loads.append((p_vaddr,p_offset,p_filesz))
        if p_type==2:dynamic=(p_offset,p_filesz)
    if dynamic is None: raise ValueError('No PT_DYNAMIC')
    fields={}; needed=[]
    for pos in range(dynamic[0],dynamic[0]+dynamic[1],16):
        tag,val=struct.unpack_from('<qQ',data,pos)
        if tag==0: break
        fields[tag]=val
        if tag==1:needed.append(val)
    def virtual_to_file(v):
        for base,offset,size in loads:
            if base<=v<base+size:return offset+(v-base)
        raise ValueError('DT_STRTAB address does not map into file')
    strtab=virtual_to_file(fields[5]); maxlen=fields.get(10,100000)
    def getstr(offset):
        if offset>=maxlen:return ''
        p=strtab+offset
        return data[p:data.find(b'\0',p,p+maxlen-offset)].decode('utf-8','replace')
    return {'filename':path.name,'bytes':len(data),'sha256':sha256(path),
            'elf_machine':e_machine, 'pt_dynamic_offset_hex':hex(dynamic[0]),
            'dt_soname':getstr(fields[14]) if 14 in fields else None,
            'dt_needed':[getstr(n) for n in needed]}

def contiguous_printable(buf:bytes, start:int):
    p=start
    while p<len(buf) and (buf[p]==0 or 32<=buf[p]<127):p+=1
    return p

def parse_pool(buf:bytes,start:int,end:int):
    records=[];offset=start
    for item in buf[start:end].split(b'\0'):
        # Last element lacks a terminator in a partial pool; still retain only if safe.
        records.append({'offset':offset,'value':item.decode('ascii','replace')})
        offset+=len(item)+1
    return records

def gather_xls(records):
    """Extract table-like labels and adjacent *candidate* fields, not typed metadata."""
    exact=re.compile(r'Xls_[A-Za-z][A-Za-z_0-9]*$')
    labels=[(i,r) for i,r in enumerate(records)
            if exact.fullmatch(r['value']) and r['offset']<0x400000]
    groups=[]; rows=[]
    for pos,(i,rec) in enumerate(labels):
        next_i=labels[pos+1][0] if pos+1<len(labels) else min(i+1, len(records))
        adjacent=records[i+1:next_i]
        # Method/class pool has other content, only keep candidates immediately following label.
        adjacent=[r for r in adjacent if (r['offset']-rec['offset']<=512) and re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]{0,127}',r['value'])]
        groups.append({'table_label':rec['value'],'table_label_offset_hex':hex(rec['offset']),
                       'candidate_adjacent_fields':len(adjacent),
                       'examples':[r['value'] for r in adjacent[:20]]})
        for r in adjacent:
            rows.append({'table_label':rec['value'], 'table_label_offset_hex':hex(rec['offset']),
                         'adjacent_name':r['value'],'adjacent_name_offset_hex':hex(r['offset']),
                         'interpretation':'adjacent string only; field membership not proven'})
    return groups,rows

def main(meta,so,out):
    meta=Path(meta);so=Path(so);out=Path(out);out.mkdir(parents=True,exist_ok=True)
    raw=meta.read_bytes();xor=xor8(raw)
    # Find longest printable-or-zero run beginning in/near first decoded string window.
    candidates=[]
    for p in range(0x234000,min(0x238000,len(xor)-512)):
        if p>0 and xor[p-1] not in (0,) and not 32<=xor[p-1]<127:
            if all((c==0 or 32<=c<127) for c in xor[p:p+512]):
                end=contiguous_printable(xor,p)
                if end-p>100000:
                    candidates.append((p,end))
                    break
    if not candidates:
        raise ValueError('No large readable string region found; check input file/version')
    start,end=candidates[0]
    records=parse_pool(xor,start,end)
    xls,rows=gather_xls(records)
    meta_result={'filename':meta.name,'bytes':len(raw),'sha256':sha256(meta),
                 'raw_prefix_32_hex':raw[:32].hex(' '),'liapp_prefix':raw.startswith(b'LIKEY'),
                 'xor_key_hex':KEY.hex(),'xor_magic_offset':xor.find(MAGIC),
                 'raw_magic_offset':raw.find(MAGIC),
                 'verified_xor_output_sha256':hashlib.sha256(xor).hexdigest(),
                 'visible_ascii_region':{'start_hex':hex(start),'end_exclusive_hex':hex(end),
                     'length_bytes':end-start,'zero_separators':xor[start:end].count(0),
                     'first_visible_bytes':repr(xor[start:start+100])},
                 'number_of_xls_like_labels':len(xls),
                 'warning':'Strings and adjacent names are not a valid TypeDefinition/MethodDefinition dump.'}
    elf=elf_soname(so)
    report={'metadata':meta_result,'liapp_native':elf,
            'sample_xls_names':xls[:12],
            'important_xls_names':[x for x in xls if x['table_label'] in
                ['Xls_Skill','Xls_SkillLevel','Xls_Stage','Xls_Reward','Xls_Aura','Xls_AdventureInfo','Xls_WeaponSkin','Xls_Equipment']]}
    (out/'bang_chung_giai_doan3.json').write_text(json.dumps(report,indent=2,ensure_ascii=False),encoding='utf8')
    with (out/'ten_bang_va_truong_lien_ke.csv').open('w',newline='',encoding='utf-8-sig') as f:
        w=csv.DictWriter(f,fieldnames=['table_label','table_label_offset_hex','adjacent_name','adjacent_name_offset_hex','interpretation']);w.writeheader();w.writerows(rows)
    with (out/'danh_muc_bang_xls.json').open('w',encoding='utf8') as f:
        json.dump(xls,f,indent=2,ensure_ascii=False)
    # Evidence-only technical notes.
    summary=f'''SLAYER LEGEND 700.0.4 - GIAI DOAN 3 (phan tich TINH, tai lap duoc)

Tep goc: {meta.name} ({len(raw):,} byte)
SHA256: {meta_result['sha256']}
Header LIKEY: {meta_result['liapp_prefix']}
Magic AF1BB1FA trong raw: {meta_result['raw_magic_offset']}
Magic AF1BB1FA trong XOR: {meta_result['xor_magic_offset']}
XOR key: {KEY.hex(' ')}

PHAT HIEN MOI 1: THU VIEN LIAPP DOI TEN
- Ten file trong APK: {so.name}
- SONAME ELF: {elf['dt_soname']}
- Machine ELF: {elf['elf_machine']} (183 = AArch64)
- DT_NEEDED: {', '.join(elf['dt_needed'])}
- SONAME lay tu PT_DYNAMIC, khong phu thuoc section headers.
- Chua chung minh ham nao giai ma metadata; day la dau vet ve dinh danh thu vien.

PHAT HIEN MOI 2: VUNG CHUOI CO THE DOC DUOC SAU XOR
- Bat dau: {hex(start)}; ket thuc (exclusive): {hex(end)}
- Do dai: {end-start:,} byte; so byte NUL: {xor[start:end].count(0):,}
- Xls_* labels phat hien: {len(xls)}
- So dong ten ke canh Xls trong CSV: {len(rows)}
- Cac ten truong adjacent chi la SUY LUAN TU VI TRI CHUOI, KHONG PHAI metadata da parse.

TRANG THAI
- Chua co header/tables TypeDefinition, MethodDefinition, FieldDefinition hop le.
- Chua co dump.cs, script.json hoac dia chi ham cua gameplay.
- Chua xac minh cong thuc sat thuong, drop, skill. Khong nen dung chung de code game.

CACH CHAY:
 python phan_tich_giai_doan3.py global-metadata.dat libeufxww.so [thu_muc_ket_qua]
Script khong ghi de file dau vao, khong giai ma LIAPP, khong chay game.
'''
    (out/'BAO_CAO_GIAI_DOAN3.txt').write_text(summary,encoding='utf8')
    print(summary)

if __name__=='__main__':
    if len(sys.argv)<3:raise SystemExit(__doc__)
    main(sys.argv[1],sys.argv[2],sys.argv[3] if len(sys.argv)>3 else '.')
