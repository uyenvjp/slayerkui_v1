import io,struct,collections

def parse(b):
 f=io.BytesIO(b)
 def u32():
  a=f.read(4)
  if len(a)<4:raise RuntimeError(f'truncated at {f.tell()}')
  return struct.unpack('<I',a)[0]
 def i32():return struct.unpack('<i',f.read(4))[0]
 def i64():return struct.unpack('<q',f.read(8))[0]
 def cstr():
  a=[]
  while True:
   d=f.read(1)
   if not d:raise EOFError
   if d==b'\x00':return b''.join(a).decode('utf8','replace')
   a.append(d)
 print('header',b[:48].hex())
 f.seek(48)
 uv=cstr();platform=i32();tree=bool(f.read(1)[0]);n=u32()
 print('uv',uv,'platform',platform,'has tree',tree,'n types',n)
 types=[]
 for i in range(n):
  p=f.tell()
  cid=i32();stripped=f.read(1)[0];sindex=struct.unpack('<h',f.read(2))[0]
  if cid==114 or sindex>=0:f.read(16)
  type_hash=f.read(16).hex()
  if tree:
   nn=u32();sl=u32();f.seek(nn*32+sl,1)
  if tree:
   deps=u32()
   if deps>100000:raise ValueError(f'dependencies at {p}, type {i}, cid {cid}, n {deps}')
   f.seek(4*deps,1)
  types.append((cid,type_hash,sindex,p))
 nobj=u32()
 if nobj>2000000: raise ValueError(f'objectcount improbable {nobj} at {f.tell()-4}')
 objs=[]
 for j in range(nobj):
  while f.tell()%4:f.read(1)
  path=i64();off=i64();size=u32();tid=i32()
  if tid>=len(types) or tid<0:raise ValueError(f'bad type idx {tid} obj {j}')
  objs.append((path,off,size,tid))
 return types,objs,struct.unpack_from('>Q',b,32)[0],f.tell()

if __name__=='__main__':
 import zipfile,sys
 p=sys.argv[1];src=sys.argv[2]
 with zipfile.ZipFile(p) as z:
  with zipfile.ZipFile(io.BytesIO(z.read('com.gear2.growslayer.apk'))) as a:
   pre='assets/bin/Data/'+src
   try:b=a.read(pre)
   except KeyError:
    b=b''.join(a.read(pre+'.split'+str(i)) for i in range(sum(x.startswith(pre+'.split') for x in a.namelist())))
 types,objs,base,pos=parse(b)
 print('num objects',len(objs),'classes',collections.Counter(types[x[3]][0] for x in objs).most_common(20),'base',base,'pos',pos,'inbounds',sum(base+off+size<=len(b) for path,off,size,idx in objs))
 for i,ty in enumerate(types): print(i,ty[:3],collections.Counter(o[3] for o in objs)[i])
