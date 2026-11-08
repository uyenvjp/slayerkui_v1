import struct,io

def parse(buf):
 f=io.BytesIO(buf)
 def u32():return struct.unpack('<I',f.read(4))[0]
 def i32():return struct.unpack('<i',f.read(4))[0]
 def i64():return struct.unpack('<q',f.read(8))[0]
 def cstr():
  b=bytearray()
  while (x:=f.read(1)) != b'\0':
   if not x:raise EOFError
   b.extend(x)
  return b.decode('utf8','replace')
 def pos():return hex(f.tell())
 f.seek(8);version=struct.unpack('>I',f.read(4))[0]
 f.seek(20);meta=struct.unpack('>I',f.read(4))[0];full=struct.unpack('>Q',f.read(8))[0];offset=struct.unpack('>Q',f.read(8))[0];zero=struct.unpack('>Q',f.read(8))[0]
 print('version',version,'meta',meta,'full',full,'dataoff',offset,'unknown',zero)
 print('unity',cstr(),'platform',i32(),'enabletypetree',f.read(1))
 typecount=u32();print('typecount',typecount)
 for i in range(typecount):
  print('type at',pos())
  cid=i32();stripped=f.read(1)[0];scriptindex=struct.unpack('<h',f.read(2))[0]
  if cid==114 or scriptindex>=0: f.read(16)
  hashval=f.read(16).hex()
  n=u32();s=u32()
  print('type',i,'classid',cid,'stripped',stripped,'scriptindex',scriptindex,'hash',hashval,'nodecount',n,'strbuf',s)
  if n >100000 or s>10000000:raise ValueError('bad sizes')
  nodes=f.read(n*32);strings=f.read(s)
  if len(nodes)!=n*32 or len(strings)!=s:raise ValueError('out of bounds')
  words=[w.decode('utf8','replace') for w in strings.split(b'\0') if len(w)>1]
  print('words',words[:55])
  # dependency count for >=21? unsigned int dependencies for >=21
  ndep=u32();print('dep count',ndep,'at',pos());f.seek(ndep*4,1)
 print('after types',pos(),'next',buf[f.tell():f.tell()+80].hex(' '))
 count=u32();print('objects',count, 'at',pos())
 return typecount,count
