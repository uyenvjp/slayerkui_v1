#!/usr/bin/env python3
"""GetDmg flow with explicit getters, RNG inputs, Unity/lifecycle effects."""
from pathlib import Path
import argparse,copy,json,random
from native_flow_vm import Program,VM,Wrapped,f32,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'player-damage',root/'player-state',root/'character-state',root/'player-miss'])
allowed=[(0x4ef68c4,0x4ef7874),(0x4ef7d64,0x4ef7f10),(0x4d23080,0x4d230f8),(0x5016584,0x50166fc),(0x4ef1f6c,0x4ef2028),(0x4ee6264,0x4ee62b4)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in allowed)}
base={'player':{'state':0,'isBattle':True,'waterReflectCount':0,'SkillMiss':False,'DmgReduce_Mastery':0,'EtheroDmgReduceBuff':0,
 'Demon_Ti_DmgReduceBuff':0,'RebornDmgIncreaseDebuff':0,'WorldBossEffect_DmgIgnoreChance':0,'WorldBossEffect_DmgReduceFactor':0,
 'WorldBossEffect_LowHpAttackSpeedEnabled':False,'_worldBossLowHpAttackSpeedApplied':False,'WorldBossEffect_DeathSaveAvailable':False,
 'SeasonSkillffect_ReBornAvailable':False,'Hp_cur':'1000','Hp_max':'1000','Shield_Cur':'0'},'gameMode':0,'CameraShake':False,
 'getters':{'Miss':0,'Resistance':0,'DmgReduce':0,'CurrentDmgReduce':0},'worldBossEnemySkill':None,'playerHpUpdatePresent':True,
 'random':{'int':[50,50],'float':[.5,.5]},'args':{'damage':'100','accuracy':100,'trueDamage':False,'onHitCallbackPresent':False}}
