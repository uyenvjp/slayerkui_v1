from pathlib import Path
import struct,ctypes as C,json,re,sys
import os
PATH=Path(os.environ.get('SLAYER_LOGIC_DIR',str(Path(__file__).parent)))/'libil2cpp.so';DATA=PATH.read_bytes()
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
elf=ELF(DATA)
L=C.CDLL('libLLVM.so.20.1')
for name in ['LLVMInitializeAArch64TargetInfo','LLVMInitializeAArch64Target','LLVMInitializeAArch64TargetMC','LLVMInitializeAArch64Disassembler']:getattr(L,name)()
L.LLVMCreateDisasmCPUFeatures.restype=C.c_void_p;L.LLVMCreateDisasmCPUFeatures.argtypes=[C.c_char_p,C.c_char_p,C.c_char_p,C.c_void_p,C.c_int,C.c_void_p,C.c_void_p]
ctx=L.LLVMCreateDisasmCPUFeatures(b'aarch64-linux-android',b'generic',b'',None,0,None,None);assert ctx
L.LLVMDisasmInstruction.restype=C.c_size_t;L.LLVMDisasmInstruction.argtypes=[C.c_void_p,C.c_void_p,C.c_ulonglong,C.c_ulonglong,C.c_void_p,C.c_size_t]

def asm(va,n=0x100):
 b=elf.bytes(va,n);buf=C.create_string_buffer(b);out=C.create_string_buffer(1024);rows=[]
 for o in range(0,len(b),4):
  k=L.LLVMDisasmInstruction(ctx,C.byref(buf,o),len(b)-o,va+o,out,1024)
  ins=out.value.decode() if k else '.word 0x'+b[o:o+4].hex()
  pc=va+o;mt=re.search(r'\t(b(?:\.[a-z]+)?|bl|cbz|cbnz|tbz|tbnz|adrp|adr)\t.*#(-?[0-9]+)$',ins)
  if mt:
   target=((pc&~4095) if mt.group(1)=='adrp' else pc)+int(mt.group(2));ins+=' ; -> '+hex(target)
  rows.append(f'{pc:09x} {ins}')
 return '\n'.join(rows)

def signed(v,n):return v-(1<<n) if v&(1<<(n-1)) else v

def xrefs(target,sects=('.text',)):
 rows=[]
 for name in sects:
  s=elf.sec[name];b=DATA[s['off']:s['off']+s['size']]
  for o in range(0,len(b)-4,4):
   w=struct.unpack_from('<I',b,o)[0]
   if w&0x9f000000!=0x90000000:continue
   va=s['addr']+o;reg=w&31;page=(va&~4095)+(signed((((w>>5)&0x7ffff)<<2)|((w>>29)&3),21)<<12)
   if not page<=target<page+4096:continue
   for k in range(4,min(28,len(b)-o),4):
    nxt=struct.unpack_from('<I',b,o+k)[0]
    if nxt&0x7f000000==0x11000000 and (nxt>>5)&31==reg:
     imm=((nxt>>10)&4095)<<(12 if nxt&(1<<22) else 0)
     if page+imm==target:rows.append((va,va+k))
 return rows
if __name__=='__main__':
 if len(sys.argv)>1 and sys.argv[1]=='asm':print(asm(int(sys.argv[2],0),int(sys.argv[3],0) if len(sys.argv)>3 else 0x100))
 else:
  target=0x1f2d62e;refs=xrefs(target);print('METADATA_FILENAME_XREFS',refs)
  for va,_ in refs:print(asm(va-0x60,0x180))
