#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,json,random
from experience_data_vm import Program,ExpDataVM,FIELDS,float_key,number,f32
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/exp-db',root/'research/user-exp']);ranges=[(0x4d4d664,0x4d4da60),(0x4d58948,0x4d589cc),(0x4d403d0,0x4d40550),(0x89a2a64,0x89a2ae0),(0x89a2ae8,0x89a2b64)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
base={'db':{**{k:0 for k,_,_ in FIELDS},'expAdd':0,'Spirit_ExpAdd':0,'SpiritAbility_ExpAdd':[]},'currentExp':'100','totalExp':'500','syncExp':{'value':'old','totalValue':'old-total'},'remote':{'value':'1000','totalValue':'5000'},'setExpAdd':1}
rng=random.Random(705_10);fixtures=[]
for case in range(160):
 f=copy.deepcopy(base)
 for key,_,kind in FIELDS:f['db'][key]=rng.choice([0,-1,1,.1,1/3,1e18,-1e18,1e40,-1e40,'nan','inf','-inf']) if kind=='SilentFloat' else rng.choice([-2147483648,-100,-1,0,1,33,100,2147483647])
 f['db']['Spirit_ExpAdd']=rng.choice([0,-1,1e-300,1/3,100,1e300,'nan','inf','-inf']);f['db']['SpiritAbility_ExpAdd']=rng.choice([[],[0],[-0.0],[1e16,1,-1e16],[1e16,-1e16,1],['nan',1],['inf','-inf'],[1/3]*5]);f['setExpAdd']=rng.choice([0,-0.0,.1,1/3,1e40,'nan','inf','-inf']);f['currentExp']=str(rng.choice([0,1,-1,10**80,-10**80]));f['totalExp']=str(rng.choice([0,1,-1,10**100,-10**100]));f['remote']={'value':rng.choice(['0','+1','-1','  123  ',str(10**100),str(-10**80)]),'totalValue':rng.choice(['0','+0','-0','\t999\n',str(10**100),str(-10**80)])};fixtures.append(f)
# Isolate each component and spirit branch, including float32 roundoff and
# int32 overflow. No fixture is treated as a recovered fresh account.
for key,_,kind in FIELDS:
 for value in [1,2147483647]:f=copy.deepcopy(base);f['db'][key]=value;fixtures.append(f)
entries=[('calculateExpAdd',0x4d4d664),('setExpAdd',0x4d4d9c8),('spiritExpAddCal',0x4d58948),('getSyncExp',0x4d403d0),('expSync',0x4d4046c)]
vectors=[];steps=0;visited=set()
def run(f,method,entry):
 global steps
 v=ExpDataVM(P,f);out=v.alloc(72);v.put('x8',out)
 if method=='setExpAdd':v.exp_wrap(out,72,f32(number(f['setExpAdd'])),'SilentFloat');v.put('x1',out)
 if method=='expSync':v.put('x1',v.remote_exp)
 error=None
 try:steps+=v.run(entry,this_ptr=v.db)
 except RuntimeError as exc:
  message=str(exc)
  for part in ['Native NullReference','Native Parse ArgumentNull fixture','Native Parse FormatException fixture']:
   if part in message:error=part;break
  else:raise
 visited.update(v.visited)
 result={'expAdd':float_key(v.read(v.db+3264,8).value),'sync':v.sync_state(),'effects':v.effects}
 if error:result['error']=error
 elif method=='calculateExpAdd':result['value']=float_key(v.read(out,8).value)
 elif method=='spiritExpAddCal':result['value']=float_key(v.fp('d0'),'d')
 elif method=='getSyncExp':result['sameObject']=v.reg('x0')==v.sync_object
 return result
for case,f in enumerate(fixtures):
 for method,entry in entries:vectors.append({'case':case,'method':method,'fixture':f,'expected':run(f,method,entry)})
contracts=[]
for method,entry,mutation in [('spiritExpAddCal',0x4d58948,{'db':{**base['db'],'SpiritAbility_ExpAdd':None}}),('getSyncExp',0x4d403d0,{'syncExp':None}),('expSync',0x4d4046c,{'remote':None}),('expSync',0x4d4046c,{'remote':{'value':'bad','totalValue':'500'}}),('expSync',0x4d4046c,{'remote':{'value':'200','totalValue':'bad'}}),('expSync',0x4d4046c,{'remote':{'value':None,'totalValue':'500'}}),('expSync',0x4d4046c,{'remote':{'value':'200','totalValue':None}})]:
 f=copy.deepcopy(base);f.update(mutation);result=run(f,method,entry);assert result.get('error');contracts.append({'method':method,'fixture':f,'expected':result})
report={'cases':len(vectors),'snapshots':len(fixtures),'entries':len(entries),'contracts':len(contracts),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Five DatabaseManager EXP aggregation/setter/spirit-array/sync entry bodies and original UserExp string setters. Decrypted wrappers, initialized metadata, string conversion, generic non-null check and bounded decimal Parse dependency modeled. Finite numeric bits and intermediate cache writes compared; NaNs compared by class, not payload. No full account/Unity/IFix/backend/culture-complete parser parity.'}
(root/'experience-data-native-vectors.json').write_text(json.dumps({'vectors':vectors,'contracts':contracts},indent=2,allow_nan=False)+'\n');(root/'experience-data-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
