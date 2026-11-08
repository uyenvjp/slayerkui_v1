import struct

def read_manifest(b):
 off=8;ss=[];out={}
 while off+8<=len(b):
  t,h,n=struct.unpack_from('<HHI',b,off)
  if not n:raise ValueError('Zero XML chunk')
  if t==1:
   cnt,_,flags,start,_=struct.unpack_from('<5I',b,off+8);utf8=flags&256
   for i in range(cnt):
    p=off+start+struct.unpack_from('<I',b,off+h+i*4)[0]
    if utf8:
     for j in range(2):
      q=b[p];p+=1
      if q&128:p+=1
     e=b.index(0,p);s=b[p:e].decode('utf8',errors='replace')
    else:
     l=struct.unpack_from('<H',b,p)[0];p+=2
     if l&32768:l=((l&32767)<<16)|struct.unpack_from('<H',b,p)[0];p+=2
     s=b[p:p+l*2].decode('utf-16-le',errors='replace')
    ss.append(s)
  if t==0x102:
   ns,name,ast,asz,ac=struct.unpack_from('<IIHHH',b,off+16)
   if ss[name] in ['manifest','uses-sdk']:
    attrs={}
    for j in range(ac):
     p=off+16+ast+j*asz;ns,k,raw,sz,res,ty,v=struct.unpack_from('<IIIHBBI',b,p);attrs[ss[k]]=ss[raw] if raw!=0xffffffff else ss[v] if ty==3 else v
    out[ss[name]]=attrs
  off+=n
 return out
if __name__=='__main__':
 import zipfile,io,json
 with zipfile.ZipFile('slayer-input/slayer-source.xapk') as x:
  with zipfile.ZipFile(io.BytesIO(x.read('com.gear2.growslayer.apk'))) as z:print(json.dumps(read_manifest(z.read('AndroidManifest.xml')),ensure_ascii=False,indent=2))
