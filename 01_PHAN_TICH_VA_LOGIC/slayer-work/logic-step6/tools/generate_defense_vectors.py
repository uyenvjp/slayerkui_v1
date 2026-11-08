#!/usr/bin/env python3
"""Three PlayerBase defense getter bodies with explicit account manager state."""
from pathlib import Path
import argparse,copy,json,random,struct
from native_flow_vm import Program,VM
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,root/'player-state')
allowed=[(0x4eeeaf8,0x4eeeef0)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in allowed)}
base={'db':{k:0 for k in ['Stat_Miss','Artifact_Miss','PlayerOption_Miss','FriendOption_Miss','FriendPassive_Miss','SkinOption_Miss','SoulGemStat_Dodge','FriendOption_Resistance','PlayerOption_Resistance','FriendPassive_EnemyAtkReduce']},'player':{},'presetStat':None,
 'dragon':{'Ether':None,'SpecialCook':{'DragonValleySpecialCookMaterialBuff_Dodge':0}},'demon':None,'playerHpUpdatePresent':False,'skillGrinding':{'SkillGrindingPassiveStat_Dodge':0}}
class DefenseVM(VM):
 def __init__(self,p,f):super().__init__(p,f);self.grinding=self.object('SkillGrindingDataManager',f['skillGrinding'])
 def hook(self,t):
  if t==0x5312f70:self.put('x0',self.grinding)
  else:super().hook(t)
fixtures=[copy.deepcopy(base)];rng=random.Random(705108)
for j in range(65):
 f=copy.deepcopy(base)
 for key in f['db']:f['db'][key]=rng.choice([0,1,16777217,2147483647,-2147483648]) if key in ['PlayerOption_Miss','PlayerOption_Resistance','SkinOption_Miss'] else rng.choice([-.1,0,.375,33.33333,1e8])
 f['dragon']['SpecialCook']['DragonValleySpecialCookMaterialBuff_Dodge']=rng.choice([0,.1,33.33333,1e8]);f['skillGrinding']['SkillGrindingPassiveStat_Dodge']=rng.choice([0,.1,33.33333,1e8]);f['presetStat']=None if j%3 else {'Miss':12.5};fixtures.append(f)
vectors=[];steps=0;visited=set()
for case,f in enumerate(fixtures):
 for name,va,offset in [('playerMiss',0x4eeeaf8,188),('playerResistance',0x4eeee28,992),('playerDamageReduce',0x4eeed94,196)]:
  vm=DefenseVM(P,f);count=vm.run(va);steps+=count;visited.update(vm.visited)
  result=struct.pack('<f',vm.fp('s0')).hex();assert struct.pack('<f',vm.floating(vm.player+offset,'s')).hex()==result
  vectors.append({'case':case,'method':name,'fixture':f,'expected':result})
(root/'defense-native-flow-vectors.json').write_text(json.dumps(vectors,indent=2)+'\n')
report={'cases':len(vectors),'entries':3,'snapshots':len(fixtures),'instruction_steps':steps,'distinct_instructions_visited':len(visited),'scope':'Three defense getter bodies, decrypted account values and manager/preset existence explicitly modeled.'}
(root/'defense-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
