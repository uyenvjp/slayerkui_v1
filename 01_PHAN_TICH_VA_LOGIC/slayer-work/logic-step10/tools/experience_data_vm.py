"""Decrypted field, protobuf string and BCL dependency models for EXP."""
from pathlib import Path
import math,re,struct,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,Wrapped,signed,f32
FIELDS=[('PlayerOption_ExpAdd',9608,'SilentInt'),('FriendOption_ExpAdd',8888,'SilentFloat'),('Accessory_HavePower_Exp',2824,'SilentFloat'),('SkinOption_ExpAdd',1768,'SilentInt'),('SkillMasteryOption_ExpAdd',17200,'SilentInt'),('FriendPassive_ExpAdd',6872,'SilentFloat'),('ImmortalTreeSubNodeOption_TotalExpAdd',18704,'SilentInt'),('StarNodeOption_TotalExpAdd',21592,'SilentInt'),('ImmortalTreeSubNodeOption_ExpAdd',18320,'SilentInt'),('StarNodeOption_ExpAdd',21208,'SilentInt'),('ThemeDungeonBuff_ExpAdd',22112,'SilentInt')]
def number(v):return float(v) if isinstance(v,str) else v
def float_key(v,kind='s'):
 if math.isnan(v):return 'nan'
 return struct.pack('<f' if kind=='s' else '<d',v).hex()
def parse_decimal_fixture(value):
 if value is None:raise ValueError('Native Parse ArgumentNull fixture')
 if not re.fullmatch(r'[\t\n\r ]*[+-]?[0-9]+[\t\n\r ]*',value):raise ValueError('Native Parse FormatException fixture')
 return int(value)
class ExpDataSupport:
 def init_exp_fields(self,db_values):
  for key,offset,kind in FIELDS:
   value=number(db_values[key]);value=f32(value) if kind=='SilentFloat' else signed(value,32);self.exp_wrap(self.db+offset,72 if kind=='SilentFloat' else 64,value,kind)
  self.exp_wrap(self.db+3264,72,f32(number(db_values['expAdd'])),'SilentFloat');self.setfp('d0',number(db_values['Spirit_ExpAdd']));self.save('d0',self.db+16360)
  values=db_values['SpiritAbility_ExpAdd'];self.spirit_array=0 if values is None else self.alloc(32+len(values)*8);self.write(self.db+16328,8,self.spirit_array)
  if values is not None:
   self.write(self.spirit_array+24,8,len(values))
   for i,v in enumerate(values):self.setfp('d0',number(v));self.save('d0',self.spirit_array+32+i*8)
 def exp_wrap(self,p,n,value,kind):
  for j in range(0,n,8):self.write(p+j,8,0)
  self.write(p,8,Wrapped(value,kind))
 def init_exp_sync(self,f):
  self.strings={};self.sync_object=self.user_exp(f['syncExp']);self.remote_exp=self.user_exp(f['remote']);self.write(self.db+344,8,self.sync_object)
  self.exp_wrap(self.db+264,40,int(f['currentExp']),'SilentBigInt');self.exp_wrap(self.db+304,40,int(f['totalExp']),'SilentBigInt')
 def string(self,text):
  if text is None:return 0
  ptr=self.alloc(24);self.strings[ptr]=text;return ptr
 def user_exp(self,record):
  if record is None:return 0
  ptr=self.alloc(64);self.write(ptr+24,8,self.string(record['value']));self.write(ptr+32,8,self.string(record['totalValue']));return ptr
 def user_exp_state(self,ptr):return None if not ptr else {'value':self.strings.get(self.read(ptr+24,8)),'totalValue':self.strings.get(self.read(ptr+32,8))}
 def sync_state(self):return {'currentExp':str(self.read(self.db+264,8).value),'totalExp':str(self.read(self.db+304,8).value),'syncExp':self.user_exp_state(self.sync_object),'remote':self.user_exp_state(self.remote_exp)}
 def read(self,a,n):
  if n==1 and a in [0xabe62f6,0xabe62f7]:return 1 # explicit initialized setter metadata
  return super().read(a,n)
 def exp_data_hook(self,t):
  if t==0x4b51bb8:
   pointer=self.reg('x0');value=self.fp('s0');self.exp_wrap(pointer,72,value,'SilentFloat')
   if pointer==self.db+3264:self.emit('ExpAdd.Write',float_key(value))
  elif t==0x9d6b900:
   pointer=self.reg('x0');source=self.reg('x1');n=self.reg('w2');values=[self.read(source+j,8) for j in range(0,n,8)]
   for i,value in enumerate(values):self.write(pointer+i*8,8,value)
   if pointer==self.db+3264:self.emit('ExpAdd.Write',float_key(self.read(pointer,8).value))
  elif t==0x4b50f7c:self.put('x0',self.string(str(self.read(self.reg('x0'),8).value)))
  elif t==0x60c3458:
   if not self.reg('x0'):raise ValueError('Native Protobuf ArgumentNull fixture')
  elif t==0x4590a04:
   pointer=self.reg('x0')
   if self.sync_object and pointer in [self.sync_object+24,self.sync_object+32]:self.emit('SyncExp.Value.Write' if pointer==self.sync_object+24 else 'SyncExp.TotalValue.Write',self.strings[self.reg('x1')])
  elif t==0x917a458:
   value=parse_decimal_fixture(self.strings.get(self.reg('x0')));self.pair('x0','x1',value)
  elif t==0x4b50df8:
   pointer=self.reg('x0');value=self.big('x1','x2');self.exp_wrap(pointer,40,value,'SilentBigInt')
   if pointer in [self.db+264,self.db+304]:self.emit('CurrentExp.Write' if pointer==self.db+264 else 'TotalExp.Write',str(value))
  else:return False
  return True
class ExpDataVM(ExpDataSupport,VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False});self.effects=[];self.f=f;self.init_exp_fields(f['db']);self.init_exp_sync(f)
 def emit(self,name,*args):self.effects.append({'name':name,'args':list(args)})
 def hook(self,t):
  if not self.exp_data_hook(t):super().hook(t)
