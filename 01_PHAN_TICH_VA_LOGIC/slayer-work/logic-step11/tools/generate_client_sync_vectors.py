#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,itertools,json
from client_sync_vm import ClientSyncVM
from prefs_vm import Program
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out);keys=json.loads((root/'prefs-keys.json').read_text())['values']
dirs=[root/'research'/x for x in ['server-prefs','prefs-value','prefs-sync','prefs-sync-callback','signal-base','signal-waiter','signal-unitask','set-client-data','set-client-packet','set-client-closure','set-client-response','request-code']]+[root.parent/'logic-step10/research'/x for x in ['exp-api','request-data']]
P=Program(a.source,dirs)
P.instructions={pc:op for pc,op in P.instructions.items() if not (0x474600c<=pc<0x47460ec or 0x51ce414<=pc<0x51ce4fc or 0x894ef2c<=pc<0x894ef80 or 0x50c1b80<=pc<0x50c2808 or 0x50cc2b4<=pc<0x50cc424)}
base={'store':{'a':{'value':'before','dirty':True}},'target':{'value':'unused','dirty':False},'accountPresent':False,'clientDataPresent':False,'json':'fixture-snapshot-json','codes':[1,1,1],'pending':[True,True,True],'token':17,'zeroCompletedSource':False,'rpcPending':False,'code':1,'directShow':False}
sequences=[];steps=0;visited=set()
for code,pending,variant in itertools.product([-2,0,1,2,3,4,12,13,14,15,16,17,20,22,24,-2147483648,2147483647],[False,True],range(3)):
 f=copy.deepcopy(base);f.update(code=code,rpcPending=pending,directShow=variant==1);f['zeroCompletedSource']=variant==2;v=ClientSyncVM(P,f,keys);frames=[]
 def action(a):frames.append({'action':a,'expected':v.action(a)})
 action({'type':'start'});action({'type':'dispatch'})
 if variant==2:action({'type':'edit','key':'after-capture','text':'new'})
 if pending:action({'type':'rpcComplete'})
 action({'type':'frame'})
 if code!=1:
  action({'type':'frame'});assert v.snapshot()['machine']['state']==0 and v.requests==1
 else:assert v.snapshot()['machine']['state']==-2
 steps+=v.steps;visited.update(v.visited);sequences.append({'fixture':f,'frames':frames})
report={'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Stronger linked ServerPrefs sync -> APIManager.SetClientData/api255 -> packet ctor/set_Content -> AddRequest/Create -> SetClientData response MoveNext/IsValidCode -> native callback/signal/wait/reset. Queue dispatch, Task/async builders, network singleton/front client, RPC responses/headers, UI, string precondition/serialization and unpatched IFix explicit. Queue processing/sequencing is separately tested, not linked into this corpus. No RPC/SEH/live scheduler/backend parity.'}
(root/'client-sync-native-vectors.json').write_text(json.dumps({'sequences':sequences},indent=2)+'\n');(root/'client-sync-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
