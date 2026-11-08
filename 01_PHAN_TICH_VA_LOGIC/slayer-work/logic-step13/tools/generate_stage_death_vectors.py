#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,itertools,json
from stage_death_vm import StageDeathVM
from lifecycle_program import make_program
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=make_program(a.source,root,True)
from enemy_lifecycle_vm import Program
extra=Program(a.source,root/'research/game-death-chain');P.instructions.update({pc:op for pc,op in extra.instructions.items() if 0x4e46518<=pc<0x4e465f0 or 0x4e466f8<=pc<0x4e479ec})
baseline=copy.deepcopy(json.loads((root/'full-damage-native-vectors.json').read_text())['vectors'][-18]['fixture']);baseline['enemy'].update(HitPossible=True,MissState=False,isDead=False);baseline['args'].update(trueDamage=True,damage='1000',damageType=0,skillTag=0);baseline['context'].update(gameMode=0,miss=0);baseline['life'].update(hpCur='1',hpMax='1000',enemyType=0);baseline['game']={'listPresent':True,'otherEnemies':0,'waveCount':0,'endPosition':[0.1,-3.25,2],'rightVector':[1,0,0]}
vectors=[];contracts=[];steps=0;visited=set()
def run(f):
 global steps
 v=StageDeathVM(P,copy.deepcopy(f));a=f['args'];v.pair('x1','x2',int(a['damage']));v.put('w3',a['criticalType']);v.put('w4',a['attackElement']);v.put('w5',a['skillDamage']);v.put('w6',a['trueDamage']);v.put('x7',v.tag);v.write(v.sp,4,a['damageType']);error=None
 try:steps+=v.run(0x50b7810,this_ptr=v.enemy)
 except RuntimeError as exc:
  if 'Native NullReference' not in str(exc):raise
  error='Native NullReference'
 steps+=v.nested_steps;visited.update(v.visited);return {**v.snapshot(),**({'error':error} if error else {})}
for wave,others,position,right in itertools.product([-1,0,8,9,10,2147483647],[0,1,2],[[0.1,-3.25,2],[100000,1.0/3,0]],[[1,0,0],[-1,0.5,0.25]]):
 f=copy.deepcopy(baseline);f['game'].update(waveCount=wave,otherEnemies=others,endPosition=position,rightVector=right);vectors.append({'fixture':f,'expected':run(f)})
f=copy.deepcopy(baseline);f['game']['listPresent']=False;contracts.append({'fixture':f,'expected':run(f)})
report={'cases':len(vectors),'contract_cases':len(contracts),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'True-damage hit/HP/death/normal-loot -> native GameManager.Enemy_Dead/EnemyRemove on mode0 paths, list removal, deactivate, WaveCount int32 and wave9->10 reward-box vector offset. Spawn, stage-bar, restart coroutine and Unity/list dependencies explicit. rightVector static values declared fixtures; not all modes, spawn implementation, stage clear/account or full game parity.'}
assert 0x4e46518 in visited and 0x4e466f8 in visited and 0x4e46910 in visited
(root/'stage-death-native-vectors.json').write_text(json.dumps({'vectors':vectors,'contracts':contracts},indent=2)+'\n');(root/'stage-death-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
