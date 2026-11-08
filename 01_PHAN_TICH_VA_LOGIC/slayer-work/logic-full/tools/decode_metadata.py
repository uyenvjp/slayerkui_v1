#!/usr/bin/env python3
"""Decode LIKEY metadata in the supplied Slayer Legend 700.0.4 XAPK, statically.
Requires numpy. Does not load or execute APK/shared-library code.
Native constants are specific to libeufxww.so shipped with this exact XAPK.
"""
from pathlib import Path
import argparse,zipfile,io,hashlib,json,struct,zlib
import numpy as np
from likey_cipher import initialize,keystream
from read_apk_manifest import read_manifest
EXPECTED_METADATA='0f0c21c82432adab3421ea6c82e2662b032a8fc2fc17f81defe166b2ce294c46'
def decode_xapk(path,outdir):
 outdir=Path(outdir);outdir.mkdir(parents=True,exist_ok=True)
 with zipfile.ZipFile(path) as x:
  with zipfile.ZipFile(io.BytesIO(x.read('com.gear2.growslayer.apk'))) as apk:
   raw=apk.read('assets/bin/Data/Managed/Metadata/global-metadata.dat');manifest=read_manifest(apk.read('AndroidManifest.xml'));entry_info=apk.infolist();key_blob=apk.read('assets/.eufxww.dex')
 if hashlib.sha256(raw).hexdigest()!=EXPECTED_METADATA:raise ValueError('Different metadata SHA256: refusing version-specific constants')
 version=manifest['manifest']['versionCode'];package=manifest['manifest']['package'];version_name=manifest['manifest']['versionName'];sdk=manifest['uses-sdk']['targetSdkVersion']
 included=[i for i in entry_info if (i.filename.startswith('assets/') and not i.filename.startswith(('assets/bin/Data/','assets/dexopt/baseline.prof','assets/assetpack/','assets/.eufxww'))) or i.filename.startswith(('assets/bin/Data/Resources','assets/bin/Data/Managed'))]
 cfg3216=0xa6038691^0xb3167321
 for i in included:cfg3216^=i.CRC^i.file_size
 cfg3212=zlib.crc32(package.encode())^0xd6162568^version
 cfg3208=cfg3216^0xd6162568^0x11308681
 cfg3220=zlib.crc32(package.encode());cfg3228=zlib.crc32(version_name.encode())
 state,key=initialize(cfg3220^cfg3212,sdk^cfg3216,cfg3208^cfg3228,version%13+11,0x3c8e1ee9)
 assert raw[:6]==b'LIKEY\x7f';key_index,integrity,prefix,total=struct.unpack_from('<HIII',raw,6);assert total==len(raw) and prefix<total
 ks=keystream(prefix,state,key)
 # Native copies 20 encrypted header bytes from per-file 24-byte entries.
 # Locate the exact entry with an independently known Unity sanity/version pair.
 pattern=bytes(a^b for a,b in zip(struct.pack('<II',0xfab11baf,39),ks))
 positions=[i for i in range(len(key_blob)) if key_blob.startswith(pattern,i)]
 if len(positions)!=1:raise ValueError('Original header entry is not unique')
 key_pos=positions[0];source=bytearray(raw);source[:20]=key_blob[key_pos:key_pos+20]
 decoded=bytearray(total);decoded[:prefix]=(np.frombuffer(source[:prefix],dtype=np.uint8)^np.frombuffer(ks,dtype=np.uint8)).tobytes()
 for phase in range(8):
  p=prefix+((phase-prefix)&7);decoded[p::8]=source[p::8].translate(bytes(v^(((cfg3216&127)+64+phase)&255) for v in range(256)))
 assert struct.unpack_from('<II',decoded)==(0xfab11baf,39)
 header_end=struct.unpack_from('<I',decoded,8)[0];assert header_end==380
 tables=[]
 for p in range(8,header_end,12):
  off,size,count=struct.unpack_from('<III',decoded,p)
  assert off<=total and off+size<=total
  tables.append({'index':len(tables),'offset':off,'size':size,'count':count,'stride':size//count if count and size%count==0 else None})
 path=outdir/'global-metadata.decoded.dat';path.write_bytes(decoded)
 report={'input_metadata_sha256':hashlib.sha256(raw).hexdigest(),'decoded_metadata_sha256':hashlib.sha256(decoded).hexdigest(),'decoded_crc32':hex(zlib.crc32(decoded)),'opaque_header_field_8':hex(integrity),'sanity':hex(0xfab11baf),'version':39,'total_bytes':total,'encrypted_prefix_bytes':prefix,'restored_header_key_index':key_index,'restored_header_entry_offset_in_asset':key_pos,'manifest':manifest,'native_state':list(state),'native_configuration':{str(k):hex(v) for k,v in [(3208,cfg3208),(3212,cfg3212),(3216,cfg3216),(3220,cfg3220),(3224,sdk),(3228,cfg3228)]},'folded_zip_entries':[i.filename for i in included],'tables':tables,'no_apk_or_native_execution':True}
 (outdir/'metadata-decode-verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2))
 return report
if __name__=='__main__':
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('xapk');p.add_argument('--out',required=True);a=p.parse_args();r=decode_xapk(a.xapk,a.out);print(json.dumps({k:v for k,v in r.items() if k not in ['folded_zip_entries','tables']},ensure_ascii=False,indent=2));print('TABLES',r['tables'])
