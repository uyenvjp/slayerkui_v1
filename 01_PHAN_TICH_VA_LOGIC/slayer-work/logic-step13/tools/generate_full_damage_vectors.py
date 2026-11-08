#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,itertools,json,random
from full_damage_vm import FullDamageVM
from lifecycle_program import make_program
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);p.add_argument('--limit',type=int);a=p.parse_args();root=Path(a.out);P=make_program(a.source,root,True)
old=json.loads((root/'enemy-lifecycle-native-vectors.json').read_text())['vectors'];rng=random.Random(705_131)
base={'blackOrbNormal':'0','blackOrbBoss':'0','themeNormal':0,'themeBoss':0,'beastBoss':0,'lowHpThreshold':20,'lowHpBonus':0,'bossHitCount':0,'spiritValues':{'4':0,'5':0,'8':0,'11':0},'spiritChecks':{'4':False,'5':False,'8':False,'11':False}}
fixtures=[]
for n in range(144):
 f=copy.deepcopy(old[n]['fixture']);f['stats']=copy.deepcopy(base);f['context'].pop('modifierReturns',None);f['enemy'].update(HitPossible=True,MissState=False,MonsterType=1+n%3,isDead=False,characterDmgType=n%5);f['args'].update(trueDamage=n%7==0,attackElement=[0,1,2,3,4,100,-1][n%7],skillDamage=n%3!=0,damage=str([0,1,100,999,10**30][n%5]));f['life'].update(hpCur=str([1,200,700,701,1000,10**30][n%6]),hpMax=str(10**30 if n%6==5 else 1000),dmgStack=n%2==0,enemyType=0)
 for key in ['blackOrbNormal','blackOrbBoss']:f['stats'][key]=str(rng.choice([-1,0,1,20,2147483647,9223372036854775807]))
 for key in ['themeNormal','themeBoss']:f['stats'][key]=rng.choice([-1,0,1,20,2147483647])
 f['stats'].update(beastBoss=rng.choice([-1,0,12.5,33.333]),lowHpThreshold=rng.choice([-1,0,20,70.9,100]),lowHpBonus=rng.choice([-1,0,12.5,33.333]),bossHitCount=rng.choice([0,-1,2147483647]))
 for k in base['spiritValues']:f['stats']['spiritValues'][k]=rng.choice([0,12.5,33.333,100]);f['stats']['spiritChecks'][k]=bool(rng.randrange(2))
 fixtures.append(f)
# Explicit full-HP subtraction order, high/low thresholds and beast-tag gate.
for monster,tag,hp in itertools.product([1,2,3],[0,{'kind':'DivineBeastDmgInfoData'}],[1000,700,200]):
 f=copy.deepcopy(old[251]['fixture']);f['stats']=copy.deepcopy(base);f['context'].pop('modifierReturns',None);f['enemy'].update(MonsterType=monster,isDead=False,characterDmgType=4);f['args'].update(skillTag=tag,trueDamage=False,damage='100',attackElement=1,skillDamage=True);f['life'].update(hpCur=str(hp),hpMax='1000',dmgStack=True);f['stats'].update(blackOrbNormal='10',blackOrbBoss='20',themeNormal=5,themeBoss=15,beastBoss=12.5,lowHpBonus=25)
 for key in base['spiritValues']:f['stats']['spiritValues'][key]=20;f['stats']['spiritChecks'][key]=True
 fixtures.append(f)
vectors=[];steps=0;visited=set()
for n,f in enumerate(fixtures[:a.limit] if a.limit else fixtures):
 v=FullDamageVM(P,copy.deepcopy(f));arg=f['args'];v.pair('x1','x2',int(arg['damage']));v.put('w3',arg['criticalType']);v.put('w4',arg['attackElement']);v.put('w5',arg['skillDamage']);v.put('w6',arg['trueDamage']);v.put('x7',v.tag);v.write(v.sp,4,arg['damageType']);steps+=v.run(0x50b7810,this_ptr=v.enemy)+v.nested_steps;visited.update(v.visited);vectors.append({'case':n,'fixture':f,'expected':v.snapshot()})
report={'cases':len(vectors),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Stronger linked original normal/boss/special modifiers, element tables, full/high/low HP, orb/theme/beast/spirit math plus hit/HP/instant-kill/death/normal loot chain. No modifier-return constants. Warm EnemyNormal callbacks are an explicit profile, not every boss subclass. Secure/stat getters, spirit availability, multicast construction, RNG/Unity and downstream manager/skill callbacks remain declared fixtures; no full account/battle/backend parity.'}
if not a.limit:
 names={'normal':0x50b8b60,'boss':0x50b8cbc,'special':0x50b8e74,'fullHp':0x50b9e10,'normalSkill':0x50ba054,'bossSkill':0x50ba690,'highHp':0x50ba1c8,'lowHp':0x50ba354,'beast':0x50ba804,'orbNormal':0x50bb34c,'orbBoss':0x50bb654,'themeNormal':0x50bb4d0,'themeBoss':0x50bb7d8,'highCheck':0x50bba54,'lowCheck':0x50bbb74,'element':0x5018334}
 assert all(v in visited for v in names.values()),[k for k,v in names.items() if v not in visited];report['linked_entry_visited']={k:hex(v) for k,v in names.items()}
name='full-damage-smoke' if a.limit else 'full-damage-native';(root/(name+'-vectors.json')).write_text(json.dumps({'vectors':vectors},indent=2)+'\n');(root/(name+'-report.json')).write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
