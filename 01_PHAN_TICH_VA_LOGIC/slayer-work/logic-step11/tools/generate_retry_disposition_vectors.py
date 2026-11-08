#!/usr/bin/env python3
"""Validate a native continuation fragment, not a full exception/RPC loop."""
from pathlib import Path
import argparse,copy,itertools,json
from request_loop_vm import RequestLoopVM
from api_control_vm import Program
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research'/x for x in ['request-loop','api-control','request-code','retry-helpers']]);P.instructions={pc:op for pc,op in P.instructions.items() if 0x4819ffc<=pc<0x481b510 or 0x50c1140<=pc<0x50c18bc or 0x5428284<=pc<0x54285fc or 0x4824160<=pc<0x4824268}
item={'id':'retry-head','api':13,'direct':False,'packetPresent':True,'delegatePresent':True,'responsePresent':True,'packetSequence':'-99','responseSequence':'10','pending':False,'code':1}
base={'state':{'processingRaw':True,'retryCount':0,'failCount':0,'currentSequence':'9','kickOut':False,'queueCount':1,'lastRequestTimes':{}},'nowTicks':'638000000000000000','code':17,'alarmPresent':True,'authPresent':True,'logBuilderPresent':True,'items':[item],'token':17,'zeroCompletedSource':False,'delayPending':False}
sequences=[];steps=0;visited=set()
for retry,fail,pending,zero in itertools.product([-2147483648,-1,0,5,6,7,2147483647],[-1,0,2,3,2147483647],[False,True],[False,True]):
 f=copy.deepcopy(base);f['state'].update(retryCount=retry,failCount=fail);f.update(delayPending=pending,zeroCompletedSource=zero,code=17 if fail<3 else 4);v=RequestLoopVM(P,f);frames=[]
 a={'type':'retryDisposition'};result=v.action(a);frames.append({'action':a,'expected':result})
 if v.snapshot()['machine']['state']==2:
  a={'type':'delay'};frames.append({'action':a,'expected':v.action(a)})
 steps+=v.steps;visited.update(v.visited);sequences.append({'fixture':f,'frames':frames})
report={'continuation_fragment_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'fragment_entry':'0x481ad28','scope':'Post-diagnostic retry-disposition fragment with explicit reconstructed live register/stack context: retry/fail thresholds, original shared counter helpers, Delay/pending resume, IsValidCode and normal queue continuation linked. Does not validate entry into catch, exception classification, unwinding, actual gRPC failure, Grpc.Status formatting or live transport/scheduler.'}
(root/'retry-disposition-native-vectors.json').write_text(json.dumps({'sequences':sequences},indent=2)+'\n');(root/'retry-disposition-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
