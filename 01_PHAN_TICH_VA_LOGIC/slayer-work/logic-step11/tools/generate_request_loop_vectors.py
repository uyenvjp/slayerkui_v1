#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,json
from request_loop_vm import RequestLoopVM
from api_control_vm import Program
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/request-loop',root/'research/api-control']);P.instructions={pc:op for pc,op in P.instructions.items() if 0x4819ffc<=pc<0x481b510 or 0x50c1140<=pc<0x50c18bc}
def item(n,case):return {'id':f'req-{n}','api':[13,36,115][n%3],'direct':(case+n)%2==0,'packetPresent':True,'delegatePresent':True,'responsePresent':True,'packetSequence':'-99','responseSequence':str([-9223372036854775808,-1,0,1,9223372036854775807][(case+n)%5]),'pending':(case+n)%3==0,'code':[0,1,2,4,13,17,22][(case+n)%7]}
base={'state':{'processingRaw':False,'retryCount':5,'failCount':2,'currentSequence':'9','kickOut':False,'queueCount':0,'lastRequestTimes':{}},'nowTicks':'638000000000000000','code':1,'alarmPresent':True,'authPresent':True,'logBuilderPresent':True,'items':[],'token':17,'zeroCompletedSource':False}
sequences=[];contracts=[];steps=0;visited=set()
for case in range(96):
 f=copy.deepcopy(base);f['items']=[item(n,case) for n in range(case%7)];f['zeroCompletedSource']=case%2==0;f['token']=[0,17,65535][case%3];f['state']['kickOut']=case%11==0;f['state']['currentSequence']=str([-9223372036854775808,-1,0,1,9223372036854775807][case%5]);v=RequestLoopVM(P,f);frames=[]
 def action(a):frames.append({'action':a,'expected':v.action(a)})
 action({'type':'start'})
 for _ in range(12):
  state=v.snapshot()['machine']['state']
  if state!=1:break
  if case%5==0:action({'type':'kick','value':True})
  action({'type':'complete'})
 else:raise AssertionError('Pending requests failed to drain')
 if v.snapshot()['machine']['state']==0:
  action({'type':'frame'})
  if case%4==0:
   action({'type':'enqueue','item':item(100,case)})
   action({'type':'frame'})
   if v.snapshot()['machine']['state']==1:action({'type':'complete'})
 steps+=v.steps;visited.update(v.visited);sequences.append({'fixture':f,'frames':frames})
for name,change in [('missing-alarm',{'alarmPresent':False}),('missing-log-builder',{'logBuilderPresent':False}),('missing-packet',{}),('missing-delegate',{}),('null-response',{})]:
 f=copy.deepcopy(base);f['items']=[item(0,1)];f.update(change)
 if name=='missing-packet':f['items'][0]['packetPresent']=False
 if name=='missing-delegate':f['items'][0]['delegatePresent']=False
 if name=='null-response':f['items'][0]['responsePresent']=False
 v=RequestLoopVM(P,f);expected=v.action({'type':'start'});assert 'error' in expected
 contracts.append({'name':name,'fixture':f,'expected':expected});steps+=v.steps;visited.update(v.visited)
report={'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'contract_cases':len(contracts),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'RequestLoop.MoveNext normal, immediate and pending response/empty-frame branches, sequence assignment, dequeue, counter reset, release deploy=2, code-17 diagnostic and KickOut before dispatch; selected original API setters linked. Queue/task/interface/RPC/UI/diagnostics are explicit fixtures. No SEH/RpcException/retry branches, transport serialization, complete callbacks or Android/UniTask scheduler parity.'}
(root/'request-loop-native-vectors.json').write_text(json.dumps({'sequences':sequences,'contracts':contracts},indent=2)+'\n');(root/'request-loop-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
