#!/usr/bin/env python3
"""Compare stage-drop orchestration with bounded ARM64 instruction flow.

No loading/running libil2cpp, Unity or game services. Decrypted wrapper values,
RNG outputs, manager existence, theme/dictionary lookups and effect sinks are
explicit fixtures. Does not claim complete acquisition/server parity.
"""
from pathlib import Path
import argparse,copy,json,math,random,struct,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,Wrapped,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/enemy-normal',root/'research/drop-helpers',root/'research/probability',root/'research/game-stage',root/'research/reward-db'])
ranges=[(0x50f9804,0x50fa418),(0x50fab10,0x50fac40),(0x4d18120,0x4d18198),(0x4e513b4,0x4e51610),(0x4e51718,0x4e517d8),(0x4d46f04,0x4d4707c),(0x4d4d544,0x4d4d664),(0x4d4da60,0x4d4dba4)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}

class RewardVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False})
  self.f=f;self.trace=[];self.draw=0;self.game=self.alloc(4096);self.enemy=self.alloc(4096)
  self.stage=self.alloc(1024);self.data=self.alloc(4096);self.pool=self.alloc(256);self.soul=self.alloc(128)
  self.instances.update({'GameManager':self.game,'DataManager':self.data,'ObjectPooler_Effect':self.pool,'GoodsDisplayManager':self.alloc(256)})
  self.write(self.enemy+312,8,self.db);self.write(self.game+32,8,self.db);self.write(self.game+520,8,self.stage);self.write(self.data+664,8,self.alloc(32))
  self.write(self.db+48,8,self.alloc(64));self.write(self.read(self.db+48,8)+39,1,f['soulEnabled'])
  for key,offset in [('Index',32),('MainNumber',36)]:self.write(self.stage+offset,4,f['stage'][key])
  for key,offset,size in [('Cube',264,48),('EquipmentIndex',456,48),('Dice',504,48),('Exp',552,64),('EquipmentProb',384,72),('StoneProb',312,72)]:self.wrap(self.stage+offset,size,f['stage'][key], 'SilentFloat' if key in ['EquipmentProb','StoneProb'] else 'SilentLong' if key=='Exp' else 'LiappSecureInt')
  self.wrap(self.game+1240,40,int(f['stageGold']),'SilentBigInt')
  for key,offset in [('AD_CubeDropBuff_LimitTime',3520),('AD_EquipmentDropBuff_LimitTime',3568)]:self.wrap(self.db+offset,48,f['db'][key],'LiappSecureInt')
  self.write(self.soul+20,4,f['soul']['SoulType']);self.wrap(self.soul+24,72,f['soul']['SoulProb'],'SilentFloat');self.write(self.soul+96,8,int(f['soul']['SoulAmount']))
  for key,offset in [('UserGold',352),('preGold',400),('minusGold',416),('TotalGoldGet',368)]:
   self.pair('x8','x9',int(f['goldState'][key]));self.write(self.db+offset,8,self.reg('x8'));self.write(self.db+offset+8,8,self.reg('x9'))
  # Generic singleton chain from the method reference at 0xa414f68. These
  # structures represent only the explicitly stubbed ThemeDungeon manager.
  generic=self.alloc(400);ctx=self.alloc(256);arg=self.alloc(256);klass=self.alloc(256);static=self.alloc(64);theme=self.alloc(128);info=self.alloc(64)
  ref=self.alloc(8);self.write(0xa414f68,8,ref);self.write(ref,8,generic);self.write(generic+32,8,ctx);self.write(ctx+309,2,1);self.write(ctx+192,8,arg);self.write(arg+16,8,klass);self.write(klass+309,2,1);self.write(klass+184,8,static);self.write(static,8,theme);self.write(theme+72,8,info);self.write(info+40,4,f['theme']['DungeonType'])
  # Extended static block for event multipliers at offsets 336/340.
  klass=self.alloc(256);static=self.alloc(4096);self.classes['DatabaseManager']=klass
  self.write(klass+228,4,1);self.write(klass+184,8,static);self.write(static,8,self.db)
  self.write(static+336,4,f['eventBuffUpgradeCube']);self.write(static+340,4,f['eventBuffSoul'])
  self.write(p.elf.u64(0xa3e74e0)+72,8,self.alloc(256)) # modeled Int32 box metadata for warning formatting
  indices=f.get('monsterIndices',[6,6,0]);arr=self.alloc(32+len(indices)*4);self.write(arr+24,8,len(indices))
  for j,value in enumerate(indices):self.write(arr+32+j*4,4,value)
  self.write(self.stage+64,8,arr)
 def wrap(self,ptr,n,value,kind):
  for j in range(0,n,8):self.write(ptr+j,8,0)
  self.write(ptr,8,Wrapped(float(value) if kind=='SilentFloat' else int(value),kind))
 def random(self,kind,lo,hi):
  unit=self.f['draws'][self.draw%len(self.f['draws'])];self.draw+=1
  if kind=='RandomFloat':
   # RNG algorithm is not inferred: this deterministic fixture supplies an
   # already-returned float in the original call's declared range.
   value=struct.unpack('<f',struct.pack('<f',lo+(hi-lo)*unit))[0]
  else:value=min(hi-1,lo+math.floor((hi-lo)*unit))
  self.trace.append({'kind':kind,'min':lo,'max':hi,'value':value});return value
 def hook(self,t):
  if t==0x99fb5c0:self.setfp('s0',self.random('RandomFloat',self.fp('s0'),self.fp('s1')))
  elif t==0x99fb600:self.put('w0',self.random('RandomInt',signed(self.reg('w0'),32),signed(self.reg('w1'),32)))
  elif t==0x53c6fd4:self.put('w0',int(self.f['themeUsable']))
  elif t==0x46e2dcc:
   w=self.read(self.reg('x0'),8);assert w.type=='LiappSecureInt';self.put('w0',w.value)
  elif t==0x4d5c4fc:
   code=signed(self.reg('w1'),32);value=self.f['eventBuffActive'][str(code)];self.trace.append({'kind':'EventBuff_Active','code':code,'result':value});self.put('w0',value)
  elif t==0x8058794:self.put('x0',self.soul) # resolved StageSoulInfo dictionary entry fixture
  elif t==0x9a005e0:self.put('x0',self.enemy+176) # modeled source transform, identity only
  elif t==0x4ec6228:self.trace.append({'kind':'CoinEffect','dropType':signed(self.reg('w2'),32),'amount':str(self.big('x3','x4'))})
  elif t==0x4ec6618:self.trace.append({'kind':'DropEffect','dropType':signed(self.reg('w2'),32),'currency':signed(self.reg('w3'),32),'amount':str(signed(self.reg('x4'),64)),'dungeonType':signed(self.reg('w5'),32),'mainIndex':signed(self.reg('w6'),32),'subIndex':signed(self.reg('w7'),32)})
  elif t==0x50d14d8:self.trace.append({'kind':'HackerCount','code':signed(self.reg('w0'),32)})
  elif t==0x8cc8c84:self.put('x0',self.alloc(24)) # string formatting is not gameplay arithmetic
  elif t==0x4d4d0fc:self.trace.append({'kind':'Post_WarningLog','code':signed(self.reg('w1'),32),'value':self.fp('s0'),'stageMainNumber':self.f['stage']['MainNumber']})
  elif t==0x4d4ca0c:self.wrap(self.reg('x8'),64,int(self.f['goldAmountAdd']),'SilentLong')
  elif t==0x4d4d664:self.wrap(self.reg('x8'),72,float(self.f['expAdd']),'SilentFloat')
  elif t in [0x917a718,0x917cb08]:
   x,y=self.big('x0','x1'),self.big('x2','x3');self.pair('x0','x1',x+y if t==0x917a718 else x-y)
  elif t==0x4d4707c:self.trace.append({'kind':'GoldSafeCheck'})
  elif t==0x4ea4318:self.trace.append({'kind':'GoodsDisplayManager.GoldUpdate'})
  else:super().hook(t)

