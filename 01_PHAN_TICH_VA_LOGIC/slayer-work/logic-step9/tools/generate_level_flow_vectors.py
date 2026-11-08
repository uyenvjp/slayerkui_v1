#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,json,random
from level_flow_vm import Program,LevelFlowVM,f32
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out);src=Path(a.source)
P=Program(src,[root/'research/experience',root/'research/experience-deps',root/'research/level-lifecycle',root/'research/level-hold',root/'research/level-delay'])
ranges=[(0x4f162d4,0x4f16528),(0x4f16a4c,0x4f16c8c),(0x4f172d4,0x4f17370),(0x4f1758c,0x4f1766c),(0x4f1802c,0x4f18110),(0x4f18554,0x4f190ec),(0x4f22318,0x4f223d4),(0x4f22448,0x4f2258c)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
table={str(r['Level']):r['Exp'] for r in json.loads((src/'table-json/UserLevelBaseData.json').read_text())};max_level=next(r['Value'] for r in json.loads((src/'table-json/UpdateMaxValueBaseData.json').read_text()) if r['UpdateMaxValueType']==5)
base={'currentExp':'0','totalExp':'100000','level':0,'maxExp':table['0'],'userMaxLevel':max_level,'expTable':{},'expAdd':100,'scroll':{'present':False,'type':0},'hotTime':{'hot':False,'super':False,'hyper':False},'adExpBuffLimitTime':0,'eventBuffActive':False,'eventBuffExp':100,'spiritExpChance':0,'draws':[],'gameMode':0,'userStatPoint':0,'levelUpCount':0,'userLevelUpIng':False,'isPointerDown':False,'levelUpDelay':False,'iterator':{'state':0,'current':None,'time':0},'contentsOpen':{'Skin':False,'RankingBattle':False,'Training':False},'levelEvents':{},'levelActionPresent':True,'syncExpInput':'explicit-sync-exp-fixture'}
def prepare(f):
 for level in range(f['level'],min(5001,f['level']+12)):f['expTable'][str(level)]=table[str(level)]
 return f
fixtures=[];rng=random.Random(705_91)
for case in range(80):
 f=copy.deepcopy(base);f['level']=rng.choice([0,18,19,20,148,149,150,198,199,200,218,219,243,244,248,249,263,264,265,278,279,398,399,498,499,3998,3999,4000]);f['maxExp']=table[str(f['level'])];f['currentExp']=str(int(f['maxExp'])*rng.choice([0,1,2])+rng.choice([-1,0,1]));f['userStatPoint']=rng.choice([0,1,2147483646,2147483647,-2147483648]);f['levelUpCount']=rng.choice([-1,0,1,7,2147483647]);f['isPointerDown']=case%2==0;f['userLevelUpIng']=case%3==0;f['levelEvents']={str(f['level']+1):None if case%2 else ['observer-a','observer-b']};f['contentsOpen']={'Skin':case%2==0,'RankingBattle':case%3==0,'Training':case%4==0};fixtures.append(prepare(f))
# Every special unlock transition, both gated content flags, and exact EXP.
for level in [19,149,199,219,244,249,264,279,399,499,3999,4000]:
 for flag in [False,True]:
  f=copy.deepcopy(base);f.update(level=level,maxExp=table[str(level)],currentExp=table[str(level)],isPointerDown=True,userLevelUpIng=True);f['contentsOpen']={k:flag for k in f['contentsOpen']};f['levelEvents']={str(level+1):['observer']};fixtures.append(prepare(f))
for case,f in enumerate(fixtures):f['iterator']={'state':[-1,0,1,2][case%4],'current':None if case%2 else 'old','time':f32([0,.4,.5,.6][case%4])};f['levelUpDelay']=case%2==0
entries=[('buttonLevelUp',0x4f18554),('levelDisplay',0x4f16a4c),('levelUpCallback',0x4f1758c),('levelUpRequest',0x4f162d4),('levelUpStop',0x4f172d4),('pointerUpLevel',0x4f190a4),('levelHoldStep',0x4f22448),('levelDelayStep',0x4f22318)]
vectors=[];steps=0;visited=set()
def run(f,entry,v=None):
 global steps
 v=v or LevelFlowVM(P,f);v.put('x30',v.RETURN);steps+=v.run(entry,this_ptr=v.iterator if entry in [0x4f22448,0x4f22318] else v.this);visited.update(v.visited);result={'state':v.state(),'effects':v.effects}
 if entry in [0x4f22448,0x4f22318]:result.update(v.iterator_result())
 return v,result
for case,f in enumerate(fixtures):
 for method,entry in entries:
  v,result=run(f,entry);vectors.append({'case':case,'method':method,'fixture':f,'expected':result})
sequences=[]
for level in [0,198,263]:
 f=copy.deepcopy(base);f.update(level=level,maxExp=table[str(level)],currentExp=str(int(table[str(level)])+int(table[str(level+1)])),isPointerDown=True,userLevelUpIng=True);prepare(f);v=LevelFlowVM(P,f);frames=[]
 for action,entry in [('buttonLevelUp',0x4f18554),('buttonLevelUp',0x4f18554),('pointerUpLevel',0x4f190a4)]:
  v.effects=[];v,result=run(f,entry,v);frames.append({'action':action,'expected':result})
 sequences.append({'fixture':f,'frames':frames})
for level,actions in [(0,['levelHoldStep']*9+['pointerUpLevel','levelHoldStep']),(149,['levelHoldStep']),(3999,['levelHoldStep']*7+['pointerUpLevel','levelHoldStep']),(0,['levelDelayStep']*2)]:
 f=copy.deepcopy(base);f.update(level=level,maxExp=table[str(level)],currentExp=str(sum(int(table[str(n)]) for n in range(level,min(5001,level+6)))),isPointerDown=True,userLevelUpIng=True);f['contentsOpen']['Skin']=True;prepare(f);v=LevelFlowVM(P,f);frames=[]
 for action in actions:
  v.effects=[];entry=dict(entries)[action];v,result=run(f,entry,v);frames.append({'action':action,'expected':result})
 sequences.append({'fixture':f,'frames':frames})
f=copy.deepcopy(base);f.update(currentExp=table['0'],levelActionPresent=False);prepare(f);v=LevelFlowVM(P,f)
try:v.run(0x4f18554,this_ptr=v.this)
except RuntimeError as exc:assert 'Native NullReference path' in str(exc);contracts=[{'method':'buttonLevelUp','fixture':f,'expectedError':'Native null LevelUpAction','state':v.state(),'effects':v.effects}]
else:raise AssertionError('Native null LevelUpAction accepted')
report={'cases':len(vectors),'snapshots':len(fixtures),'entries':len(entries),'contracts':len(contracts),'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Eight level application/display/callback/batch/stop/hold/debounce entry bodies with original callback body registered as the sole LevelUpAction listener and original get_UserMaxLevel. Wrapper/collections, content flags, level-event observers, initialized managers, UI/quest/audio/tutorial/unlock/Fill_Update/SyncExp/API/time-sync/wait sinks modeled. No complete subscribers/Unity/IFix/server/save parity.'}
(root/'level-flow-native-vectors.json').write_text(json.dumps({'vectors':vectors,'sequences':sequences,'contracts':contracts},indent=2)+'\n');(root/'level-flow-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
