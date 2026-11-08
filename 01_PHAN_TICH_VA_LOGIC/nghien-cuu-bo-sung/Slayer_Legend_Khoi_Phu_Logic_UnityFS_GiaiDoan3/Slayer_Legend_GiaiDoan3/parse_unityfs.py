#!/usr/bin/env python3
"""Read-only parser of UnityFS block map / node names; optionally extracts node bytes.
Requires lz4 to handle Unity's LZ4 compressed blocks.
No code execution from input. No pixel art created.
"""
import io, struct, pathlib, zlib
try:
 import lz4.block
except ImportError:
 lz4=None

def read_cstr(b):
 out=bytearray()
 while True:
  c=b.read(1)
  if not c:raise EOFError('unterminated string')
  if c==b'\0':return out.decode('utf-8','replace')
  out+=c

def be(b,fmt):return struct.unpack('>'+fmt,b.read(struct.calcsize(fmt)))[0]

def decomp(blob,size,ctype):
 if ctype==0:return blob
 if ctype in (2,3):return lz4.block.decompress(blob,uncompressed_size=size)
 if ctype==1:
  import lzma
  return lzma.decompress(blob[:5]+struct.pack("<Q",size)+blob[5:],format=lzma.FORMAT_ALONE)
 raise ValueError('compression '+str(ctype))

def parse_unityfs(data,extract=False):
 b=io.BytesIO(data)
 sig=read_cstr(b)
 if sig!='UnityFS':raise ValueError(sig)
 vers=be(b,'I');uv=read_cstr(b);rev=read_cstr(b)
 size=be(b,'Q');isc=be(b,'I');isu=be(b,'I');flags=be(b,'I')
 head_end=b.tell()
 # Unity 2020+ align container data start to 16 bytes
 if vers>=7:b.seek((b.tell()+15)&~15)
 blocks_info_offset=len(data)-isc if flags&0x80 else b.tell()
 b.seek(blocks_info_offset)
 info=decomp(b.read(isc),isu,flags&0x3f)
 bi=io.BytesIO(info)
 md5=bi.read(16)
 nblocks=be(bi,'I')
 blocks=[]
 for _ in range(nblocks):
  u=be(bi,'I');c=be(bi,'I');fl=be(bi,'H'); blocks.append({'raw_size':u,'stored_size':c,'flags':fl})
 nfiles=be(bi,'I')
 nodes=[]
 for _ in range(nfiles):
  off=be(bi,'Q');size1=be(bi,'Q');fl=be(bi,'I');name=read_cstr(bi)
  nodes.append({'offset':off,'size':size1,'flags':fl,'name':name})
 info_end=b.tell()
 if flags&0x80:
  block_start=(head_end+15)&~15 if vers>=7 else head_end
 else:
  block_start=info_end
  if vers>=7:block_start=(block_start+15)&~15
 details={'bundle_version':vers,'unity_version':uv,'unity_revision':rev,'total_size':size,'block_flags':flags,'compressed_info':isc,'raw_info':isu,'blocks':blocks,'nodes':nodes,'block_data_start':block_start,'header_end':head_end}
 if extract:
  b.seek(block_start); out=bytearray()
  for block in blocks:
   compressed=b.read(block['stored_size'])
   part=decomp(compressed,block['raw_size'],block['flags']&0x3f)
   if len(part)!=block['raw_size']:raise ValueError('block-size mismatch')
   out.extend(part)
  files={x['name']:bytes(out[x['offset']:x['offset']+x['size']]) for x in nodes}
  return details, files
 return details

if __name__=='__main__':
 import zipfile,sys,json
 x=sys.argv[1]
 with zipfile.ZipFile(x) as z:
  data=z.read('contents.apk')
 with zipfile.ZipFile(io.BytesIO(data)) as a:
  b=a.read('assets/assetpack/contents')
 d,f=parse_unityfs(b,True)
 print(json.dumps(d,indent=2)[:5000])
 for name,buf in f.items(): print(name,len(buf),buf[:40].hex(' '))
