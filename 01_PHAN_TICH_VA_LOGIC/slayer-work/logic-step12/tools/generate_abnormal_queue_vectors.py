#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,itertools,json,struct
from abnormal_queue_vm import Program,AbnormalQueueVM
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'research'/x for x in ['abnormal-schedule','abnormal-execute','abnormal-iterator','abnormal-ctor']]);P.instructions={pc:op for pc,op in P.instructions.items() if 0x50b7248<=pc<0x50b7460 or 0x50beb38<=pc<0x50becdc}
threshold=struct.unpack('<f',P.elf.bytes(0x1f29834,4))[0]
base={'queue':[],'critical':0,'superCritical':0,'active':True,'dead':False,'handlePresent':False,'iterator':{'state':0,'wait':'0'},'delta':'0.016666666666666666'}
vectors=[];sequences=[];steps=0;visited=set()
def act(v,item):
 global steps
 out=v.action(item);steps+=out.pop('steps',0);visited.update(v.visited);return out
for crit,supercrit,handle,active in itertools.product([0,1,2,3],[0,1,2,3],[False,True],[False,True]):
 f=copy.deepcopy(base);f.update(critical=crit,superCritical=supercrit,handlePresent=handle,active=active);v=AbnormalQueueVM(P,f);vectors.append({'action':{'type':'schedule'},'fixture':f,'expected':act(v,{'type':'schedule'})})
for state,wait,queue,dead,active in itertools.product([0,1,-1],['0',str(threshold-0.000001),str(threshold),str(threshold+0.000001),'nan'],[[],[1],[1,256,257]],[False,True],[False,True]):
 f=copy.deepcopy(base);f.update(queue=queue,dead=dead,active=active,handlePresent=True);f['iterator'].update(state=state,wait=wait);v=AbnormalQueueVM(P,f);vectors.append({'action':{'type':'tick'},'fixture':f,'expected':act(v,{'type':'tick'})})
for stop in ['none','dead','inactive']:
 f=copy.deepcopy(base);f.update(critical=1,superCritical=1,delta=str(threshold/2));v=AbnormalQueueVM(P,f);frames=[]
 for a in [{'type':'schedule'},{'type':'schedule'},{'type':'tick'},{'type':'tick'}]+([{'type':'set','values':{'dead':True}}] if stop=='dead' else [{'type':'set','values':{'active':False}}] if stop=='inactive' else [])+[{'type':'tick'}]*5:
  frames.append({'action':a,'expected':act(v,a)})
 sequences.append({'fixture':f,'frames':frames})
report={'cases':len(vectors),'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'wait_threshold':threshold,'wait_threshold_bits':struct.pack('<f',threshold).hex(),'scope':'Original ScheduleAbnormalAddDamage, iterator factory/constructor and ProcessDelayedAbnormalDamage.MoveNext. Critical/superCritical getters, queue/Unity active/StartCoroutine/GameDeltaTime and ExecuteAbnormalAddDamage sink explicit. Tick calls are a fixture scheduler; no claim of full executor/battle/Unity timing or GetDmg-to-scheduler end-to-end parity.'}
(root/'abnormal-queue-native-vectors.json').write_text(json.dumps({'vectors':vectors,'sequences':sequences},indent=2)+'\n');(root/'abnormal-queue-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
