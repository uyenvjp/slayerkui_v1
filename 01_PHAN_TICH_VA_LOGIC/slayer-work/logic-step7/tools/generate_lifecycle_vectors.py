#!/usr/bin/env python3
"""Static coroutine flow, downstream lifecycle/Unity calls explicitly modeled."""
from pathlib import Path
import argparse,copy,json,math,random,struct,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,signed,f32
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/reborn-iterator',root/'research/defeat-iterator',root/'research/reborn-health'])
ranges=[(0x4f08838,0x4f08bf0),(0x4f095d8,0x4f096cc),(0x4ef8850,0x4ef88d0)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
def dec(x):return float(x) if isinstance(x,str) else x
def norm(x):
 if isinstance(x,float) and not math.isfinite(x):return 'nan' if math.isnan(x) else 'inf' if x>0 else '-inf'
 if isinstance(x,dict):return {k:norm(v) for k,v in x.items()}
 if isinstance(x,list):return [norm(v) for v in x]
 return x
class LifeVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False})
  self.f=f;self.events=[];self.iterator=self.alloc(64);self.waits={};self.write(self.iterator+16,4,f['iterator']['state']);self.write(self.iterator+32,8,self.player)
  self.write(self.iterator+24,8,0 if f['iterator']['current'] is None else 0x1234)
  for key,offset in [('secondToReborn',40),('hpPercent',44),('buffDuration',48)]:self.write(self.iterator+offset,4,int.from_bytes(struct.pack('<f',dec(f['iterator'][key])),'little'))
  self.write(self.player+328,8,self.alloc(64));self.write(self.player+728,8,0);self.write(self.player+736,4,0)
  self.game=self.alloc(4096);self.instances['GameManager']=self.game;self.write(self.game+1488,4,int.from_bytes(struct.pack('<f',dec(f['input']['battleTime'])),'little'))
  pool=self.alloc(128);self.instances['ObjectPooler_Effect']=pool;self.write(pool+40,8,self.alloc(64))
  self.effect=self.alloc(128);self.playerTf=self.alloc(64)
  sound=self.alloc(64);sc=self.alloc(1900);self.sound=sound;self.write(sound,8,sc);self.write(sc+1848,8,0xffff7001);self.write(sc+1856,8,0)
  pc=self.alloc(800);self.write(self.player,8,pc);self.write(pc+712,8,0xffff7002);self.write(pc+720,8,0)
  klass=self.alloc(256);static=self.alloc(64);self.classes['UnityEngine.Vector2']=klass;self.write(klass+228,4,1);self.write(klass+184,8,static);self.write(static,8,0)
 def read(self,a,n):
  if a==0xabce8f8 and n==1:return 1 # specific initialized metadata flag
  return super().read(a,n)
 def emit(self,name,*args):self.events.append({'name':name,'args':list(args)})
 def hook(self,t):
  if t==0x4d18dac:self.put('x0',self.sound)
  elif t==0xffff7001:self.emit('Sound.Virtual1848')
  elif t==0xffff7002:self.emit('SetState',signed(self.reg('w1'),32))
  elif t==0x9a8edb0:self.emit('Rigidbody2D.set_linearVelocity',self.fp('s0'),self.fp('s1'))
  elif t==0x4e457b0:self.emit('BlackBackGround_BlackOut')
  elif t==0x4ef4310:self.emit('SkillUsing_ON')
  elif t==0x4ef8850:
   # This call is interpreted if its body is in Program. For coroutine runs,
   # the generator excludes that body and models only the downstream request.
   self.emit('SetRebornState',signed(self.reg('w1'),32))
  elif t==0x4b592c8:
   seconds=self.fp('s0');ptr=self.alloc(24);self.waits[ptr]={'waitForSeconds':seconds};self.put('x0',ptr);self.emit('WaitForSeconds',seconds)
  elif t==0x4ec9e94:self.emit('SpawnRebornEffect');self.put('x0',self.effect)
  elif t==0x9a13c6c:self.emit('Effect.SetParent')
  elif t==0x9a005e0:self.put('x0',self.playerTf)
  elif t==0x9a1312c:
   for j,x in enumerate(self.f['input']['playerPosition']):self.setfp('s'+str(j),dec(x))
  elif t==0x9a13208:self.emit('Effect.set_position',self.fp('s0'),self.fp('s1'),self.fp('s2'))
  elif t==0x9a13a4c:self.emit('Effect.set_localScale',self.fp('s0'),self.fp('s1'),self.fp('s2'))
  elif t==0x9a006b0:self.put('x0',self.effect)
  elif t==0x9a03bd4:self.emit('Effect.SetActive',bool(self.reg('w1')))
  elif t==0x501668c:self.emit('set_Hp_cur',str(self.big('x1','x2')))
  elif t==0x4ef2724:self.emit('Hp_Heal_Skill',self.fp('s0'))
  elif t==0x4e4587c:self.emit('BlackBackGround_OFF')
  elif t==0x4ef44a0:self.emit('SkillUsing_OFF')
  elif t==0x4ef3dec:self.emit('Move.Factory');self.put('x0',self.alloc(64))
  elif t==0x4ef3ae0:self.emit('StopAndGoIE_State')
  elif t==0x4e4f528:self.emit('GameManager.DefaultSetting')
  elif t==0x4ef90c0:self.emit('BattleEnd',bool(self.reg('w1')))
  elif t==0xffff7003:self.emit('ReBornAction.Invoke',signed(self.reg('w1'),32),signed(self.read(self.player+736,4),32))
  else:super().hook(t)
 def result(self):
  current=self.read(self.iterator+24,8);return {'iterator':{'state':signed(self.read(self.iterator+16,4),32),'current':None if not current else self.waits.get(current,'old'),**{k:self.f['iterator'][k] for k in ['secondToReborn','hpPercent','buffDuration']}},'yielded':bool(self.reg('w0')),'effects':self.events}

