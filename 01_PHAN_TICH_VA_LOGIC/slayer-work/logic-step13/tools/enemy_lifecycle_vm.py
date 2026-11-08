"""Linked native hit -> HP -> instant kill -> death -> normal loot callbacks.

Unpatched warm EnemyNormal profile; delegates, secure/BCL/getter/Unity/queue
dependencies are explicit. GameManager.Enemy_Dead remains a continuation sink.
"""
from pathlib import Path
import math,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step12/tools'))
from enemy_hit_vm import EnemyHitVM,Program,Wrapped,signed,f32
from reward_dependencies import RewardDependencies

REWARD_CALLS={0x99fb5c0,0x99fb600,0x53c6fd4,0x46e2dcc,0x4d5c4fc,0x8058794,0x9a005e0,0x4ec6228,0x4ec6618,0x50d14d8,0x8cc8c84,0x4d4d0fc,0x4d4ca0c,0x4d4d664,0x917a718,0x4d4707c,0x4ea4318}

class EnemyLifecycleVM(EnemyHitVM):
 wrap=RewardDependencies.wrap
 random=RewardDependencies.random
 def __init__(self,p,f):
  super().__init__(p,f);RewardDependencies.setup_rewards(self,p,f['reward']);self.nested_steps=0
  self.write(self.p.elf.u64(0xa3e74e0)+72,8,self.int_class)
  self.write(self.game+1516,1,f['context']['cameraShake']);life=f['life'];klass=self.read(self.enemy,8)
  for off,fn in [(1240,0x50baf38),(1256,0x50bafb0),(1320,0x50bbf20),(1176,0xffff2101)]:self.write(klass+off,8,fn)
  self.wrap(self.enemy+40,40,int(life['hpMax']),'SilentBigInt');self.wrap(self.enemy+80,40,int(life['hpCur']),'SilentBigInt')
  self.write(self.enemy+464,1,life['hitInProgress']);self.write(self.enemy+680,1,life['dmgStack']);self.write(self.enemy+408,4,life['enemyType'])
  self.scaler=self.zero(32) if life['scalerPresent'] else 0;self.sprite_scaler=self.zero(32) if life['spriteScalerPresent'] else 0;self.write(self.enemy+328,8,self.scaler);self.write(self.enemy+336,8,self.sprite_scaler)
  if not life['poolPresent']:self.instances['ObjectPooler_Effect']=0
  self.instances['EffectManager']=self.zero(64);self.instances['CameraController']=self.zero(64)
  vector=self.metadata_class(0xa3e8278);static=self.read(vector+184,8)
  for off in [12,16,20]:self.write(static+off,4,0x3f800000)
  self.write(self.enemy+496,8,self.delegate(0xffff2100) if life['deathCallbackPresent'] else 0)
  dbstatic=self.read(self.classes['DatabaseManager']+184,8);self.write(dbstatic+216,8,self.delegate(0xffff2102) if life['databaseKillCallbackPresent'] else 0)
  self.write(self.player+2040,8,self.delegate(0xffff2103) if life['playerKillCallbackPresent'] else 0);self.write(self.player+2072,8,self.delegate(0xffff2104) if life['combinedKillCallbackPresent'] else 0)
 def delegate(self,fn):
  ptr=self.zero(80);self.write(ptr+24,8,fn);self.write(ptr+64,8,self.enemy);return ptr
 def invoke_native(self,entry):
  regs,vec,sp=self.x.copy(),self.v.copy(),self.sp;flags={k:getattr(self,k) for k in ['eq','lt','gt','unordered','negative','carry','overflow'] if hasattr(self,k)}
  try:self.put('x30',self.RETURN);self.nested_steps+=self.run(entry,this_ptr=self.enemy)
  finally:
   self.x,self.v,self.sp=regs,vec,sp
   for k,v in flags.items():setattr(self,k,v)
 def observe_instruction(self,pc):
  if pc in [0x50bafb0,0x50baf38]:self.received=str(self.big('x1','x2'));self.emit('DmgResult' if pc==0x50bafb0 else 'DotDmgResult',self.received)
  elif pc==0x50bbf20:self.emit('Death.Enter',bool(self.read(self.enemy+514,1)))
  elif pc==0x50f9388:self.emit('EnemyNormal.DeadEvent')
  elif pc==0x50f9804:self.emit('StageItemDrop')
 def hook(self,t):
  c=self.f['context'];life=self.f['life']
  if t in REWARD_CALLS and not (t in [0x99fb5c0,0x46e2dcc] and 0x4d22f6c<=self.reg('x30')<0x4d23080):
   start=len(self.trace);RewardDependencies.hook(self,t)
   for effect in self.trace[start:]:self.emit('Reward',effect)
  elif t==0x4b50df8:
   if self.reg('x0')==self.enemy+80:self.emit('HP.Set',str(self.big('x1','x2')))
   super().hook(t)
  elif t==0x917cb08:self.pair('x0','x1',self.big('x0','x1')-self.big('x2','x3'))
  elif t in [0x917e9a4,0x917e934]:
   a,b=self.big('x0','x1'),self.big('x2','x3');self.put('w0',a>b if t==0x917e9a4 else a<=b)
  elif t==0x917d5d4:
   n=self.big('x0','x1')
   try:value=float(n)
   except OverflowError:value=math.copysign(math.inf,n)
   self.setfp('d0',value)
  elif t==0x4d59090:
   assert self.reg('w1')==7;self.setfp('s0',life['instantKillPercent'])
  elif t==0x4d58f70:assert self.reg('w1')==7;self.put('w0',life['instantKillAvailable'])
  elif t==0x50ba584:self.emit('DmgStackEvent',str(self.big('x1','x2')))
  elif t==0x4d58e44:self.emit('SpiritSkillEffect_EnemyTarget',self.reg('w2'),self.fp('s0'))
  elif t==0xffff2101:self.emit('Hpbar_DmgEffect')
  elif t==0x9a13970:
   self.setfp('s0',life['scaleX'] if self.reg('x0')==self.scaler else life['spriteScaleX']);self.setfp('s1',1);self.setfp('s2',1)
  elif t==0x4ec79fc:self.emit('EnemyDeadEffect',self.fp('s0'),self.fp('s1'))
  elif t==0xffff2100:
   self.emit('EnemyDead_Event.Invoke')
   for entry in [0x50f9388,0x50bbe68,0x50bc040]:self.invoke_native(entry)
  elif t==0xffff2102:self.emit('DatabaseManager.KillEvent')
  elif t==0xffff2103:self.emit('Player.KillCountEvent')
  elif t==0xffff2104:self.emit('Player.CombinedDemonKill',self.decode_tag(self.reg('x1')))
  elif t==0x50baaa4:self.emit('CheckDeadBuffBySkillIndex',signed(self.reg('w1'),32))
  elif t==0x4d09d28:self.emit('Effect.Dead',self.fp('s0'))
  elif t==0x4d0a428:self.emit('Effect.Slash',self.fp('s0'))
  elif t==0x4ff813c:self.emit('Camera.DarkMap')
  elif t==0x508086c:self.emit('SkillCoolTimeBuff')
  elif t==0x4ec9954:self.emit('SpawnCooltimeDropEffect');self.put('x0',self.zero(64))
  elif t==0x9a1312c:
   for r,value in zip(['s0','s1','s2'],life['position']):self.setfp(r,value)
  elif t in [0x9a13208,0x9a13a4c]:pass
  elif t==0x4b676bc:self.emit('CooltimeDrop.SetActive',bool(self.reg('w1')))
  elif t==0x4fb5068:self.emit('CooltimeDrop.SetEffect')
  elif t==0x4eec1b8:self.emit('Player.SlowEffect',self.fp('s0'),self.fp('s1'))
  elif t==0x50fa418:self.emit('MineItemDrop')
  elif t==0x4e466f8:self.emit('GameManager.Enemy_Dead',bool(self.reg('w2')))
  else:super().hook(t)
 def snapshot(self):
  return {**super().snapshot(),'hpCur':str(self.read(self.enemy+80,8).value),'hitInProgress':bool(self.read(self.enemy+464,1)),'rewardDraws':self.draw}
