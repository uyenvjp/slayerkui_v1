#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,json,random
from equipment_vm import Program,VM
from currency_vm import CurrencySupport
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,root/'research/currency-data');ranges=[(0x501b524,0x501b6c0),(0x501bcd4,0x501be74)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
class MutationVM(CurrencySupport,VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False});self.events=[];self.init_currency(f['record'],f['eventPresent'])
 def currency_event(self):self.events.append(self.currency_state())
 def hook(self,t):
  if not self.currency_hook(t):super().hook(t)
rng=random.Random(705_83);vectors=[];steps=0;visited=set()
for case in range(96):
 f={'record':{'currency':6,**{key:str(rng.choice([0,1,-1,100,10**18,-10**18,9223372036854775807,-9223372036854775808])) for key in ['amount','totalGet','totalUsed']}},'amount':str(rng.choice([0,1,-1,100,10**18,-10**18,9223372036854775807,-9223372036854775808])),'eventPresent':case%2==0}
 for kind,entry in [('gain',0x501b524),('use',0x501b5f4),('staticGain',0x501bcd4),('staticUse',0x501bda4)]:
  v=MutationVM(P,f);v.put('x1',int(f['amount']));steps+=v.run(entry,this_ptr=6 if kind.startswith('static') else v.currency);visited.update(v.visited)
  vectors.append({'case':case,'method':kind,'fixture':f,'expected':{'record':v.currency_state(),'events':v.events}})
report={'cases':len(vectors),'entries':4,'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'CurrencyData instance/static Gain and Use bodies with exact int64 field updates. Decrypted secure wrappers, dictionary access and delegate invocation modeled explicitly; callback snapshot verifies post-update order. No server/Unity parity.'}
(root/'currency-mutation-native-vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');(root/'currency-mutation-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