base={'stage':{'Index':0,'MainNumber':0,'Cube':15,'EquipmentIndex':0,'Dice':1,'Exp':15,'EquipmentProb':.1,'StoneProb':.5},'stageGold':'14','db':{'AD_CubeDropBuff_LimitTime':0,'AD_EquipmentDropBuff_LimitTime':0},'themeUsable':False,'theme':{'DungeonType':0},'soulEnabled':False,'soul':{'SoulType':13,'SoulProb':.01,'SoulAmount':'1'},'eventBuffActive':{'3':False,'5':False},'eventBuffUpgradeCube':100,'eventBuffSoul':100,'draws':[.55,.1,.99,.004,.1,.003,.2,.3,.4,.5,.6],'goldState':{'UserGold':'20','preGold':'20','minusGold':'3','TotalGoldGet':'21'},'goldAmountAdd':'100','expAdd':'100'}
fixtures=[];rng=random.Random(705_7)
for case in range(150):
 f=copy.deepcopy(base);f['stage']['Index']=case if case<100 else rng.choice([-1,-2147483648,2147483647]);f['stage']['MainNumber']=case//10
 for key in ['Cube','EquipmentIndex','Dice']:f['stage'][key]=rng.choice([0,1,19,20,23,-1,2147483647,-2147483648])
 f['stage']['Exp']=rng.choice([0,15,10**17,-15]);f['stage']['EquipmentProb']=rng.choice([0,.1,5,9.999,10,100]);f['stage']['StoneProb']=rng.choice([0,.5,100])
 f['themeUsable']=case%3==0;f['theme']['DungeonType']=case%4
 f['db']['AD_CubeDropBuff_LimitTime']=case%3-1;f['db']['AD_EquipmentDropBuff_LimitTime']=case%4-1
 f['soulEnabled']=case%5!=0;f['soul']={'SoulType':rng.choice([0,13,14,15,16]),'SoulProb':rng.choice([0,.5,4.999,5,100]),'SoulAmount':str(rng.choice([0,1,100,10**17,9223372036854775807,-100]))}
 f['eventBuffActive']={'3':case%2==0,'5':case%3==0};f['eventBuffUpgradeCube']=rng.choice([0,100,150,2147483647,-2147483648]);f['eventBuffSoul']=rng.choice([0,100,150,2147483647,-2147483648]);f['stageGold']=str(rng.choice([14,10**35,-14]));f['goldAmountAdd']=str(rng.choice([0,100,115,-10]));f['draws']=[rng.choice([0,.0001,.001,.004,.005,.01,.05,.0999,.1,.3333,.6,.75,.99999,1]) for _ in range(35)]
 f['expAdd']=str(rng.choice([0,100,100.123456,-1,1e40]));f['goldState']={k:str(rng.choice([0,1,10**35,-10**35])) for k in f['goldState']};fixtures.append(f)
