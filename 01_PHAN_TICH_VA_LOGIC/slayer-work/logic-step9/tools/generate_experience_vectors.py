#!/usr/bin/env python3
"""Bounded original EXP bodies with exact BigInteger account updates."""
from pathlib import Path
import argparse,copy,json,random
from experience_vm import Program,ExperienceVM,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out);src=Path(a.source)
P=Program(src,[root/'research/experience',root/'research/experience-deps',root/'research/exp-scroll',root.parent/'logic-step7/research/reward-db',root.parent/'logic-step7/research/probability'])
ranges=[(0x4f1766c,0x4f18110),(0x4f18274,0x4f18554),(0x4d82bd0,0x4d82d34),(0x4d4da60,0x4d4dba4),(0x4d18120,0x4d18198)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
levels=json.loads((src/'table-json/UserLevelBaseData.json').read_text());table={str(r['Level']):r['Exp'] for r in levels};max_rows=json.loads((src/'table-json/UpdateMaxValueBaseData.json').read_text());max_level=next(r['Value'] for r in max_rows if r['UpdateMaxValueType']==5)
base={'currentExp':'0','totalExp':'0','level':0,'maxExp':table['0'],'userMaxLevel':max_level,'expTable':{},'amount':'10','expAdd':'100','scroll':{'present':False,'type':0},'hotTime':{'hot':False,'super':False,'hyper':False},'adExpBuffLimitTime':0,'eventBuffActive':False,'eventBuffExp':100,'spiritExpChance':0,'draws':[0],'gameMode':0}
fixtures=[];rng=random.Random(705_9)
def prepare(f):
 level=f['level']
 for n in range(max(0,level),min(5001,level+40)):f['expTable'][str(n)]=table[str(n)]
 return f
for case in range(128):
 f=copy.deepcopy(base);f['level']=rng.choice([0,1,19,20,149,150,199,200,219,220,244,245,249,250,264,265,279,280,399,400,499,500,3998,3999,4000,4999,5000]);f['maxExp']=table[str(f['level'])];f['currentExp']=str(int(f['maxExp'])*rng.choice([0,1,2,5,20])+rng.choice([-1,0,1]));f['totalExp']=str(rng.choice([0,1,-1,10**50,-10**50]));f['amount']=str(rng.choice([0,1,-1,49,10**50,-10**50]));f['expAdd']=rng.choice(['0','100','100.123456','-1','nan','inf','-inf']);f['scroll']={'present':case%2==0,'type':rng.choice([-1,0,1,2,3])};f['hotTime']={'hot':case%3==0,'super':case%4==0,'hyper':case%5==0};f['adExpBuffLimitTime']=rng.choice([-1,0,1,100]);f['eventBuffActive']=case%2==0;f['eventBuffExp']=rng.choice([-2147483648,-1,0,100,125,2147483647]);f['spiritExpChance']=rng.choice([0,-1,.5,10,100,'nan','inf','-inf']);f['draws']=[rng.choice([0,.5,10,99.999,100])];f['gameMode']=rng.choice([0,2,6,19,20]);fixtures.append(prepare(f))
# Explicit source thresholds and threshold-1/threshold/threshold+1 fixtures,
# including all-true flags (first hot-time flag wins), plus configured cap.
for level in [0,19,149,199,219,244,249,264,279,399,499,3998,3999,4000,4999,5000]:
 for delta in [-1,0,1]:
  f=copy.deepcopy(base);f.update(level=level,maxExp=table[str(level)],currentExp=str(int(table[str(level)])+delta));f['hotTime']={'hot':True,'super':True,'hyper':True};f['scroll']={'present':True,'type':2};f['spiritExpChance']=10;f['draws']=[10];f['gameMode']=6;fixtures.append(prepare(f))
entries=[('applyExpScroll',0x4d82bd0),('addExpBuffs',0x4f1766c),('receiveExp_full',0x4f179d8),('receiveExp_withoutSpirit',0x4f17d8c),('receiveExp_noBuff',0x4f17ee8),('getUserMaxLevel',0x4f1802c),('checkExpAndGetUserLevel',0x4f18274)]
vectors=[];steps=0;visited=set()
for case,f in enumerate(fixtures):
 for method,entry in entries:
  v=ExperienceVM(P,f);ptr=v.this
  if method=='applyExpScroll':
   ptr=v.scroll;arg=v.alloc(16);v.pair('x8','x9',int(f['amount']));v.write(arg,8,v.reg('x8'));v.write(arg+8,8,v.reg('x9'));v.put('x1',arg)
  elif method not in ['getUserMaxLevel','checkExpAndGetUserLevel']:v.pair('x1','x2',int(f['amount']))
  steps+=v.run(entry,this_ptr=ptr);visited.update(v.visited)
  result={'state':v.state(),'effects':v.effects,'rngDraws':v.draws}
  if method=='applyExpScroll':result['value']=str(v.read(arg,8).value)
  elif method=='addExpBuffs':result['value']=str(v.big('x0','x1'))
  elif method in ['getUserMaxLevel','checkExpAndGetUserLevel']:result['value']=signed(v.reg('w0'),32)
  vectors.append({'case':case,'method':method,'fixture':f,'expected':result})
report={'cases':len(vectors),'snapshots':len(fixtures),'entries':len(entries),'instruction_steps':steps,'distinct_instructions':len(visited),'original_level_table_rows':len(levels),'configured_user_max_level':max_level,'scope':'Seven EXP/scroll/prediction entry bodies plus Exp_Cal and Probability bodies. Explicit decrypted wrappers, ExpAdd/spirit/event getters, original table lookups, initialized managers, RNG results, UI/log/Cave sinks. No full account, Unity/IFix/server or level-up application parity.'}
(root/'experience-native-vectors.json').write_text(json.dumps(vectors,indent=2,allow_nan=False)+'\n');(root/'experience-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
