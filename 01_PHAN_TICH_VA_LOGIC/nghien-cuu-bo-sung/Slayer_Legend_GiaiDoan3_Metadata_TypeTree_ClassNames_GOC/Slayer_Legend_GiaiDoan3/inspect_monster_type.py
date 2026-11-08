import io,struct,sys,zipfile
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head

def decode_type_tree(b, target=28):
 f=io.BytesIO(b)
 def u32():return struct.unpack('<I',f.read(4))[0]
 def i32():return struct.unpack('<i',f.read(4))[0]
 def i64():return struct.unpack('<q',f.read(8))[0]
 def cstr():
  bb=bytearray()
  while (x:=f.read(1)) != b'\0':
   if not x:raise EOFError
   bb.extend(x)
  return bb.decode('utf8','replace')
 f.seek(48);uv=cstr();platform=i32();tt=f.read(1)[0]
 nt=u32();types=[]
 for j in range(nt):
  cid=i32();st=f.read(1)[0];si=struct.unpack('<h',f.read(2))[0]
  if cid==114 or si>=0:f.read(16)
  hash1=f.read(16).hex();n=u32();size=u32()
  nodesraw=f.read(n*32);strings=f.read(size)
  def getstr(o):
   if o&0x80000000:return 'COMMON:'+str(o&0x7fffffff)
   if o>=len(strings):return 'BAD:'+str(o)
   z=strings.find(b'\0',o);return strings[o:z].decode('utf8','replace')
  nodes=[]
  for k in range(n):
   vers,level,flags,ts,ns,bs,index,meta,ref=struct.unpack_from('<HBBIIiiIQ',nodesraw,k*32)
   nodes.append(dict(level=level,typ=getstr(ts),name=getstr(ns),size=bs,index=index,meta=meta,flags=flags))
  d=u32();f.seek(4*d,1)
  types.append((cid,nodes,hash1))
 nobj=u32();objs=[]
 for k in range(nobj):
  while f.tell()%4:f.read(1)
  path=i64();offset=i64();size=u32();tid=i32()
  if tid==target and len(objs)<5:objs.append((path,offset,size,tid))
 print('type#',target,'class',types[target][0],'hash',types[target][2], 'count',nobj)
 for a in types[target][1]:
  print(' '*a['level']+' '+a['typ']+' '+a['name']+' size='+str(a['size'])+' flags='+str(a['meta']))
 print('sample object locations',objs, 'first64')
 for path,off,size,tid in objs[:2]:print(b[struct.unpack_from('>Q',b,32)[0]+off:struct.unpack_from('>Q',b,32)[0]+off+64].hex(' '))

if __name__=='__main__':
 xapk='/mnt/data/Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk';name=sys.argv[1] if len(sys.argv)>1 else 'monster';target=int(sys.argv[2]) if len(sys.argv)>2 else 28
 with zipfile.ZipFile(xapk) as x:
  with zipfile.ZipFile(io.BytesIO(x.read(name+'.apk'))) as a:
   u=a.read('assets/assetpack/'+name)
 d=parse_unityfs(u)
 b=serialized_bundle_head(u,d)
 decode_type_tree(b,target)
