"""Pure static translation of the supplied libeufxww ARM64 routines, no native execution."""
import struct,zlib
MASK=0xffffffff

def initialize(a,b,c,divisor,seed):
 a=((a^divisor)+3706)&MASK;b=((b^seed)+3694)&MASK;c=(c+3236)&MASK
 for _ in range(19):
  tc=(c+b)&MASK;ta=(b*3706+a)&MASK;tc=(a-tc//divisor)&MASK
  a=(((a-3236)*c+3218)&MASK)//divisor+3694;a&=MASK
  c=(c+a)&MASK;a=tc;b=(b+ta//divisor)&MASK
 def step(a,b,c):
  return (((((b-a)*3706)&MASK)//divisor+a)&MASK,((((a*3694-b-c*a)&MASK)//divisor+b)&MASK),((((a*b+3218-c*3236)&MASK)//divisor+c)&MASK))
 for _ in range(12):a,b,c=step(a,b,c)
 state=(a,b,c);a,b,c=step(a,b,c);key=bytearray()
 for _ in range(64):
  a,b,c=step(a,b,c);key+=struct.pack('<I',a)
 return state,bytes(key)

def keystream(length,state,key,offset=0):
 import numpy as np
 a,b,c=state;i=np.arange(offset,offset+length,dtype=np.uint32)
 v=(i+np.uint32(c))*i+np.uint32(b);t=v^np.uint32(a);q=(t+v)^(t>>22)^(v>>14)
 return (q+np.frombuffer(key,dtype=np.uint8)[i&255]).astype(np.uint8).tobytes()

def lcgrand(key,b):
 key^=0x94202191;out=bytearray()
 for x in b:
  key=(key*0x343fd+0x269ec3)&MASK;out.append(x^((key>>16)&255))
 return bytes(out)

if __name__=='__main__':
 import json
 from pathlib import Path
 R=Path(__file__).parent;p=json.loads((R/'main-apk-entry-info.json').read_text());cfg3216=0xa6038691^0xb3167321
 included=[i for i in p if (i['name'].startswith('assets/') and not i['name'].startswith(('assets/bin/Data/','assets/dexopt/baseline.prof','assets/assetpack/','assets/.eufxww'))) or i['name'].startswith(('assets/bin/Data/Resources','assets/bin/Data/Managed'))]
 for i in included:cfg3216^=i['crc']^i['size']
 cfg3212=zlib.crc32(b'com.gear2.growslayer')^0xd6162568^705;cfg3208=cfg3216^0xd6162568^0x11308681;cfg3220=zlib.crc32(b'com.gear2.growslayer');cfg3228=zlib.crc32(b'700.0.4')
 for target in [35,36,34]:
  state,key=initialize(cfg3220^cfg3212,target^cfg3216,cfg3208^cfg3228,705%13+11,zlib.crc32('جױحڴܰ'.encode()))
  raw=Path('slayer-input/global-metadata.dat').read_bytes();prefix,total=struct.unpack_from('<II',raw,12)
  ks=keystream(prefix,state,key);out=bytearray(raw)
  import numpy as np
  out[:prefix]=(np.frombuffer(raw[:prefix],dtype=np.uint8)^np.frombuffer(ks,dtype=np.uint8)).tobytes()
  for p0 in [0x1c4918,0x1c4918+105,0x1c4918+1435]:print('target',target,hex(p0),repr(bytes(out[p0:p0+80])))
  (R/f'metadata-prefix-target{target}.dat').write_bytes(out)
 print('configs',*[hex(i) for i in [cfg3208,cfg3212,cfg3216,cfg3220,cfg3228]])
