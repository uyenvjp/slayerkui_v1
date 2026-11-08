"""Experimental read-only Unity serialized value reader for selected MonoBehaviours.
Reads objects through Unity TypeTree; rejects records if bytes consumed != declared size.
Only supports simple primitive, string, vector, and nested composite structures.
"""
import io,struct,json,sys,zipfile
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head

COMMON={263:'MonoBehaviour',55:'Base',564:'PPtr<GameObject>',374:'m_GameObject',222:'int',814:'SInt64',928:'bool',349:'m_Enabled',616:'PPtr<MonoScript>',490:'m_Script',840:'string',427:'m_Name',49:'Array',795:'size',81:'char',106:'data',981:'vector',161:'float'}

def serialized_type_table(b):
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
 f.seek(48);uv=cstr();platform=i32();tt=f.read(1)[0];nt=u32();types=[]
 for j in range(nt):
  cid=i32();st=f.read(1)[0];si=struct.unpack('<h',f.read(2))[0]
  if cid==114 or si>=0:f.read(16)
  hashval=f.read(16).hex();n=u32();size=u32()
  nodesraw=f.read(n*32);strings=f.read(size)
  def getstr(o):
   if o&0x80000000:return COMMON.get(o&0x7fffffff,'COMMON:'+str(o&0x7fffffff))
   if o>=len(strings):return 'BAD:'+str(o)
   z=strings.find(b'\0',o);return strings[o:z].decode('utf8','replace')
  nodes=[]
  for k in range(n):
   vers,level,flags,ts,ns,bs,index,meta,ref=struct.unpack_from('<HBBIIiiIQ',nodesraw,k*32)
   nodes.append(dict(level=level,typ=getstr(ts),name=getstr(ns),size=bs,index=index,meta=meta,flags=flags,children=[]))
  top=[];stack=[]
  for node in nodes:
   while stack and stack[-1]['level']>=node['level']:stack.pop()
   if stack:stack[-1]['children'].append(node)
   else:top.append(node)
   stack.append(node)
  d=u32();f.seek(4*d,1)
  types.append((cid,top[0],hashval))
 nobj=u32();objects=[]
 for k in range(nobj):
  while f.tell()%4:f.read(1)
  path=i64();off=i64();size=u32();tid=i32()
  objects.append((path,off,size,tid))
 dataoff=struct.unpack_from('>Q',b,32)[0]
 return types,objects,dataoff

def read_one(stream, node):
 typ=node['typ'];sz=node['size'];children=node['children']; start=stream.tell()
 if typ=='string':
  n=struct.unpack('<i',stream.read(4))[0]
  if not 0<=n<=100000:raise ValueError('string length '+str(n))
  value=stream.read(n).decode('utf8','replace')
  stream.seek((stream.tell()+3)&~3)
 elif typ=='vector':
  arr=children[0]
  if arr['typ']!='Array':raise ValueError('vector does not have Array')
  n=struct.unpack('<i',stream.read(4))[0]
  if not 0<=n<=100000:raise ValueError('array length '+str(n)+' '+node['name'])
  if n*max(1,arr['children'][1]['size'])>1000000:raise ValueError('array too large')
  value=[read_one(stream,arr['children'][1]) for _ in range(n)]
 elif children:
  value={}
  for child in children:
   if child['name']=='Array':
    raise ValueError('unexpected array child')
   value[child['name']]=read_one(stream,child)
 elif sz in (1,2,4,8):
  raw=stream.read(sz)
  if len(raw)!=sz:raise EOFError('read '+typ)
  if typ=='float' and sz==4: value=struct.unpack('<f',raw)[0]
  elif typ=='bool': value=bool(int.from_bytes(raw,'little'))
  elif typ.startswith('COMMON:'):
   value=int.from_bytes(raw,'little',signed=(sz==4))
  elif typ=='char':value=raw[0]
  elif sz==8: value=int.from_bytes(raw,'little',signed=True)
  elif sz==4:value=int.from_bytes(raw,'little',signed=True)
  else:value=int.from_bytes(raw,'little',signed=False)
 elif sz>0:
  value={'raw':stream.read(sz).hex()}
 else:raise ValueError('unsupported '+typ+' '+node['name'])
 if node['meta'] & 0x4000:
  stream.seek((stream.tell()+3)&~3)
 return value

def run(pack,type_idx,limit=10):
 xapk='/mnt/data/Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk'
 with zipfile.ZipFile(xapk) as x:
  with zipfile.ZipFile(io.BytesIO(x.read(pack+'.apk'))) as a:
   u=a.read('assets/assetpack/'+pack)
 d=parse_unityfs(u)
 b=serialized_bundle_head(u,d)
 types,objs,base=serialized_type_table(b)
 matches=[o for o in objs if o[3]==type_idx]
 print('pack',pack,'type',type_idx,'typehash',types[type_idx][2],'objects',len(matches))
 for path,off,size,tid in matches[:limit]:
  payload=b[base+off:base+off+size]
  bio=io.BytesIO(payload)
  try:
   out=read_one(bio,types[tid][1]); consumed=bio.tell()
   print('pathId',path,'consumed',consumed,'expected',size, 'fields', json.dumps(out,ensure_ascii=False,default=str)[:2200])
  except Exception as ex: print('ERROR',path,size,bio.tell(),str(ex))
if __name__=='__main__':run(sys.argv[1],int(sys.argv[2]),int(sys.argv[3]) if len(sys.argv)>3 else 10)
