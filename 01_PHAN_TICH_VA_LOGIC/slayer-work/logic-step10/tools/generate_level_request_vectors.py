#!/usr/bin/env python3
"""Queue construction/aliasing, without transport or delegate execution."""
from pathlib import Path
import argparse,copy,json
from experience_data_vm import Program,ExpDataVM,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research/exp-db',root/'research/user-exp',root/'research/exp-api',root/'research/request-data'])
ranges=[(0x4d403d0,0x4d40550),(0x89a2a64,0x89a2ae0),(0x89a2ae8,0x89a2b64),(0x50cc2b4,0x50cc424),(0x50c1a44,0x50c1b80),(0x481e4c4,0x481e5d0)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
class QueueVM(ExpDataVM):
 def __init__(self,p,f):
  super().__init__(p,f);self.queue=self.alloc(32);self.queued=[];self.loading_set=self.alloc(32);self.delegates={}
  for name,size in [('APIManager',64),('RequestData',64)]:
   klass=self.alloc(256);static=self.alloc(size);self.classes[name]=klass;self.write(klass+228,4,1);self.write(klass+184,8,static)
   self.write(static+(32 if name=='APIManager' else 0),8,self.queue if name=='APIManager' else self.loading_set)
 def hook(self,t):
  if t==0x4590cfc:
   ptr=self.alloc(256)
   for offset in range(0,256,8):self.write(ptr+offset,8,0)
   self.put('x0',ptr)
  elif t in [0x51bf39c,0x8936f00,0x8ebc228]:pass # declared constructor/lifetime model
  elif t==0x67305f4:self.delegates[self.reg('x0')]=self.reg('x1')
  elif t==0x50c1b80:self.emit('APIManager.AcquireItems')
  elif t==0x67ac460:
   assert self.reg('x0')==self.loading_set and self.reg('w1')==13;self.emit('DirectShowLoadingTargetSet.Contains',13,self.f['directShowLevelUp']);self.put('w0',self.f['directShowLevelUp'])
  elif t==0x7149498:
   assert self.reg('x0')==self.queue;ptr=self.reg('x1');self.queued.append(ptr);q=self.queue_state()[-1];self.emit('Queue.Enqueue',q['api'],q['level'],q['exp'],q['directShow'])
  else:super().hook(t)
 def queue_state(self):
  out=[]
  for ptr in self.queued:
   delegate=self.read(ptr+16,8);closure=self.delegates[delegate];request=self.read(ptr+32,8);assert self.read(closure+16,8)==request
   exp=self.read(request+40,8);out.append({'api':signed(self.read(ptr+24,4),32),'level':signed(self.read(request+24,4),32),'exp':self.user_exp_state(exp),'sameSync':exp==self.sync_object,'directShow':bool(self.read(ptr+28,1))})
  return out
fixtures=[copy.deepcopy(v['fixture']) for v in json.loads((root/'experience-data-native-vectors.json').read_text())['vectors'] if v['method']=='getSyncExp'][:64]
vectors=[];steps=0;visited=set()
def act(v,action,level):
 global steps
 if action=='queueSyncLevelUp':
  v.put('x30',v.RETURN);steps+=v.run(0x4d403d0,this_ptr=v.db);pointer=v.reg('x0');v.put('x1',pointer);v.put('x30',v.RETURN);steps+=v.run(0x50cc2b4,this_ptr=level)
 else:v.put('x1',v.remote_exp);v.put('x30',v.RETURN);steps+=v.run(0x4d4046c,this_ptr=v.db)
 visited.update(v.visited);return {'sync':v.sync_state(),'queue':v.queue_state(),'effects':v.effects}
for case,f in enumerate(fixtures):
 f['level']=[0,1,20,265,4000,2147483647,-2147483648][case%7];f['directShowLevelUp']=case%2==0;v=QueueVM(P,f)
 vectors.append({'case':case,'fixture':f,'expected':act(v,'queueSyncLevelUp',f['level'])})
sequences=[]
for f in fixtures[:3]:
 v=QueueVM(P,f);frames=[]
 for action,level in [('queueSyncLevelUp',f['level']),('expSync',f['level']),('queueSyncLevelUp',f['level']+1)]:
  v.effects=[];frames.append({'action':action,'level':level,'expected':act(v,action,level)})
 sequences.append({'fixture':f,'frames':frames})
report={'cases':len(vectors),'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Original GetSyncExp/UserExp setters -> APIManager.LevelUp -> AddRequest -> RequestData.Create selected api13 path. Cached UserExp identity/queued payload/delegate reference and effects checked. Allocation/constructors, delegate construction, loading HashSet, AcquireItems sink and queue storage explicitly modeled; no queue processing/serialization/transport/async response or full acquisition parity.'}
(root/'level-request-native-vectors.json').write_text(json.dumps({'vectors':vectors,'sequences':sequences},indent=2)+'\n');(root/'level-request-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
