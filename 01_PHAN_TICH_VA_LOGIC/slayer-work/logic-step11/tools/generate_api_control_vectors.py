#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,json,random
from api_control_vm import Program,APIControlVM,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/api-control',root/'research/request-code']);ranges=[(0x50c1140,0x50c18bc),(0x5428284,0x54285fc)];P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
base={'state':{'processingRaw':False,'retryCount':0,'failCount':0,'currentSequence':'0','kickOut':False,'queueCount':0,'lastRequestTimes':{}},'nowTicks':'638000000000000000','api':13,'seconds':1,'value':'1','code':1,'alarmPresent':True,'authPresent':True}
rng=random.Random(705_112);fixtures=[]
for case in range(96):
 f=copy.deepcopy(base);f['state'].update(processingRaw=case%2==0,retryCount=rng.choice([-2147483648,-1,0,1,6,2147483647]),failCount=rng.choice([-1,0,1,4]),currentSequence=str(rng.choice([-9223372036854775808,-1,0,1,9223372036854775807])),kickOut=case%3==0,queueCount=rng.choice([-1,0,1,6]));f['api']=rng.choice([-1,0,13,36,115]);f['seconds']=rng.choice([-2147483648,-1,0,1,2,2147483647]);f['value']=str(rng.choice([-9223372036854775808,-1,0,1,2,3,2147483647,9223372036854775807]));f['code']=(list(range(-2,25))+[-2147483648,2147483647])[case%29]
 if case%4:f['state']['lastRequestTimes'][str(f['api'])]=str(int(f['nowTicks'])-f['seconds']*10000000+rng.choice([-1,0,1]))
 fixtures.append(f)
entries=[('getProcessing',0x50c1140),('setProcessing',0x50c1248),('get_RetryCount',0x50c12e0),('set_RetryCount',0x50c1338),('get_FailCount',0x50c1394),('set_FailCount',0x50c13ec),('get_CurrentSequence',0x50c1448),('set_CurrentSequence',0x50c14a0),('get_KickOut',0x50c14fc),('set_KickOut',0x50c1554),('setLastRequestTime',0x50c15b4),('removeLastRequestTime',0x50c16a4),('canRequest',0x50c1758),('isValidCode',0x5428284)]
vectors=[];steps=0;visited=set()
def run(f,name,entry,v=None):
 global steps
 v=v or APIControlVM(P,f);v.put('x30',v.RETURN);arg=f['api'] if name.endswith('RequestTime') or name=='canRequest' else f['code'] if name=='isValidCode' else int(f['value']);v.put('w1',f['seconds']);error=None
 try:steps+=v.run(entry,this_ptr=arg)
 except RuntimeError as exc:
  if 'Native NullReference' not in str(exc):raise
  error='Native NullReference'
 visited.update(v.visited);out={'state':v.state(),'effects':v.effects}
 if error:out['error']=error
 elif name=='get_CurrentSequence':out['value']=str(signed(v.reg('x0'),64))
 elif name in ['get_RetryCount','get_FailCount']:out['value']=signed(v.reg('w0'),32)
 elif name in ['getProcessing','get_KickOut','canRequest','isValidCode']:out['value']=bool(v.reg('w0'))
 return v,out
for case,f in enumerate(fixtures):
 for name,entry in entries:
  _,result=run(f,name,entry);vectors.append({'case':case,'method':name,'fixture':f,'expected':result})
contracts=[]
for name,changes in [('getProcessing',{'state':{**base['state'],'queueCount':None}}),('getProcessing',{'state':{**base['state'],'processingRaw':True,'queueCount':None}}),('setLastRequestTime',{'state':{**base['state'],'lastRequestTimes':None}}),('removeLastRequestTime',{'state':{**base['state'],'lastRequestTimes':None}}),('canRequest',{'state':{**base['state'],'lastRequestTimes':None}}),('isValidCode',{'code':3,'alarmPresent':False}),('isValidCode',{'code':22,'authPresent':False}),('isValidCode',{'code':1,'alarmPresent':False,'authPresent':False}),('isValidCode',{'code':0,'alarmPresent':False,'authPresent':False})]:
 f=copy.deepcopy(base);f.update(changes);_,result=run(f,name,dict(entries)[name]);contracts.append({'method':name,'fixture':f,'expected':result})
sequences=[]
f=copy.deepcopy(base);v=APIControlVM(P,f);frames=[]
for name,changes in [('canRequest',{}),('setLastRequestTime',{}),('canRequest',{'nowTicks':str(int(base['nowTicks'])+10000000)}),('canRequest',{'nowTicks':str(int(base['nowTicks'])+10000001)}),('removeLastRequestTime',{}),('canRequest',{})]:
 f.update(changes);v.effects=[];_,result=run(f,name,dict(entries)[name],v);frames.append({'action':name,'args':changes,'expected':result})
sequences.append({'fixture':base,'frames':frames})
report={'cases':len(vectors),'snapshots':len(fixtures),'entries':len(entries),'contract_cases':len(contracts),'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'API warm state getters/setters, strict request-time gate and Network.Request.IsValidCode dispatch. UTC DateTimeOffset/BCL/collections/diagnostic strings/stack trace/UI sinks explicit; no calendar overflow/culture/account/transport/retry-loop or full downstream parity.'}
(root/'api-control-native-vectors.json').write_text(json.dumps({'vectors':vectors,'contracts':contracts,'sequences':sequences},indent=2)+'\n');(root/'api-control-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
