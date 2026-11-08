#!/usr/bin/env python3
"""Static instruction flow: equipment arithmetic, upgrade gate, release batch."""
from pathlib import Path
import argparse,copy,json,random,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,Wrapped,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/equipment',root/'research/equipment-upgrade',root/'research/equipment-batch'])
ranges=[(0x4e9af74,0x4e9b1e0),(0x4e98704,0x4e98838),(0x4e9d270,0x4e9d64c),(0x4e996b4,0x4e99798)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
class UpgradeVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False})
  self.f=f;self.events=[];self.this=self.alloc(512);self.equipment=self.alloc(256);self.info=self.alloc(64)
  data=self.alloc(256);self.instances['DataManager']=data;self.write(data+96,8,self.alloc(32));self.instances['AlarmManager']=self.alloc(64)
  self.write(self.info+24,8,int(f['levelTableValue']));self.write(self.info+32,8,int(f['levelTablePrice']))
  s=f['snapshot'];self.write(self.this+288,8,self.equipment);self.wrap(self.equipment+32,48,s['level'],'LiappSecureInt');self.write(self.equipment+152,1,s['locked']);self.write(self.equipment+20,4,s['equipmentIndex']);self.wrap(self.this+304,48,int(s['currentPrice']),'LiappSecureLong')
  self.write(self.this+400,4,s['hCount']);self.write(self.this+416,4,s['upgradeCount']);self.write(self.this+405,1,s['isHolding']);self.wrap(self.db+2176,48,f['input']['awakeningWeapon'],'LiappSecureInt')
  self.write(p.elf.u64(0xa3e74e0)+72,8,self.alloc(256))
  sound=self.alloc(64);sc=self.alloc(1500);self.sound=sound;self.write(sound,8,sc);self.write(sc+1320,8,0xffff8001);self.write(sc+1328,8,0)
 def wrap(self,ptr,n,value,kind):
  for j in range(0,n,8):self.write(ptr+j,8,0)
  self.write(ptr,8,Wrapped(int(value),kind))
 def hook(self,t):
  if t==0x6c089c0:self.put('x0',self.info)
  elif t in [0x46e2dcc,0x46e204c]:
   value=self.read(self.reg('x0'),8);assert isinstance(value,Wrapped);self.put('w0' if t==0x46e2dcc else 'x0',value.value)
  elif t==0x4d40850:self.wrap(self.reg('x8'),48,int(self.f['input']['upgradeCube']),'LiappSecureLong')
  elif t==0x4e9d64c:self.events.append({'name':'ApplyEquipment'})
  elif t==0x4925984:self.put('x0',self.alloc(24))
  elif t==0x4cf1b20:self.events.append({'name':'AlarmText.MissingCube'})
  elif t==0x8cdaab4:self.put('x0',self.alloc(24))
  elif t==0x4590be8:self.put('x0',self.alloc(64)) # diagnostic Int32 / secure-struct boxing only
  elif t==0x4d59a14:self.events.append({'name':'DataCheck_H','currency':signed(self.reg('w2'),32),'price':str(signed(self.reg('x3'),64))})
  elif t==0x50c2808:self.events.append({'name':'APIManager.ItemUpgrade','index':signed(self.reg('w0'),32),'equipmentType':signed(self.reg('w1'),32),'count':signed(self.reg('w2'),32)})
  elif t==0x4d18dac:self.put('x0',self.sound)
  elif t==0xffff8001:self.events.append({'name':'Sound.Virtual1320'})
  else:super().hook(t)
 def snapshot(self):return {**self.f['snapshot'],'hCount':signed(self.read(self.this+400,4),32),'upgradeCount':signed(self.read(self.this+416,4),32),'isHolding':bool(self.read(self.this+405,1))}
base={'snapshot':{'level':0,'locked':False,'equipmentIndex':0,'currentPrice':'1','hCount':0,'upgradeCount':0,'isHolding':True},'input':{'awakeningWeapon':0,'upgradeCube':'100'},'baseValue':7,'levelTableValue':'100000','basePrice':1,'levelTablePrice':'1837'}
fixtures=[];rng=random.Random(705_74)
for case in range(96):
 f=copy.deepcopy(base);s=f['snapshot'];s.update(level=rng.choice([0,149,150,199,200,250,1700]),locked=case%5==0,equipmentIndex=case%25,currentPrice=str(rng.choice([-1,0,1,999,1000,10**15])),hCount=rng.choice([0,4,5,6,2147483647]),upgradeCount=rng.choice([-1,0,1,7,2147483647]),isHolding=case%3!=0)
 f['input']={'awakeningWeapon':rng.choice([0,1,30]),'upgradeCube':str(rng.choice([-1,0,1,999,1000,10**18]))};f['baseValue']=rng.choice([-2147483648,-1,0,7,2147483647]);f['basePrice']=rng.choice([-2147483648,-1,0,1,2147483647]);f['levelTableValue']=str(rng.choice([-9223372036854775808,0,100000,8296082,9223372036854775807]));f['levelTablePrice']=str(rng.choice([-9223372036854775808,0,1837,19456445524,9223372036854775807]));fixtures.append(f)
# Real source table covers every recovered level, not a fitted curve.
source=Path(a.source);table=json.loads((source/'table-json/EquipmentInfoBaseData.json').read_text())
for row in table:
 f=copy.deepcopy(base);f['snapshot']['level']=row['Level'];f['levelTableValue']=str(row['Value']);f['levelTablePrice']=str(row['Price']);fixtures.append(f)
vectors=[];steps=0;visited=set();allinstructions=dict(P.instructions)
for case,f in enumerate(fixtures):
 methods=[('equipmentValue',0x4e9af74),('upgradePrice',0x4e9b0a8)]
 if case<96:methods += [('maxLevelAwakening',0x4e987d4),('weaponMaxLevel',0x4e98704),('tryEquipmentUpgrade',0x4e9d270),('upgradePointerUp',0x4e996b4)]
 for method,entry in methods:
  v=UpgradeVM(P,f)
  if method=='equipmentValue':v.put('x1',int(f['baseValue']));v.put('w2',f['snapshot']['level'])
  elif method=='upgradePrice':v.put('w1',f['basePrice']);v.put('w2',f['snapshot']['level'])
  elif method=='maxLevelAwakening':v.put('w1',f['input']['awakeningWeapon'])
  if method=='tryEquipmentUpgrade':
   P.instructions={pc:op for pc,op in allinstructions.items() if not 0x4e996b4<=pc<0x4e99798}
   original_hook=v.hook
   def hook(t):
    if t==0x4e996b4:v.events.append({'name':'PointerUp'})
    else:original_hook(t)
   v.hook=hook
  else:P.instructions=allinstructions
  steps+=v.run(entry,this_ptr=v.this);visited.update(v.visited)
  if method in ['equipmentValue','upgradePrice']:result=str(signed(v.reg('x0'),64))
  elif method in ['maxLevelAwakening','weaponMaxLevel']:result=signed(v.reg('w0'),32)
  else:result={'snapshot':v.snapshot(),'effects':v.events}
  vectors.append({'case':case,'method':method,'fixture':f,'result':result})
report={'cases':len(vectors),'tableLevels':len(table),'instructionSteps':steps,'distinctInstructions':len(visited),'scope':'Six bounded equipment method bodies. Original level-table rows; decoded wrappers, List lookup, cube getter, ApplyEquipment/PointerUp (within gate), diagnostics and audio/API sinks explicitly modeled. No complete upgrade/account/server parity.'}
(root/'upgrade-native-flow-vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');(root/'upgrade-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
