"""Instruction model dependencies for EXP; no loading native game code."""
from pathlib import Path
import struct,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,Wrapped,Part,signed,f32

def number(value):return float(value) if isinstance(value,str) else value

class ExperienceVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def wrap(self,p,n,value,kind):
  for j in range(0,n,8):self.write(p+j,8,0)
  self.write(p,8,Wrapped(value,kind))
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False})
  self.f=f;self.this=self.alloc(1000);self.write(self.this+144,8,self.db);self.effects=[];self.draws=0;self.formatted={};self.logs={}
  self.wrap(self.db+264,40,int(f['currentExp']),'SilentBigInt');self.wrap(self.db+304,40,int(f['totalExp']),'SilentBigInt');self.wrap(self.this+160,40,int(f['maxExp']),'SilentBigInt')
  self.wrap(self.db+168,48,f['level'],'LiappSecureInt');self.wrap(self.db+3472,48,f['adExpBuffLimitTime'],'LiappSecureInt')
  # Initialized explicit static blocks. Event flags are secure bool wrappers;
  # DatabaseManager.instance and EventBuff_Exp have their original offsets.
  for name,size in [('DatabaseManager',4096),('EventManager',256)]:
   klass=self.alloc(256);static=self.alloc(size);self.classes[name]=klass;self.write(klass+228,4,1);self.write(klass+184,8,static)
   if name=='DatabaseManager':self.write(static,8,self.db);self.write(static+332,4,f['eventBuffExp'])
   else:
    for name,offset in [('hot',0),('super',48),('hyper',96)]:self.wrap(static+offset,48,int(f['hotTime'][name]),'LiappSecureBool')
  self.scroll=self.alloc(64);self.write(self.scroll+32,8,self.alloc(64) if f['scroll']['present'] else 0);self.write(self.scroll+40,4,f['scroll']['type'])
  self.instances.update({'ItemDropManager':self.alloc(64),'UsefulManager':self.alloc(64),'GameManager':self.alloc(64)})
  self.data=self.alloc(1024);self.instances['DataManager']=self.data;self.max_values=self.alloc(32);self.exp_table=self.alloc(32);self.write(self.data+32,8,self.max_values);self.write(self.data+352,8,self.exp_table)
 def emit(self,name,*args):self.effects.append({'name':name,'args':list(args)})
 def hook(self,t):
  if t==0x4d4d664:self.wrap(self.reg('x8'),72,f32(number(self.f['expAdd'])),'SilentFloat')
  elif t==0x7388e50:self.put('x0',self.scroll)
  elif t==0x46e30b4:self.put('w0',self.read(self.reg('x0'),8).value)
  elif t==0x46e2dcc:self.put('w0',self.read(self.reg('x0'),8).value)
  elif t==0x46e2d7c:self.wrap(self.reg('x8'),48,signed(self.read(self.reg('x0'),8).value+1,32),'LiappSecureInt')
  elif t==0x4d5c4fc:
   assert self.reg('w1')==2;self.emit('EventBuff_Active',2,self.f['eventBuffActive']);self.put('w0',self.f['eventBuffActive'])
  elif t==0x4d59090:
   assert self.reg('w1')==10;self.emit('SpiritSkillValue',10);self.setfp('s0',number(self.f['spiritExpChance']))
  elif t==0x99fb5c0:
   lo,hi=self.fp('s0'),self.fp('s1');assert (lo,hi)==(0,100);value=f32(number(self.f['draws'][self.draws]));self.draws+=1;self.emit('RandomFloat',lo,hi,value);self.setfp('s0',value)
  elif t in [0x917a718,0x917cb08,0x917e74c]:
   a,b=self.big('x0','x1'),self.big('x2','x3')
   if t==0x917e74c:self.put('w0',int(a>=b))
   else:self.pair('x0','x1',a+b if t==0x917a718 else a-b)
  elif t==0x4b50df8:
   pointer=self.reg('x0');value=self.big('x1','x2');super().hook(t)
   if pointer in [self.db+264,self.db+304]:self.emit('CurrentExp.Write' if pointer==self.db+264 else 'TotalExp.Write',str(value))
  elif t==0x4f16c8c:self.emit('StatManager.Fill_Update')
  elif t==0x4d53ba8:
   value=self.big('x1','x2');ptr=self.alloc(24);self.formatted[ptr]=str(value);self.put('x0',ptr)
  elif t==0x8ccbe48:
   value=self.formatted[self.reg('x1')];ptr=self.alloc(24);self.logs[ptr]=value;self.put('x0',ptr)
  elif t==0x4d22144:assert self.reg('w1')==24;self.put('x0',self.alloc(24))
  elif t==0x521684c:self.emit('ItemDropManager.ItemDropLog',24,self.logs[self.reg('x1')])
  elif t==0x4e41f54:self.put('w0',self.f['gameMode'])
  elif t==0x4590be8:
   ptr=self.alloc(32);self.write(ptr+16,4,self.read(self.reg('x1'),4));self.put('x0',ptr)
  elif t==0x8eafa00:self.put('w0',int(self.read(self.reg('x0')+16,4)==self.read(self.reg('x1')+16,4)))
  elif t==0x4e5a214:self.emit('GameManager.CaveExp_Update',str(self.big('x1','x2')))
  elif t==0x809d7b8:
   assert self.reg('x0')==self.max_values and self.reg('w1')==5;self.emit('UpdateMaxValues.Get',5);self.put('w0',self.f['userMaxLevel'])
  elif t==0x80357fc:
   assert self.reg('x0')==self.exp_table;level=signed(self.reg('w1'),32);self.emit('ExpList.Get',level);self.pair('x0','x1',int(self.f['expTable'][str(level)]))
  else:super().hook(t)
 def state(self):return {'currentExp':str(self.read(self.db+264,8).value),'totalExp':str(self.read(self.db+304,8).value),'level':self.read(self.db+168,8).value,'maxExp':str(self.read(self.this+160,8).value)}
