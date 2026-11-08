#!/usr/bin/env python3
"""Bounded native enemy attack iterator with explicit virtual/Unity hooks."""
from pathlib import Path
import argparse,json,math,random,struct,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,root/'research/enemy-attack-iterator')
def decode(x):return float(x) if isinstance(x,str) else x
def bits(x):return struct.pack('<f',x).hex()
class AttackVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False})
  self.f=f;self.enemy=self.alloc(4096);self.iterator=self.alloc(64);vtable=self.alloc(1200);self.write(self.enemy,8,vtable)
  self.write(vtable+440,8,0xffff1000);self.write(vtable+448,8,0)
  self.write(vtable+712,8,0xffff1001);self.write(vtable+720,8,0)
  self.write(vtable+1096,8,0xffff1002);self.write(vtable+1104,8,0)
  self.enemy_tf=self.alloc(32);self.player_tf=self.alloc(32);self.write(self.enemy+176,8,self.enemy_tf)
  self.write(self.enemy+384,4,int.from_bytes(struct.pack('<f',decode(f['input']['attackRange'])),'little'))
  self.instances['GameManager']=self.alloc(64);self.instances['PlayerBase']=self.player
  self.write(self.iterator+16,4,f['iterator']['state']);self.write(self.iterator+24,8,0 if f['iterator']['current'] is None else 0x1234);self.write(self.iterator+32,8,self.enemy)
  self.write(self.iterator+40,4,int.from_bytes(struct.pack('<f',decode(f['iterator']['waitTime'])),'little'))
 def hook(self,t):
  if t==0xffff1000:self.setfp('s0',decode(self.f['input']['attackSpeed']))
  elif t==0xffff1001:self.effects.append({'kind':'SetState','state':signed(self.reg('w1'),32)})
  elif t==0xffff1002:self.effects.append({'kind':'AttackReady'})
  elif t==0x4e44954:self.setfp('s0',decode(self.f['input']['gameDeltaTime']))
  elif t==0x9a005e0:self.put('x0',self.player_tf)
  elif t==0x9a1312c:
   self.setfp('s0',decode(self.f['input']['enemyX' if self.reg('x0')==self.enemy_tf else 'playerX']));self.setfp('s1',0);self.setfp('s2',0)
  else:super().hook(t)
base={'iterator':{'state':0,'waitTime':0,'current':None},'input':{'attackSpeed':2,'gameDeltaTime':1/60,'enemyX':10,'playerX':9.5,'attackRange':1}}
fixtures=[];rng=random.Random(705_71)
for i in range(150):
 f=json.loads(json.dumps(base));f['iterator']={'state':rng.choice([0,1,1,1,-1,2]),'waitTime':rng.choice([0,1,2,2.000001,10,-1,'nan','inf','-inf']),'current':None if i%2 else 'old'}
 for key in ['attackSpeed','gameDeltaTime','enemyX','playerX','attackRange']:f['input'][key]=rng.choice([0,1,2,2.000001,1/60,-1,'nan','inf','-inf'])
 fixtures.append(f)
for wait in [0,1.999999,2,2.000001]:
 for distance in [.999999,1,1.000001]:
  f=json.loads(json.dumps(base));f['iterator']['state']=1;f['iterator']['waitTime']=wait;f['input']['enemyX']=distance;f['input']['playerX']=0;fixtures.append(f)
vectors=[];steps=0;visited=set()
for case,f in enumerate(fixtures):
 vm=AttackVM(P,f);steps+=vm.run(0x50be5dc,this_ptr=vm.iterator);visited.update(vm.visited)
 result={'state':signed(vm.read(vm.iterator+16,4),32),'waitTimeBits':bits(vm.floating(vm.iterator+40,'s')),'current':None if vm.read(vm.iterator+24,8)==0 else 'old','yielded':bool(vm.reg('w0')),'effects':vm.effects}
 vectors.append({'case':case,'fixture':f,'result':result})
# Continue a single iterator across frames; preserve native fields between calls.
vm=AttackVM(P,base);sequence=[]
for frame in range(200):
 vm.put('x30',vm.RETURN);vm.effects=[];steps+=vm.run(0x50be5dc,this_ptr=vm.iterator);visited.update(vm.visited)
 sequence.append({'state':signed(vm.read(vm.iterator+16,4),32),'waitTimeBits':bits(vm.floating(vm.iterator+40,'s')),'current':None if vm.read(vm.iterator+24,8)==0 else 'old','yielded':bool(vm.reg('w0')),'effects':vm.effects})
 if not vm.reg('w0'):break
report={'cases':len(vectors),'continuedFrames':len(sequence),'instructionSteps':steps,'distinctInstructions':len(visited),'scope':'One EnemyBase attack iterator body with explicit virtual getters, state setter, transform and GameDeltaTime fixtures; no animation events/whole Unity loop.'}
(root/'ai-native-flow-vectors.json').write_text(json.dumps({'vectors':vectors,'sequence':{'fixture':base,'frames':sequence}},indent=2)+'\n');(root/'ai-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
