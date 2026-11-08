"""Extract all 423 original table TextAssets and decode AES-CBC/PKCS7/raw-DEFLATE."""
from pathlib import Path
import sys,zipfile,io,json,hashlib,struct,base64,zlib,argparse
from cryptography.hazmat.primitives.ciphers import Cipher,algorithms,modes
from cryptography.hazmat.primitives import padding
from elf_reader import ELF
from read_unity_textasset import read_textasset

def decode_tables(xapk,outdir,inventory):
 R=Path(outdir);b=(R/'global-metadata.decoded.dat').read_bytes();E=ELF((R/'libil2cpp.so').read_bytes());ofs,size,count=struct.unpack_from('<III',b,8);dofs,dsize,dcount=struct.unpack_from('<III',b,20)
 assert size==count*4 and count==dcount+1
 def literal(got):
  v=E.u64(E.u64(got));assert v>>29==5;i=(v>>1)&0xfffffff;assert i<dcount;p,q=struct.unpack_from('<II',b,ofs+i*4);assert 0<=p<=q<=dsize;return b[dofs+p:dofs+q]
 key_string=b''.join(literal(0xa442000+p) for p in [2096,2080,2104,2072,2112,2088]);iv_string=b''.join(literal(0xa442000+p) for p in [2128,2136,2120]);key=base64.b64decode(key_string,validate=True);iv=base64.b64decode(iv_string,validate=True);assert len(key)==32 and len(iv)==16
 out=R/'game-tables';out.mkdir(exist_ok=True);rows=[]
 with zipfile.ZipFile(xapk) as x:
  with zipfile.ZipFile(io.BytesIO(x.read('com.gear2.growslayer.apk'))) as apk:
   for item in json.loads(Path(inventory).read_text()):
    name,ciphertext=read_textasset(apk.read(item['file']),int(item['object_id']));assert name==item['name'];assert hashlib.sha256(ciphertext).hexdigest()==item['sha256']
    decryptor=Cipher(algorithms.AES(key),modes.CBC(iv)).decryptor();plain=decryptor.update(ciphertext)+decryptor.finalize();unpad=padding.PKCS7(128).unpadder();plain=unpad.update(plain)+unpad.finalize();decompressor=zlib.decompressobj(-15);data=decompressor.decompress(plain)+decompressor.flush();assert decompressor.eof and not decompressor.unused_data and not decompressor.unconsumed_tail
    file=name+'.bin';(out/file).write_bytes(data);rows.append({'name':name,'encrypted_bytes':len(ciphertext),'decoded_bytes':len(data),'sha256':hashlib.sha256(data).hexdigest(),'export':file})
 assert len(rows)==423
 report={'format':'AES-256-CBC / PKCS7 / raw DEFLATE; 421 MemoryPack tables and 2 UTF-8 JSON tables','key_source_native_get_key':'0x53f2220','iv_source_native_get_iv':'0x53f23f8','key_source_metadata_sha256':hashlib.sha256(b).hexdigest(),'success':rows,'failed':[]}
 (R/'table-decode-verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2));return report
if __name__=='__main__':
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('xapk');p.add_argument('--out',required=True);p.add_argument('--inventory',default=str(Path(__file__).parent/'game-data-inventory.json'));a=p.parse_args();r=decode_tables(a.xapk,a.out,a.inventory);print('Decoded',len(r['success']),'tables;',sum(x['decoded_bytes'] for x in r['success']),'bytes')
