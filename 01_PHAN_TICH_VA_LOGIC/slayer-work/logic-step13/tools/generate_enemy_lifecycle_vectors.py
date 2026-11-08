#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,itertools,json
from enemy_lifecycle_vm import Program,EnemyLifecycleVM
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);p.add_argument('--limit',type=int);a=p.parse_args();root=Path(a.out);previous=root.parent
dirs=[previous/'logic-step12/research'/x for x in ['enemy-damage','enemy-calcs','character-element']]+[root/'research'/x for x in ['enemy-death','hp-accessors','enemy-normal','death-subscribers']]+[previous/'logic-step7/research'/x for x in ['enemy-normal','drop-helpers','probability','game-stage','reward-db']]+[previous/'logic-step4/asm']
P=Program(a.source,dirs)
ranges=[(0x50b7810,0x50b8b60),(0x50bae64,0x50baec4),(0x5018538,0x50185b0),(0x4d22f6c,0x4d23080),(0x50baf38,0x50bb34c),(0x5016584,0x50166fc),(0x50bbf20,0x50bc180),(0x50bbe68,0x50bbf20),(0x50f9388,0x50fa418),(0x50fab10,0x50fac40),(0x4d18120,0x4d18198),(0x4e513b4,0x4e51610),(0x4d4d544,0x4d4d664),(0x4d4da60,0x4d4dba4)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
old=json.loads((previous/'logic-step12/enemy-hit-native-vectors.json').read_text())['vectors'];rewards=[v['fixture'] for v in json.loads((previous/'logic-step7/reward-native-flow-vectors.json').read_text()) if v['method']=='stageItemDrop']
life={'hpCur':'1000','hpMax':'1000','instantKillPercent':0,'instantKillAvailable':False,'dmgStack':False,'hitInProgress':True,'enemyType':0,'scalerPresent':True,'spriteScalerPresent':True,'poolPresent':True,'deathCallbackPresent':True,'databaseKillCallbackPresent':True,'playerKillCallbackPresent':True,'combinedKillCallbackPresent':True,'scaleX':1,'spriteScaleX':-1,'position':[10,20,0]}
fixtures=[]
for n,v in enumerate(old):
 f=copy.deepcopy(v['fixture']);f['reward']=copy.deepcopy(rewards[n%len(rewards)]);f['life']=copy.deepcopy(life);f['life'].update(hpCur=str([1,500,701,704,1000,10**25][n%6]),instantKillPercent=[0,20,70,99.9][n%4],instantKillAvailable=n%3==0,dmgStack=n%2==0,enemyType=[0,7,8,9][n%4]);fixtures.append(f)
baseline=copy.deepcopy(old[1]['fixture']);baseline['enemy'].update(HitPossible=True,MissState=False,isDead=False,MonsterType=1,stunPresent=False,icePresent=False);baseline['args'].update(damage='100',skillTag=0,damageType=0,trueDamage=True);baseline['context'].update(miss=0,accuracy=100,gameMode=0,needRecording=True,cameraShake=True)
baseline['life']=copy.deepcopy(life);baseline['reward']=copy.deepcopy(rewards[0])
for hp,percent,active,stack in itertools.product([199,200,201,1000],[0,20],[False,True],[False,True]):
 f=copy.deepcopy(baseline);f['life'].update(hpCur=str(hp),instantKillPercent=percent,instantKillAvailable=active,dmgStack=stack);fixtures.append(f)
for power,offset in itertools.product([30,60],[-1,0,1]):
 f=copy.deepcopy(baseline);maximum=10**power;f['args']['damage']='0';f['life'].update(hpCur=str(maximum//5+offset),hpMax=str(maximum),instantKillPercent=20,instantKillAvailable=True);fixtures.append(f)
vectors=[];contracts=[];sequences=[];steps=0;visited=set()
def act(v,changes):
 global steps
 v.effects=[];v.received=None;v.f['args'].update(changes);arg=v.f['args'];v.tag=v.make_tag(arg['skillTag']);v.pair('x1','x2',int(arg['damage']));v.put('w3',arg['criticalType']);v.put('w4',arg['attackElement']);v.put('w5',arg['skillDamage']);v.put('w6',arg['trueDamage']);v.put('x7',v.tag);v.write(v.sp,4,arg['damageType']);v.put('x30',v.RETURN);error=None;before=v.nested_steps
 try:steps+=v.run(0x50b7810,this_ptr=v.enemy)
 except RuntimeError as exc:
  if 'Native NullReference' not in str(exc):raise
  error='Native NullReference'
 steps+=v.nested_steps-before;visited.update(v.visited);return {**v.snapshot(),**({'error':error} if error else {})}
selected=fixtures[:a.limit] if a.limit else fixtures
for n,f in enumerate(selected):
 v=EnemyLifecycleVM(P,copy.deepcopy(f));vectors.append({'case':n,'fixture':f,'expected':act(v,{})})
if not a.limit:
 for field,dead,hp in [('deathCallbackPresent',False,'1'),('scalerPresent',False,'1'),('spriteScalerPresent',False,'1'),('poolPresent',False,'1'),('databaseKillCallbackPresent',False,'1'),('deathCallbackPresent',True,'1'),('deathCallbackPresent',False,'1000')]:
  f=copy.deepcopy(baseline);f['life'][field]=False;f['life']['hpCur']=hp;f['enemy']['isDead']=dead;v=EnemyLifecycleVM(P,copy.deepcopy(f));contracts.append({'name':field+str(dead)+hp,'fixture':f,'expected':act(v,{})})
 for tag in [0,{'kind':'CombinedDemon'},{'kind':'DivineBeastDmgInfoData'}]:
  f=copy.deepcopy(baseline);f['args']['skillTag']=tag;v=EnemyLifecycleVM(P,copy.deepcopy(f));frames=[]
  for changes in [{'damage':'900'},{'damage':'200','damageType':3},{'damage':'200','damageType':0}]:frames.append({'args':changes,'expected':act(v,changes)})
  sequences.append({'fixture':f,'frames':frames})
report={'cases':len(vectors),'contract_cases':len(contracts),'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Linked GetDmg + selected status/mastery bodies -> original HP accessors/DmgResult/DOT/instant-kill/Death -> modeled ordered multicast of original EnemyNormal.DeadEvent, PlayerKillCountEvent and CheckLastSkillIndex -> original StageItemDrop/reward helpers. Normal/Boss/SpecialBoss modifier outputs still explicit fixtures. Delegate construction/BaseSetting read statically; multicast invocation, secure/BCL/getters/RNG/Unity and downstream GameManager.Enemy_Dead, MineItemDrop, dead-buff/kill subscribers are declared dependencies. No full battle/acquisition/backend/Unity parity.'}
if not a.limit:
 linked={'GetDmg':0x50b7810,'DmgResult':0x50bafb0,'DotDmgResult':0x50baf38,'InstantKill':0x50bb184,'Death':0x50bbf20,'NormalDeadEvent':0x50f9388,'PlayerKillCount':0x50bbe68,'CheckLastSkillIndex':0x50bc040,'StageItemDrop':0x50f9804}
 assert all(pc in visited for pc in linked.values()),[k for k,v in linked.items() if v not in visited]
 report['linked_entry_visited']={k:hex(v) for k,v in linked.items()}
name='enemy-lifecycle-smoke' if a.limit else 'enemy-lifecycle-native'
(root/(name+'-vectors.json')).write_text(json.dumps({'vectors':vectors,'contracts':contracts,'sequences':sequences},indent=2)+'\n');(root/(name+'-report.json')).write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
