from pathlib import Path
import ctypes,ctypes.util,io,json,lzma,struct,zipfile
L=ctypes.CDLL(ctypes.util.find_library('lz4'));L.LZ4_decompress_safe.argtypes=[ctypes.c_char_p,ctypes.c_void_p,ctypes.c_int,ctypes.c_int];L.LZ4_decompress_safe.restype=ctypes.c_int
class Reader:
 def __init__(self,b,endian='>'):self.b=b;self.p=0;self.endian=endian
 def read(self,n):b=self.b[self.p:self.p+n];assert len(b)==n;self.p+=n;return b
 def num(self,fmt):return struct.unpack(self.endian+fmt,self.read(struct.calcsize(fmt)))[0]
 def str(self):e=self.b.index(0,self.p);v=self.b[self.p:e].decode();self.p=e+1;return v
 def align(self,n):self.p=(self.p+n-1)//n*n

def decompress(b,size,flags):
 codec=flags&63
 if codec==0:assert len(b)==size;return b
 if codec in [2,3]:
  out=ctypes.create_string_buffer(size);got=L.LZ4_decompress_safe(b,out,len(b),size);assert got==size,(got,size);return out.raw
 if codec==1:return lzma.decompress(b)
 raise ValueError(codec)
def unpack(b):
 r=Reader(b);assert r.str()=='UnityFS';version=r.num('I');unityVersion=r.str();revision=r.str();size=r.num('Q');compressed=r.num('I');uncompressed=r.num('I');flags=r.num('I')
 assert len(b)==size,(len(b),size)
 if version>=7:r.align(16)
 if flags&128:info=b[len(b)-compressed:]
 else:info=r.read(compressed)
 info=Reader(decompress(info,uncompressed,flags));h=info.read(16);blocks=[(info.num('I'),info.num('I'),info.num('H')) for _ in range(info.num('I'))]
 files=[{'offset':info.num('Q'),'size':info.num('Q'),'flags':info.num('I'),'path':info.str()} for _ in range(info.num('I'))]
 if flags&512:r.align(16)
 data=b''.join(decompress(r.read(c),u,f) for u,c,f in blocks)
 return {'format':version,'unity':unityVersion,'revision':revision,'blocks':blocks,'files':files},data
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('xapk');p.add_argument('pack');p.add_argument('out');a=p.parse_args();out=Path(a.out);out.mkdir(parents=True,exist_ok=True)
 with zipfile.ZipFile(a.xapk) as z:
  with zipfile.ZipFile(io.BytesIO(z.read(a.pack+'.apk'))) as apk:b=apk.read('assets/assetpack/'+a.pack)
 report,data=unpack(b)
 for f in report['files']:(out/f['path']).write_bytes(data[f['offset']:f['offset']+f['size']])
 (out/'bundle-info.json').write_text(json.dumps(report,indent=2));print(json.dumps(report))
