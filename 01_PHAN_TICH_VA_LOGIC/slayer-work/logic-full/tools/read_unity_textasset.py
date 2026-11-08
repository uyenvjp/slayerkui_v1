"""Minimal stdlib reader for the exact stripped Unity SerializedFile containers in this XAPK."""
import struct
class Reader:
 def __init__(self,b,endian='<'):self.b=b;self.p=0;self.endian=endian
 def read(self,n):
  if n<0 or self.p+n>len(self.b):raise ValueError('Invalid SerializedFile range')
  v=self.b[self.p:self.p+n];self.p+=n;return v
 def value(self,fmt):return struct.unpack(self.endian+fmt,self.read(struct.calcsize(fmt)))[0]
 def align(self):self.p=(self.p+3)&~3
 def cstring(self):
  e=self.b.index(0,self.p);s=self.b[self.p:e].decode('utf8');self.p=e+1;return s

def read_textasset(b,object_id):
 r=Reader(b,'>');r.value('I');r.value('I');version=r.value('I');data=r.value('I');endian=r.value('B');r.read(3)
 if version>=22:r.value('I');file_size=r.value('Q');data=r.value('Q');r.value('Q');assert file_size==len(b)
 else:raise ValueError('Unsupported SerializedFile version')
 r.endian='>' if endian else '<';r.cstring();r.value('i');has_tree=r.value('B');classes=[]
 if has_tree:raise ValueError('This version-specific reader expects stripped type trees')
 for _ in range(r.value('i')):
  cid=r.value('i');r.value('B');r.value('h')
  if cid==114:r.read(16)
  r.read(16);classes.append(cid)
 target=None
 for _ in range(r.value('i')):
  r.align();oid=r.value('q');offset=r.value('q')+data;size=r.value('I');type_index=r.value('i')
  if oid==object_id and classes[type_index]==49:target=(offset,size)
 if target is None:raise ValueError('TextAsset object not found')
 offset,size=target;r.p=offset;name=r.read(r.value('i')).decode('utf8');r.align();raw=r.read(r.value('i'));assert r.p<=offset+size
 return name,raw