class DamageVM(VM):
 def __init__(self,program,context):
  self.context=context;self.core_effects=[];self.draws={'int':0,'float':0}
  values={k:v for k,v in context['player'].items() if k not in ['state','Hp_cur','Hp_max','Shield_Cur']}
  values['HpMaxValue']=context['player']['Hp_max'];values['HpCurValue']=context['player']['Hp_cur']
  fixture={'db':{},'player':values,'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':context['playerHpUpdatePresent']}
  super().__init__(program,fixture);self.write(self.player+36,4,context['player']['state']);self.wrap(self.player+1752,context['player']['Shield_Cur'])
  # Runtime Il2CppDefaults.int32_class, used only by boxing the quest enum.
  self.write(self.p.elf.u64(0xa3e74e0)+72,8,self.alloc(256))
  klass=self.alloc(2000);self.write(self.player,8,klass)
  for offset,fun in [(472,0xffff3001),(536,0xffff3002),(584,0xffff3003),(648,0xffff3004),(680,0xffff3005),(696,0xffff3006)]:self.write(klass+offset,8,fun);self.write(klass+offset+8,8,0)
  self.write(self.player+168,8,self.alloc(64));self.write(self.player+336,8,self.alloc(64))
  game=self.alloc(1600);self.instances['GameManager']=game;self.write(game+1516,1,context['CameraShake'])
  grinding=self.alloc(64);self.instances['SkillGrindingManager']=grinding;self.write(grinding+32,8,self.alloc(64))
  self.instances['QuestManager']=self.alloc(64);self.instances['SkillManager']=self.alloc(64);pool=self.alloc(128);self.instances['ObjectPooler_Effect']=pool;self.write(pool+40,8,self.alloc(64))
  sound=self.alloc(64);sclass=self.alloc(1900);self.write(sound,8,sclass);self.write(sclass+1864,8,0xffff3007);self.write(sclass+1872,8,0);self.sound=sound
  self.wb=self.alloc(128);data=self.alloc(128);self.write(self.wb+48,8,data)
  info=context['worldBossEnemySkill'];ptr=self.alloc(128) if info is not None else 0;self.write(data+104,8,ptr)
  if ptr:self.write(ptr+56,4,int.from_bytes(__import__('struct').pack('<f',f32(info['PlayerDmgIncrease'])),'little'))
  dbklass=self.alloc(256);static=self.alloc(256);self.classes['DatabaseManager']=dbklass;self.write(dbklass+228,4,1);self.write(dbklass+184,8,static);self.write(static,8,self.db);self.write(static+136,8,self.alloc(32))
  self.callback=self.alloc(80) if context['args']['onHitCallbackPresent'] else 0
  if self.callback:self.write(self.callback+24,8,0xffff3008);self.write(self.callback+64,8,0);self.write(self.callback+40,8,0)
 def emit(self,name,*args):self.core_effects.append({'name':name,'args':list(args)})
 def wrap(self,ptr,value):
  for j in range(0,40,8):self.write(ptr+j,8,0)
  self.write(ptr,8,Wrapped(int(value),'SilentBigInt'))
 def hook(self,t):
  c=self.context
  if t==0x4e41f54:self.put('w0',c['gameMode'])
  elif t in [0x99fb600,0x99fb5c0]:
   kind='int' if t==0x99fb600 else 'float';value=c['random'][kind][self.draws[kind]];self.draws[kind]+=1
   if kind=='int':self.put('w0',value)
   else:self.setfp('s0',value)
  elif t in [0xffff3001,0xffff3002,0x4eeee28,0x53136c4]:self.setfp('s0',c['getters'][{0xffff3001:'Miss',0xffff3002:'DmgReduce',0x4eeee28:'Resistance',0x53136c4:'CurrentDmgReduce'}[t]])
  elif t==0xffff3003:self.emit('HitEffect')
  elif t==0xffff3004:self.emit('Hpbar_DmgEffect')
  elif t==0xffff3005:self.emit('FloatDmgText',str(self.big('x1','x2')),signed(self.reg('w3'),32))
  elif t==0xffff3006:self.emit('FloatString.Miss')
  elif t==0xffff3007:self.emit('Sound.BeHit')
  elif t==0xffff3008:self.emit('onHitCallback')
  elif t==0x4ef6584:self.emit('WaterReflect')
  elif t==0x99a12a8:self.emit('Animator.Hit')
  elif t==0x4d18dac:self.put('x0',self.sound)
  elif t==0x4ef7874:self.emit('CheckHitRandomCameraShake')
  elif t==0x4121774:self.put('x0',self.wb)
  elif t in [0x917e9a4,0x917e64c,0x917e934,0x917cb08]:
   left,right=self.big('x0','x1'),self.big('x2','x3')
   if t==0x917cb08:self.pair('x0','x1',left-right)
   else:self.put('w0',int(left>right if t==0x917e9a4 else left<=right))
  elif t==0x917d568:self.setfp('s0',float(self.big('x0','x1')))
  elif t==0x4ef20c4:self.emit('SetHpBar_Effect_FillAmount')
  elif t==0x5094e04:self.emit('SkillShieldOff')
  elif t==0xffff0001:self.emit('playerHpUpdate.Invoke')
  elif t==0x81fe188:self.emit('SkillAtkSpeed.WorldBossLowHp.set',self.fp('s0'))
  elif t==0x4eea90c:self.emit('AttackSpeedSetting')
  elif t==0x4ec9d44:self.emit('SpawnReviveEffect');self.put('x0',self.alloc(64))
  elif t in [0x9a1312c,0x9a13208,0x9a13c6c,0x9a13a4c,0x4f015f4,0x9a03bd4]:pass
  elif t in [0x9a005e0,0x9a006b0]:self.put('x0',self.alloc(64))
  elif t==0x4ef797c:self.emit('FakeDeath',bool(self.reg('w1')))
  elif t==0x4ef7b30:self.emit('Death')
  elif t in [0x52823b0,0x5282554]:self.put('x0',self.alloc(64))
  elif t==0x5289e20:self.emit('SeasonQuest.TryAddCount',signed(self.reg('w1'),32),self.read(self.reg('x2')+16,4),signed(self.reg('w3'),32))
  elif t==0x527bcf4:self.emit('UpdateHighSlayerQuestType',signed(self.reg('w1'),32),signed(self.reg('w2'),32))
  else:super().hook(t)
 def result(self):
  return {'Hp_cur':str(self.read(self.player+80,8).value),'Shield_Cur':str(self.read(self.player+1752,8).value),
   'WorldBossEffect_DeathSaveAvailable':bool(self.read(self.player+1820,1)),'_worldBossLowHpAttackSpeedApplied':bool(self.read(self.player+1836,1))}
