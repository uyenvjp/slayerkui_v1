"""Static instruction models for equipment methods; never execute game code."""
from pathlib import Path
import struct,sys,math
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,Wrapped,Part,signed,f32
def number(x):return float(x) if isinstance(x,str) and x in ['nan','inf','-inf'] else x
def bits(value,kind='d'):return struct.pack('<f' if kind=='s' else '<d',value).hex()
def float_json(value):
 if isinstance(value,float) and not math.isfinite(value):return 'nan' if math.isnan(value) else 'inf' if value>0 else '-inf'
 if isinstance(value,dict):return {k:float_json(v) for k,v in value.items()}
 if isinstance(value,list):return [float_json(v) for v in value]
 return value
class EquipmentVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,fixture):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False})
  self.f=fixture;self.this=self.alloc(1000);self.write(self.this+32,8,self.db);self.effects=[];self.writes=[];self.current_kind=None
  self.data=self.alloc(512);self.instances['DataManager']=self.data
  self.item_list=self.alloc(32);self.level_list=self.alloc(32);self.awake_list=self.alloc(32)
  self.write(self.data+48,8,self.item_list);self.write(self.data+96,8,self.level_list);self.write(self.data+136,8,self.awake_list)
  self.items={};self.levels={};self.awakenings={};self.dictionaries={}
  self.wrap(self.db+2176,48,fixture['awakeningWeapon'],'LiappSecureInt')
  for key,record in fixture['equipment'].items():
   ptr=self.alloc(256);self.items[int(key)]=ptr;self.write(ptr+20,4,int(key));self.wrap(ptr+32,48,record['Level'],'LiappSecureInt');self.write(ptr+160,8,int(record['Value']));self.write(ptr+168,4,record['Price']);self.write(ptr+152,1,record['Lock'])
   self.fpwrite(ptr+172,record['HavePower_CriticalValue']);self.fpwrite(ptr+176,record['HavePower_GoldAmountValue'])
  for key,row in fixture['levels'].items():
   ptr=self.alloc(64);self.levels[int(key)]=ptr;self.write(ptr+24,8,int(row['Value']));self.write(ptr+32,8,int(row['Price']))
  for key,row in fixture['awakening'].items():
   ptr=self.alloc(64);self.awakenings[int(key)]=ptr;self.write(ptr+24,8,int(row['Value']));self.fpwrite(ptr+40,row['HavePower_CriticalValue']);self.fpwrite(ptr+44,row['HavePower_GoldAmountValue'])
  for kind,offset,total_offset,ty in [('atk',376,2432,'SilentDouble'),('critical',384,2496,'SilentFloat'),('gold',392,2568,'SilentFloat')]:
   values=fixture['owned'][kind];ptr=self.alloc(32);self.write(self.this+offset,8,ptr);self.dictionaries[ptr]=(kind,{int(k):float(number(v)) if kind=='atk' else f32(number(v)) for k,v in values['values'].items()})
   self.wrap(self.db+total_offset,64 if kind=='atk' else 72,number(values['total']),ty)
 def wrap(self,ptr,n,value,kind):
  for j in range(0,n,8):self.write(ptr+j,8,0)
  self.write(ptr,8,Wrapped(float(number(value)) if kind in ['SilentFloat','SilentDouble'] else int(value),kind))
 def fpwrite(self,ptr,value,kind='s'):
  value=f32(number(value)) if kind=='s' else float(number(value));raw=struct.pack('<f' if kind=='s' else '<d',value);self.write(ptr,len(raw),int.from_bytes(raw,'little'))
 def hook(self,t):
  if t==0x8058794:
   index=signed(self.reg('w1'),32);target=self.reg('x0');table=self.items if target==self.item_list else self.awakenings if target==self.awake_list else None
   assert table is not None,('Unknown lookup',hex(target));self.put('x0',table[index])
  elif t==0x6c089c0:self.put('x0',self.levels[signed(self.reg('w1'),32)])
  elif t==0x46e2dcc:
   w=self.read(self.reg('x0'),8);assert w.type=='LiappSecureInt';self.put('w0',w.value)
  elif t==0x4b51104:
   w=self.read(self.reg('x0'),8);assert w.type=='SilentDouble';self.setfp('d0',w.value)
  elif t in [0x4b514bc,0x4b51bb8]:
   ptr=self.reg('x0');kind='d' if t==0x4b514bc else 's';value=self.fp(kind+'0');self.wrap(ptr,64 if kind=='d' else 72,value,'SilentDouble' if kind=='d' else 'SilentFloat')
   self.writes.append({'kind':'total','valueBits':bits(value,kind)})
  elif t in [0x8042458,0x805ee78]:
   kind,values=self.dictionaries[self.reg('x0')];value=values[signed(self.reg('w1'),32)];self.setfp('d0' if kind=='atk' else 's0',value)
  elif t in [0x80424e4,0x805ef00]:
   kind,values=self.dictionaries[self.reg('x0')];index=signed(self.reg('w1'),32);value=self.fp('d0' if kind=='atk' else 's0');values[index]=value;self.writes.append({'kind':'entry','index':index,'valueBits':bits(value,'d' if kind=='atk' else 's')})
  else:super().hook(t)
 def owned_result(self,kind):
  offset={'atk':2432,'critical':2496,'gold':2568}[kind];values=next(v for k,v in self.dictionaries.values() if k==kind);ty='d' if kind=='atk' else 's'
  return {'totalBits':bits(self.read(self.db+offset,8).value,ty),'valuesBits':{str(k):bits(v,ty) for k,v in values.items()},'writes':self.writes}
