#!/usr/bin/env python3
"""Five native currency snapshot/validation entries with explicit getter/log hooks."""
from pathlib import Path
import argparse,copy,json,random
from equipment_vm import Program,VM,Wrapped,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/api-validator',root/'research/api-checkvalue'])
ranges=[(0x481fbb4,0x481fcec),(0x481fe88,0x481ffc0),(0x480fd24,0x480fd98),(0x48202bc,0x4820408)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
class CurrencyVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False})
  self.f=f;self.record=self.alloc(64);self.remote=self.currency(f['remote']);self.snapshot=self.currency(f['snapshot']);self.events=[]
  if f['record'] is not None:self.write(self.record+24,4,f['record']['currency'])
  self.labels={p.elf.u64(p.elf.u64(usage)):field for usage,field in [(0xa3f1f10,'amount'),(0xa3f1f18,'totalGet'),(0xa3f1f20,'totalUsed')]}
 def currency(self,record):
  if record is None:return 0
  ptr=self.alloc(64);self.write(ptr+24,4,record['currency'])
  for field,offset in [('amount',32),('totalGet',40),('totalUsed',48)]:self.write(ptr+offset,8,int(record[field]))
  return ptr
 def hook(self,t):
  if t==0x501ba70:self.put('x0',self.record if self.f['record'] is not None else 0)
  elif t==0x4590cfc:
   ptr=self.alloc(64)
   for i in range(0,64,8):self.write(ptr+i,8,0)
   self.put('x0',ptr)
  elif t==0x89a4720:pass
  elif t==0x501b168:
   ptr=self.reg('x8')
   for j in range(0,48,8):self.write(ptr+j,8,0)
   self.write(ptr,8,Wrapped(int(self.f['record']['amount']),'LiappSecureLong'))
  elif t==0x46e204c:self.put('x0',self.read(self.reg('x0'),8).value)
  elif t==0x501b1dc:self.put('x0',int(self.f['record']['totalGet']))
  elif t==0x501b224:self.put('x0',int(self.f['record']['totalUsed']))
  elif t==0x4820408:self.events.append({'name':'PostLog','field':self.labels[self.reg('x0')],'api':signed(self.reg('w1'),32),'currency':signed(self.reg('w2'),32),'expected':str(signed(self.reg('x3'),64)),'actual':str(signed(self.reg('x4'),64))})
  else:super().hook(t)
 def result(self):
  ptr=self.reg('x0')
  if not ptr:return None
  return {'currency':signed(self.read(ptr+24,4),32),**{field:str(signed(self.read(ptr+offset,8),64)) for field,offset in [('amount',32),('totalGet',40),('totalUsed',48)]}}
base={'requestedType':6,'api':36,'record':{'currency':6,'amount':'100','totalGet':'150','totalUsed':'50'},'remote':{'currency':6,'amount':'100','totalGet':'150','totalUsed':'50'},'snapshot':{'currency':6,'amount':'100','totalGet':'150','totalUsed':'50'}}
rng=random.Random(705_82);fixtures=[]
for case in range(96):
 f=copy.deepcopy(base);f['requestedType']=rng.choice([0,1,6,38]);f['record']['currency']=rng.choice([1,6,38]);f['remote']['currency']=rng.choice([1,6,38]);f['api']=rng.choice([0,36,115])
 for field in ['amount','totalGet','totalUsed']:
  value=str(rng.choice([0,1,10**18,-10**18,9223372036854775807,-9223372036854775808]));f['record'][field]=value;f['snapshot'][field]=value;f['remote'][field]=value if rng.randrange(2) else '123'
 fixtures.append(f)
f=copy.deepcopy(base);f['record']=None;fixtures.append(f)
vectors=[];steps=0;visited=set();contracts=[]
for case,f in enumerate(fixtures):
 for method,entry in [('getCurrency',0x481fbb4),('getTotalGetValue',0x481fe88),('getTotalUsedValue',0x481ff24),('checkCurrencySnapshot',0x480fd24),('checkCurrencyValues',0x48202bc)]:
  v=CurrencyVM(P,f)
  if method in ['checkCurrencySnapshot','checkCurrencyValues']:
   v.put('x1',v.remote)
   if method=='checkCurrencySnapshot':v.put('x2',v.snapshot)
   else:
    for reg,field in [('x2','amount'),('x3','totalGet'),('x4','totalUsed')]:v.put(reg,int(f['snapshot'][field]))
  try:steps+=v.run(entry,this_ptr=f['api'] if method.startswith('check') else f['requestedType'])
  except RuntimeError as exc:
   assert method in ['getTotalGetValue','getTotalUsedValue'] and f['record'] is None and 'Native NullReference path' in str(exc);contracts.append({'method':method,'fixture':f,'expectedError':'Native NullReference'});continue
  visited.update(v.visited)
  result=v.events if method.startswith('check') else v.result() if method=='getCurrency' else str(signed(v.reg('x0'),64))
  vectors.append({'case':case,'method':method,'fixture':f,'expected':result})
for remote,snapshot in [(None,base['snapshot']),(base['remote'],None)]:
 f=copy.deepcopy(base);f['remote']=remote;f['snapshot']=snapshot;v=CurrencyVM(P,f);v.put('x1',v.remote);v.put('x2',v.snapshot)
 try:v.run(0x480fd24,this_ptr=36)
 except RuntimeError as exc:assert 'Native NullReference path' in str(exc);contracts.append({'method':'checkCurrencySnapshot','fixture':f,'expectedError':'Native NullReference'})
 else:raise AssertionError('Native null snapshot/response accepted')
report={'cases':len(vectors),'contracts':len(contracts),'entries':5,'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'GetCurrency/GetTotalGetValue/GetTotalUsedValue and two CheckValue overloads used by ItemUpgrade. CurrencyData/decrypted getters, allocations, constructor and PostLog sink explicitly modeled. No real network, full async RPC, PostLog implementation or server parity.'}
(root/'currency-native-flow-vectors.json').write_text(json.dumps({'vectors':vectors,'contracts':contracts},indent=2)+'\n');(root/'currency-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
