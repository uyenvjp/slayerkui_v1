"""Adapted explicit dependency fixtures from step7 RewardVM; no game execution."""
from pathlib import Path
import sys,math,struct
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import VM,Wrapped,signed
class RewardDependencies:
 def setup_rewards(self,p,f):
  self.reward_fixture=f;self.trace=[];self.draw=0;self.game=self.alloc(4096)
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
  unit=self.reward_fixture['draws'][self.draw%len(self.reward_fixture['draws'])];self.draw+=1
  if kind=='RandomFloat':
   # RNG algorithm is not inferred: this deterministic fixture supplies an
   # already-returned float in the original call's declared range.
   value=struct.unpack('<f',struct.pack('<f',lo+(hi-lo)*unit))[0]
  else:value=min(hi-1,lo+math.floor((hi-lo)*unit))
  self.trace.append({'kind':kind,'min':lo,'max':hi,'value':value});return value
 def hook(self,t):
  if t==0x99fb5c0:self.setfp('s0',self.random('RandomFloat',self.fp('s0'),self.fp('s1')))
  elif t==0x99fb600:self.put('w0',self.random('RandomInt',signed(self.reg('w0'),32),signed(self.reg('w1'),32)))
  elif t==0x53c6fd4:self.put('w0',int(self.reward_fixture['themeUsable']))
  elif t==0x46e2dcc:
   w=self.read(self.reg('x0'),8);assert w.type=='LiappSecureInt';self.put('w0',w.value)
  elif t==0x4d5c4fc:
   code=signed(self.reg('w1'),32);value=self.reward_fixture['eventBuffActive'][str(code)];self.trace.append({'kind':'EventBuff_Active','code':code,'result':value});self.put('w0',value)
  elif t==0x8058794:self.put('x0',self.soul) # resolved StageSoulInfo dictionary entry fixture
  elif t==0x9a005e0:self.put('x0',self.enemy+176) # modeled source transform, identity only
  elif t==0x4ec6228:self.trace.append({'kind':'CoinEffect','dropType':signed(self.reg('w2'),32),'amount':str(self.big('x3','x4'))})
  elif t==0x4ec6618:self.trace.append({'kind':'DropEffect','dropType':signed(self.reg('w2'),32),'currency':signed(self.reg('w3'),32),'amount':str(signed(self.reg('x4'),64)),'dungeonType':signed(self.reg('w5'),32),'mainIndex':signed(self.reg('w6'),32),'subIndex':signed(self.reg('w7'),32)})
  elif t==0x50d14d8:self.trace.append({'kind':'HackerCount','code':signed(self.reg('w0'),32)})
  elif t==0x8cc8c84:self.put('x0',self.alloc(24)) # string formatting is not gameplay arithmetic
  elif t==0x4d4d0fc:self.trace.append({'kind':'Post_WarningLog','code':signed(self.reg('w1'),32),'value':self.fp('s0'),'stageMainNumber':self.reward_fixture['stage']['MainNumber']})
  elif t==0x4d4ca0c:self.wrap(self.reg('x8'),64,int(self.reward_fixture['goldAmountAdd']),'SilentLong')
  elif t==0x4d4d664:self.wrap(self.reg('x8'),72,float(self.reward_fixture['expAdd']),'SilentFloat')
  elif t in [0x917a718,0x917cb08]:
   x,y=self.big('x0','x1'),self.big('x2','x3');self.pair('x0','x1',x+y if t==0x917a718 else x-y)
  elif t==0x4d4707c:self.trace.append({'kind':'GoldSafeCheck'})
  elif t==0x4ea4318:self.trace.append({'kind':'GoodsDisplayManager.GoldUpdate'})
  else:VM.hook(self,t)