# Add deterministic boundary branches rather than depending on random fixtures.
for index in range(8):
 f=copy.deepcopy(base);f['soulEnabled']=True;f['soul']['SoulProb']=100;f['draws']=[0]*10+[index/8];fixtures.append(f)
vectors=[];steps=0;visited=set()
for case,f in enumerate(fixtures):
 vm=RewardVM(P,f);steps+=vm.run(0x50f9804,this_ptr=vm.enemy);visited.update(vm.visited)
 vectors.append({'case':case,'method':'stageItemDrop','fixture':f,'trace':vm.trace})
 for method,va,arg,ptr in [('stageGoldAmount',0x4e513b4,None,vm.game),('goldAmountNobuff',0x4e514d8,'123456789012345678901234567890',vm.game),('goldCal',0x4d4d544,'-123456789012345678901234567890',vm.db),('expCal',0x4d4da60,'123456789012345678901234567890',vm.db),('goldGet',0x4d46f04,'45',vm.db)]:
  v=RewardVM(P,f)
  if arg is not None:v.pair('x1','x2',int(arg))
  ptr=v.game if method in ['stageGoldAmount','goldAmountNobuff'] else v.db;steps+=v.run(va,this_ptr=ptr);visited.update(v.visited)
  if method=='goldGet':
   result={}
   for key,offset in [('UserGold',352),('preGold',400),('minusGold',416),('TotalGoldGet',368)]:result[key]=str(v.read(v.db+offset,8).value)
   result['effects']=[x['kind'] for x in v.trace]
  else:result=str(v.big('x0','x1'))
  vectors.append({'case':case,'method':method,'fixture':f,'arg':arg,'result':result,'trace':v.trace})
for currency in [0,13,14,15,16,100]:
 for alternate in [0,1]:
  vm=RewardVM(P,base);vm.put('w1',currency);vm.put('w2',alternate);steps+=vm.run(0x50fab10,this_ptr=vm.enemy);visited.update(vm.visited)
  vectors.append({'method':'soulDivision','currency':currency,'alternate':alternate,'result':signed(vm.reg('w0'),32)})
for indices in [[6,6,0],[1,6,0],[1,2,3],[0,0,0],[0,2,0]]:
 for first in [0,.4,.8]:
  for second in [0,.6]:
   f=copy.deepcopy(base);f['monsterIndices']=indices;f['draws']=[first,second];vm=RewardVM(P,f);steps+=vm.run(0x4e51718,this_ptr=vm.game);visited.update(vm.visited)
   vectors.append({'method':'stageMonsterIndex','fixture':f,'result':signed(vm.reg('w0'),32),'trace':vm.trace})
for percent in [0,.5,10,100,'nan','inf','-inf']:
 for draw in [0,.5,10,99.999,100]:
  f=copy.deepcopy(base);f['draws']=[draw/100];vm=RewardVM(P,f);vm.setfp('s0',float(percent));steps+=vm.run(0x4d18120,this_ptr=vm.enemy);visited.update(vm.visited)
  vectors.append({'method':'probability','percent':percent,'draw':vm.trace[0]['value'],'result':bool(vm.reg('w0'))})
report={'cases':len(vectors),'stageDropSnapshots':len(fixtures),'instructionSteps':steps,'distinctInstructions':len(visited),'scope':'Nine entry bodies: StageItemDrop, StageGoldAmount, GoldAmount_Nobuff, Gold_Cal, Exp_Cal, Gold_Get, SoulDivision, StageMonsterIndex, Probability; explicit decrypted values/RNG/manager/dictionary/effect fixtures. No native execution or server/gameplay parity.'}
(root/'reward-native-flow-vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');(root/'reward-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
