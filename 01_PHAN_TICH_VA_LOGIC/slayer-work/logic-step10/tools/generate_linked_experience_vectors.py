#!/usr/bin/env python3
"""Replace the earlier ExpAdd dependency with its original instruction body."""
from pathlib import Path
import argparse,copy,json,sys
from experience_data_vm import Program,ExpDataSupport,float_key
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step9/tools'))
from experience_vm import ExperienceVM
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/exp-db',root.parent/'logic-step9/research/experience',root.parent/'logic-step9/research/experience-deps',root.parent/'logic-step9/research/exp-scroll',root.parent/'logic-step7/research/reward-db',root.parent/'logic-step7/research/probability'])
ranges=[(0x4d4d664,0x4d4d9c8),(0x4d4da60,0x4d4dba4),(0x4f1766c,0x4f1802c),(0x4d82bd0,0x4d82d34),(0x4d18120,0x4d18198)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
class LinkedExpVM(ExpDataSupport,ExperienceVM):
 def __init__(self,p,f):super().__init__(p,f);self.init_exp_fields(f['db']);self.init_exp_sync(f)
 def hook(self,t):
  if not self.exp_data_hook(t):super().hook(t)
db_rows=[v['fixture']['db'] for v in json.loads((root/'experience-data-native-vectors.json').read_text())['vectors'] if v['method']=='calculateExpAdd']
old=json.loads((root.parent/'logic-step9/experience-native-vectors.json').read_text());fixtures=[copy.deepcopy(v['fixture']) for v in old if v['method']=='receiveExp_full']
vectors=[];steps=0;visited=set()
for case,f in enumerate(fixtures):
 f['db']=copy.deepcopy(db_rows[case%len(db_rows)]);f.pop('expAdd');f['syncExp']={'value':'previous','totalValue':'previous-total'};f['remote']={'value':'0','totalValue':'0'}
 if case%4==0:
  f['db']={k:[] if isinstance(v,list) else 0 for k,v in f['db'].items()};f['db']['PlayerOption_ExpAdd']=[0,33,100][case%3]
 for method,entry in [('addExpBuffs',0x4f1766c),('receiveExp_full',0x4f179d8),('receiveExp_withoutSpirit',0x4f17d8c),('receiveExp_noBuff',0x4f17ee8)]:
  v=LinkedExpVM(P,f);v.pair('x1','x2',int(f['amount']));steps+=v.run(entry,this_ptr=v.this);visited.update(v.visited)
  result={'state':v.state(),'expAdd':float_key(v.read(v.db+3264,8).value),'effects':v.effects,'rngDraws':v.draws}
  if method=='addExpBuffs':result['value']=str(v.big('x0','x1'))
  vectors.append({'case':case,'method':method,'fixture':f,'expected':result})
report={'cases':len(vectors),'snapshots':len(fixtures),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Stronger linked recheck of the three receive-EXP paths and AddBuffs, now using original DatabaseManager.get_ExpAdd and original Exp_Cal/scroll/Probability bodies. Previous scalar ExpAdd hook removed; raw source fields required. Same explicit manager/wrapper/spirit/event/RNG/UI/log/Cave dependencies as step9 remain. No Unity/full account/backend parity.'}
(root/'linked-experience-native-vectors.json').write_text(json.dumps(vectors,indent=2,allow_nan=False)+'\n');(root/'linked-experience-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
