#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,itertools,json,random
from enemy_hit_vm import Program,EnemyHitVM
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/enemy-damage',root/'research/enemy-calcs',root/'research/character-element',root.parent/'logic-step4/asm'])
ranges=[(0x50b7810,0x50b8b60),(0x50bae64,0x50baec4),(0x5018538,0x50185b0),(0x4d22f6c,0x4d23080)];P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
base={'enemy':{'HitPossible':True,'MissState':False,'isNeedIceEffect':True,'isDead':False,'isBurning1':False,'isBurning2':False,'MonsterType':0,'characterDmgType':0,'stunPresent':False,'icePresent':False,'lastSkillTag':99},'context':{'accuracy':100,'miss':0,'userLevel':1,'randomUnit':0.5,'abnormalSkillValue':0,'freezeAddDamage':0,'mastery':{},'grinding':{},'cameraShake':True,'gameMode':0,'needRecording':True,'resultDead':False,'modifierReturns':{'Normal':'701','Boss':'702','SpecialBoss':'703'}},'animatorPresent':True,'args':{'damage':'100','damageType':0,'criticalType':2,'attackElement':0,'skillDamage':True,'trueDamage':False,'skillTag':0}}
fixtures=[];rng=random.Random(705_12)
tags=[None,0,1,2,3,12,13,14,18,29,34,35,36,45,1004,-1,2147483647,{'kind':'CombinedDemon'},{'kind':'DivineBeastDmgInfoData'},{'kind':'Other'}]
for case in range(160):
 f=copy.deepcopy(base);e=f['enemy'];c=f['context'];args=f['args'];args.update(skillTag=rng.choice(tags),damage=str(rng.choice([-100,0,1,101,10**25])),damageType=rng.choice([0,1,2,3,4,-1]),criticalType=rng.choice([-1,0,1,2,3]),attackElement=rng.choice([-1,0,1,2,3,4,100]),skillDamage=case%3==0,trueDamage=case%4==0)
 for key in ['stunPresent','icePresent','isBurning1','isBurning2','isDead']:e[key]=bool(rng.randrange(2))
 e.update(HitPossible=case%13!=0,MissState=case%11==0,MonsterType=rng.randrange(5),characterDmgType=rng.choice([0,1,2,3,4]))
 c.update(accuracy=rng.choice([0,1,100,1000]),miss=rng.choice([0,50,100]),userLevel=rng.choice([-1,0,1,4000]),randomUnit=rng.choice([0,.25,.5,.999]),abnormalSkillValue=rng.choice([-1,0,12.5,50]),freezeAddDamage=rng.choice([-1,0,12.5,50]),cameraShake=case%3==0,gameMode=case%2,needRecording=case%3==0,resultDead=case%5==0)
 c['mastery']={str(tag):rng.choice([0,1,2,3,4]) for tag in tags if isinstance(tag,int) and rng.randrange(2)}
 c['grinding']={str(tag):{'Accuracy':rng.choice([-1,0,33.3,100]),'DmgType':rng.choice([-1,0,33.3,100])} for tag in tags if isinstance(tag,int) and rng.randrange(2)};fixtures.append(f)
# Cover membership-vs-mastery-level, positive ice HitEffect state and all tags.
for tag,present,level in itertools.product([1,3,12,13,14,18,29,34,36,45,1004],[False,True],[1,2,3]):
 f=copy.deepcopy(base);f['args'].update(skillTag=tag,attackElement=1);f['enemy'].update(stunPresent=True,icePresent=True,isBurning1=True,characterDmgType=4,MonsterType=0);f['context'].update(abnormalSkillValue=25,freezeAddDamage=10,resultDead=True)
 if present:f['context']['mastery'][str(tag)]=level
 fixtures.append(f)
for (tag,monster),level,dot in itertools.product([(29,1),(34,2),(35,2),(36,2)],[1,2,3],[False,True]):
 f=copy.deepcopy(base);f['args'].update(skillTag=tag,damageType=3 if dot else 0);f['enemy'].update(MonsterType=monster,stunPresent=True,icePresent=True);f['context'].update(abnormalSkillValue=25,freezeAddDamage=10);f['context']['mastery'][str(tag)]=level;fixtures.append(f)
vectors=[];contracts=[];steps=0;visited=set()
def run(f):
 global steps
 v=EnemyHitVM(P,f);arg=f['args'];v.pair('x1','x2',int(arg['damage']));v.put('w3',arg['criticalType']);v.put('w4',arg['attackElement']);v.put('w5',arg['skillDamage']);v.put('w6',arg['trueDamage']);v.put('x7',v.tag);v.write(v.sp,4,arg['damageType']);error=None
 try:steps+=v.run(0x50b7810,this_ptr=v.enemy)
 except RuntimeError as exc:
  if 'Native NullReference' not in str(exc):raise
  error='Native NullReference'
 visited.update(v.visited);return {**v.snapshot(),**({'error':error} if error else {})}
for case,f in enumerate(fixtures):vectors.append({'case':case,'fixture':f,'expected':run(f)})
for name in ['null-option','null-mastery','missing-animator','lazy-hit-disabled']:
 f=copy.deepcopy(base)
 if name=='null-option':f['args']['skillTag']=12;f['context']['grinding']['12']=None
 elif name=='null-mastery':f['args']['skillTag']=12;f['context']['mastery']['12']=None
 else:f['animatorPresent']=False
 if name=='lazy-hit-disabled':f['enemy']['HitPossible']=False
 contracts.append({'name':name,'fixture':f,'expected':run(f)})
linked_entries={'GetDmg':0x50b7810,'MissProbability':0x4d22f6c,'WinType':0x5018538,'AbnormalState_Cal':0x50b84dc,'BurnState_Cal':0x50b887c,'IceState_Cal':0x50b8998,'NormalMastery':0x50b869c,'BossMastery':0x50b878c,'IsBurning':0x50bae64}
assert all(pc in visited for pc in linked_entries.values()),[name for name,pc in linked_entries.items() if pc not in visited]
report={'cases':len(vectors),'contract_cases':len(contracts),'instruction_steps':steps,'distinct_instructions':len(visited),'linked_entry_visited':{name:hex(pc) for name,pc in linked_entries.items()},'scope':'Whole GetDmg body interpreted with original MissProbability, WinType, Abnormal/Burn/Ice and both mastery numeric bodies. Explicit initialized metadata/type hierarchy, dictionary/skill/secure/account getters, RNG, Unity/sound/replay/quest fixtures. Normal/Boss/SpecialBoss modifier return values and DmgResult/death lifecycle are declared fixture boundaries, not linked or claimed recovered by this corpus. No full battle/Unity/IFix/backend parity.'}
(root/'enemy-hit-native-vectors.json').write_text(json.dumps({'vectors':vectors,'contracts':contracts},indent=2)+'\n');(root/'enemy-hit-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