fixtures=[copy.deepcopy(base)];rng=random.Random(705107)
for j in range(90):
 c=copy.deepcopy(base);p=c['player'];c['gameMode']=rng.choice([0,8,24]);c['CameraShake']=bool(rng.randrange(2));p['state']=rng.choice([0,0,0,3]);p['isBattle']=rng.choice([True,True,False]);p['waterReflectCount']=rng.choice([0,0,0,1]);p['SkillMiss']=bool(rng.randrange(3)==0)
 for k in ['DmgReduce_Mastery','EtheroDmgReduceBuff','Demon_Ti_DmgReduceBuff','RebornDmgIncreaseDebuff','WorldBossEffect_DmgIgnoreChance']:p[k]=rng.choice([0,0,12.5,33.3333,99.9])
 p['WorldBossEffect_DmgReduceFactor']=rng.choice([0,0,.1,.5,1]);p['Hp_cur']=str(rng.choice([1,100,500,1000]));p['Shield_Cur']=str(rng.choice([0,0,50,100,1000]));
 for k in ['WorldBossEffect_LowHpAttackSpeedEnabled','_worldBossLowHpAttackSpeedApplied','WorldBossEffect_DeathSaveAvailable','SeasonSkillffect_ReBornAvailable']:p[k]=bool(rng.randrange(2))
 c['getters']={key:rng.choice([0,0,12.5,33.3333,100]) for key in c['getters']};c['worldBossEnemySkill']=rng.choice([None,{'PlayerDmgIncrease':33.3333}]);c['random']={'int':[rng.randrange(100) for _ in range(3)],'float':[rng.choice([0,.1,.5,.999]) for _ in range(3)]}
 c['args']={'damage':str(rng.choice([1,100,500,2000,10**25])),'accuracy':rng.choice([0,100,1000]),'trueDamage':bool(rng.randrange(2)),'onHitCallbackPresent':bool(rng.randrange(2))};fixtures.append(c)
# Deterministic shield boundaries, death/revive and true-damage branches.
for hp,shield,damage,mode in [(1000,50,100,0),(1000,100,100,0),(1000,1000,100,0),(50,0,100,0),(50,0,100,24),(180,0,20,24)]:
 for true in [False,True]:
  c=copy.deepcopy(base);c['player'].update(Hp_cur=str(hp),Shield_Cur=str(shield),WorldBossEffect_DeathSaveAvailable=True,WorldBossEffect_LowHpAttackSpeedEnabled=True)
  c['gameMode']=mode;c['args'].update(damage=str(damage),trueDamage=true,onHitCallbackPresent=True);fixtures.append(c)
vectors=[];steps=0;visited=set()
for case,c in enumerate(fixtures):
 for name,entry in [('GetDmg',0x4ef68c4),('PenaltyDmg',0x4ef7d64)]:
  vm=DamageVM(P,c);args=c['args'];vm.pair('x1','x2',int(args['damage']));vm.put('w3',1);vm.put('x4',vm.callback);vm.put('w5',int(args['trueDamage']));vm.setfp('s0',args['accuracy'])
  count=vm.run(entry);steps+=count;visited.update(vm.visited)
  vectors.append({'case':case,'method':name,'fixture':c,'expected':{'state':vm.result(),'effects':vm.core_effects,'draws':vm.draws}})
missing=copy.deepcopy(base);missing['playerHpUpdatePresent']=False;missing['player']['Hp_cur']='50'
vm=DamageVM(P,missing);vm.pair('x1','x2',100);vm.put('w3',1);vm.put('x4',0);vm.put('w5',0);vm.setfp('s0',100)
try:vm.run(0x4ef68c4)
except RuntimeError as exc:assert 'Native NullReference path' in str(exc)
else:raise AssertionError('Missing mandatory playerHpUpdate callback was accepted')
assert vm.read(vm.player+80,8).value==-50
(root/'player-damage-native-flow-vectors.json').write_text(json.dumps(vectors,indent=2,allow_nan=False)+'\n')
report={'cases':len(vectors),'entries':2,'native_null_callback_contract_checks':1,'instruction_steps':steps,'distinct_instructions_visited':len(visited),
 'scope':'GetDmg, PenaltyDmg + player-miss + HP/shield accessor bodies. Decrypted values, arithmetic helpers, account getters, RNG draws, Unity and downstream lifecycle are explicitly modeled; not full gameplay/lifecycle equivalence.'}
(root/'player-damage-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
