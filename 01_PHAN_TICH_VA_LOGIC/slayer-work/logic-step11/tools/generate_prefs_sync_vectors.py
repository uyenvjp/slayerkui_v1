#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,itertools,json
from prefs_sync_vm import PrefsSyncVM,SYNC,CALLBACK,WAIT
from prefs_vm import Program

p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
keys=json.loads((root/'prefs-keys.json').read_text())['values']
P=Program(a.source,[root/'research'/x for x in ['server-prefs','prefs-value','prefs-sync','prefs-sync-callback','signal-base','signal-waiter','signal-unitask']])
# Native wrapper (UniTaskWait) is a modeled builder boundary; MoveNext is linked.
P.instructions={pc:op for pc,op in P.instructions.items() if not 0x474600c<=pc<0x47460ec}
base={'store':{'a':{'value':'old','dirty':True},'b':{'value':'same','dirty':False}},'target':{'value':'unused','dirty':False},'accountPresent':False,'clientDataPresent':False,'json':'fixture-json-captured-before-wait','codes':[1,1,1],'pending':[False,False,False],'token':17,'zeroCompletedSource':False}
sequences=[];steps=0;visited=set()
plans=[[1,9,9],[2,1,9],[2,3,1],[2,3,4]]
for codes,pending,variant,zero in itertools.product(plans,itertools.product([False,True],repeat=3),range(3),[False,True]):
 f=copy.deepcopy(base);f.update(codes=codes,pending=list(pending),zeroCompletedSource=zero,token=[0,17,65535][variant])
 if variant==1:f['store']={}
 elif variant==2:f['store']['a']['dirty']=False
 v=PrefsSyncVM(P,f,keys);frames=[]
 def action(item):frames.append({'action':item,'expected':v.action(item)})
 action({'type':'start'})
 for _ in range(12):
  state=v.snapshot()
  if state['machine']['state']==-2:break
  if v.pending is not None:
   if variant==2:
    action({'type':'edit','key':'during-wait','text':str(v.requests)})
    action({'type':'frame'}) # no callback yet; source must still suspend
   action({'type':'deliver','code':codes[v.requests-1]})
  action({'type':'frame'})
 else:raise AssertionError('Scenario did not finish')
 assert v.snapshot()['machine']['state']==-2
 steps+=v.steps;visited.update(v.visited);sequences.append({'fixture':f,'frames':frames})
# Direct callback/Signal/ResetSignal entries include failure's preceding write.
contracts=[]
for response,waiter,code in [(True,True,1),(True,True,2),(True,False,1),(False,True,1)]:
 f=copy.deepcopy(base);v=PrefsSyncVM(P,f,keys);closure=v.zero(32);signal=v.zero(24) if waiter else 0;v.write(closure+24,8,signal);packet=v.zero(48) if response else 0
 if packet:v.write(packet+32,4,code)
 error=None
 try:v.invoke(CALLBACK,closure,packet)
 except RuntimeError as exc:
  if 'Native NullReference' not in str(exc):raise
  error='Native NullReference'
 contracts.append({'responsePresent':response,'waiterPresent':waiter,'code':code,'expected':{'success':bool(v.read(closure+16,1)),'signal':None if not signal else bool(v.read(signal+16,1)),**({'error':error} if error else {})}})
 visited.update(v.visited);steps+=v.steps
signals=[]
for initial in [False,True]:
 for name,entry in [('signal',0x4745d14),('reset',0x4745d60)]:
  v=PrefsSyncVM(P,copy.deepcopy(base),keys);ptr=v.zero(24);v.write(ptr+16,1,initial);v.invoke(entry,ptr);signals.append({'initial':initial,'method':name,'expected':bool(v.read(ptr+16,1))});steps+=v.steps;visited.update(v.visited)
report={'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'callback_contracts':len(contracts),'signal_cases':len(signals),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Original RequestServerSync.MoveNext + callback + WaitForSignal Signal/Reset + AwaitForSignal.UniTaskWait.MoveNext + ResetAllDirtyFlag and SetString bodies linked. Explicit UniTask wrapper/builder/interface dispatch, frame scheduler, allocations, RPC-response fixtures and unpatched IFix. No game/RPC execution, exceptions/unwind or live scheduler parity.'}
(root/'prefs-sync-native-vectors.json').write_text(json.dumps({'sequences':sequences,'contracts':contracts,'signals':signals},indent=2)+'\n');(root/'prefs-sync-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