base={'iterator':{'state':0,'current':None,'secondToReborn':2.5,'hpPercent':50,'buffDuration':10},'input':{'battleTime':60,'playerPosition':[1,2,3]}}
rng=random.Random(705_72);vectors=[];steps=0;visited=set();original=dict(P.instructions)
P.instructions={pc:op for pc,op in original.items() if not 0x4ef8850<=pc<0x4ef88d0}
for case in range(100):
 f=copy.deepcopy(base);f['iterator']['state']=rng.choice([0,1,1,2,-1,3]);f['iterator']['current']='old' if case%2 else None
 for key in ['secondToReborn','hpPercent','buffDuration']:f['iterator'][key]=rng.choice([0,.01,1,2.5,99.99,-1])
 f['input']['battleTime']=rng.choice([0,-1,1,60,'nan','inf','-inf']);f['input']['playerPosition']=[rng.choice([0,-1,1,1e8]) for _ in range(3)]
 for name,entry in [('fakeDeathStep',0x4f08838),('defeatStep',0x4f095d8)]:
  vm=LifeVM(P,f);steps+=vm.run(entry,this_ptr=vm.iterator);visited.update(vm.visited);vectors.append({'case':case,'method':name,'fixture':f,'result':norm(vm.result())})
# Exercise resumed phases using the same native iterator fields and Wait objects.
vm=LifeVM(P,base);sequence=[]
for frame in range(4):
 vm.put('x30',vm.RETURN);vm.events=[];steps+=vm.run(0x4f08838,this_ptr=vm.iterator);visited.update(vm.visited);sequence.append(norm(vm.result()))
 if not vm.reg('w0'):break
P.instructions=original
for state in [0,1,2,3,-1,2147483647]:
 for present in [False,True]:
  vm=LifeVM(P,base)
  if present:
   callback=vm.alloc(80);vm.write(callback+24,8,0xffff7003);vm.write(callback+40,8,0);vm.write(callback+64,8,0);vm.write(vm.player+728,8,callback)
  vm.put('w1',state);steps+=vm.run(0x4ef8850);visited.update(vm.visited)
  vectors.append({'method':'setRebornState','state':state,'callbackPresent':present,'result':{'state':signed(vm.read(vm.player+736,4),32),'effects':vm.events}})
report={'cases':len(vectors),'continuedPhases':len(sequence),'instructionSteps':steps,'distinctInstructions':len(visited),'scope':'Co_FakeDeath.MoveNext, DefeatCoroutine.MoveNext, SetRebornState bodies. Downstream healing, movement, BattleEnd and Unity effects modeled; no full lifecycle or scheduler parity.'}
(root/'lifecycle-native-flow-vectors.json').write_text(json.dumps({'vectors':vectors,'sequence':{'fixture':base,'phases':sequence}},indent=2,allow_nan=False)+'\n');(root/'lifecycle-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
