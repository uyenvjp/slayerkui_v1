#!/usr/bin/env python3
"""Slayer Legend 700.0.4 - read-only XAPK/metadata diagnostic.
Python stdlib only. Does not decrypt LIAPP protection or reconstruct IL2CPP code.
Usage: python kiem_tra_slayer.py "game.xapk" "global-metadata.dat" "libil2cpp.so"
"""
import hashlib, io, json, math, re, shutil, sys, tempfile, zipfile
from pathlib import Path
from collections import Counter

KEY = bytes(range(0x43,0x4B))
MAGIC = bytes.fromhex("AF1BB1FA")
TOKENS = [b"LIKEY",b"LIAPP",b"com/liapp",b"com.lockincomp",
          b"libliapp.so",b"global-metadata.dat"]
TARGETS = [b"Xls_Skill",b"Xls_AdventureInfo",b"Xls_WeaponSkin",
           b"GameManager",b"BossNumber",b"BossScale",b"AuraAtkSpeed"]

def sha256(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1024*1024),b""):
            h.update(chunk)
    return h.hexdigest()

def entropy(data):
    if not data:return 0.
    counts = Counter(data)
    return -sum((v/len(data))*math.log2(v/len(data)) for v in counts.values())

def xor8(data):
    out = bytearray(len(data))
    for residue in range(8):
        k = KEY[residue]
        out[residue::8] = bytes(x^k for x in data[residue::8])
    return bytes(out)

def metadata_report(path):
    data = Path(path).read_bytes()
    dec = xor8(data)
    points = []
    step = 0x1000
    for pos in range(0,min(0x290000,len(data)),step):
        raw=data[pos:pos+step]; out=dec[pos:pos+step]
        human=sum((v==0 or 32 <= v < 127) for v in out)/len(out)
        points.append({"offset_hex":f"{pos:08X}",
                       "raw_entropy":round(entropy(raw),4),
                       "xor_ascii_or_zero_ratio":round(human,4)})
    evidence = {}
    for v in TARGETS:
        starts=[m.start() for m in re.finditer(re.escape(v),dec)]
        evidence[v.decode()]={"count":len(starts),
                              "first_offsets_hex":[hex(x) for x in starts[:12]]}
    return {
        "file":Path(path).name,
        "bytes":len(data),
        "sha256":hashlib.sha256(data).hexdigest(),
        "prefix_32_hex":data[:32].hex(" "),
        "liapp_magic":data[:5] == b"LIKEY",
        "plain_il2cpp_magic_first_offset":data.find(MAGIC),
        "xor_il2cpp_magic_first_offset":dec.find(MAGIC),
        "xor_all_file_sha256":hashlib.sha256(dec).hexdigest(),
        "string_evidence":evidence,
        "windows_4KiB_first_2_56MiB":points,
        "warning":"XOR output is partial; not a validated IL2CPP metadata file."
    }

def xapk_report(path):
    result={"xapk":Path(path).name,"sha256":sha256(path),"apks":[]}
    with zipfile.ZipFile(path) as outer:
        for apk_info in outer.infolist():
            if not apk_info.filename.lower().endswith(".apk"):
                continue
            with tempfile.TemporaryFile() as temp:
                with outer.open(apk_info) as source:
                    shutil.copyfileobj(source,temp,1024*1024)
                temp.seek(0)
                with zipfile.ZipFile(temp) as apk:
                    names=apk.namelist()
                    indicators=[n for n in names if
                           re.search("liapp|lockincomp|likey|eufxww|metadata",n,re.I)]
                    marker_results={}
                    for n in ['assets/LIAPP.ini','assets/.eufxww.dex','classes.dex']:
                        if n not in names: continue
                        payload=apk.read(n)
                        marker_results[n]={
                            "size":len(payload),
                            "sha256":hashlib.sha256(payload).hexdigest(),
                            "marker_offsets": {
                                tag.decode():payload.find(tag)
                                for tag in TOKENS if payload.find(tag)>=0
                            }}
                        if n.endswith('LIAPP.ini'):
                            marker_results[n]['content']=payload.decode('utf-8','replace')
                    result['apks'].append({
                        "name":apk_info.filename,"size":apk_info.file_size,
                        "entry_count":len(names),
                        "indicator_paths":indicators,
                        "marker_evidence":marker_results,
                        "native_libraries":[n for n in names if n.endswith('.so')]
                    })
    return result

def main():
    if len(sys.argv)<4:
        raise SystemExit(__doc__)
    game,metadata,lib=sys.argv[1:4]
    out=Path('Slayer_Legend_Diagnostic_Stage2.json')
    report={
        "xapk":xapk_report(game),
        "metadata":metadata_report(metadata),
        "il2cpp":{"file":Path(lib).name,"bytes":Path(lib).stat().st_size,
                 "sha256":sha256(lib),"is_elf_arm64":
                 (lambda h: len(h)>=20 and h[:4]==b"\x7fELF" and h[4]==2 and h[5]==1 and h[18:20]==b"\xb7\x00")(Path(lib).open("rb").read(20))}
    }
    out.write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    print("Report:",out)
    base=next((a for a in report['xapk']['apks']
               if a['name'].startswith('com.gear2')),None)
    if base:
        print("LIAPP.ini:", 'assets/LIAPP.ini' in base['marker_evidence'])
    print("Metadata LIKEY:",report['metadata']['liapp_magic'])
    print("Plain IL2CPP magic offset:",report['metadata']['plain_il2cpp_magic_first_offset'])
    print("XOR IL2CPP magic offset:",report['metadata']['xor_il2cpp_magic_first_offset'])
    print("No dump.cs is generated; protected metadata not recovered.")

if __name__=='__main__':
    main()
