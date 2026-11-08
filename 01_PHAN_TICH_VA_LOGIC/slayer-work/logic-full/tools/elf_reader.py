import struct
class ELF:
 def __init__(self,b):
  self.b=b;so=struct.unpack_from('<Q',b,40)[0];ss,ns,sn=struct.unpack_from('<HHH',b,58);self.sections=[]
  raw=[struct.unpack_from('<IIQQQQIIQQ',b,so+i*ss) for i in range(ns)];st=raw[sn];names=b[st[4]:st[4]+st[5]]
  for x in raw:
   name=names[x[0]:names.index(0,x[0])].decode();self.sections.append(dict(name=name,type=x[1],flags=x[2],addr=x[3],off=x[4],size=x[5],link=x[6],entsize=x[9]))
  self.sec={s['name']:s for s in self.sections};self.symbols=[]
  for s in self.sections:
   if s['type']!=11:continue
   st=self.sections[s['link']];strings=b[st['off']:st['off']+st['size']]
   for off in range(s['off'],s['off']+s['size'],24):
    no,info,other,sh,va,size=struct.unpack_from('<IBBHQQ',b,off);name=strings[no:strings.index(0,no)].decode();self.symbols.append(dict(name=name,addr=va,size=size,section=sh))
  self.relocations={};self.reladd=[]
  for s in self.sections:
   if s['type']!=4:continue
   for off in range(s['off'],s['off']+s['size'],24):
    va,info,add=struct.unpack_from('<QQq',b,off);ty=info&0xffffffff;ix=info>>32
    if ty==1027:self.relocations[va]=add
    elif ix<len(self.symbols):self.relocations[va]=self.symbols[ix]['name']
    self.reladd.append((va,ty,ix,add))
 def off(self,va):
  for s in self.sections:
   if s['type']!=8 and s['addr']<=va<s['addr']+s['size']:return s['off']+va-s['addr']
  raise ValueError(hex(va))
 def bytes(self,va,n):return self.b[self.off(va):self.off(va)+n]
 def u64(self,va):
  if va in self.relocations:return self.relocations[va]
  return struct.unpack('<Q',self.bytes(va,8))[0]
 def cstr(self,va):
  try:o=self.off(va);return self.b[o:self.b.index(0,o)].decode('utf8',errors='replace')
  except:return None
