"""Original abnormal queue schedule/factory/iterator; executor is a sink."""
from pathlib import Path
import copy,struct,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,signed,f32

class AbnormalQueueVM(VM):
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False});self.f=copy.deepcopy(f);self.items=list(f['queue']);self.effects=[]
  self.enemy=self.zero(1024);self.queue=self.zero(64);self.write(self.enemy+472,8,self.queue);self.write(self.queue+32,4,len(self.items));self.write(self.enemy+514,1,f['dead'])
  self.iterator=self.zero(64);self.write(self.iterator+16,4,f['iterator']['state']);self.write(self.iterator+24,8,0);self.write(self.iterator+32,8,self.enemy);self.set_wait(f['iterator']['wait'])
  self.write(self.enemy+480,8,self.zero(32) if f['handlePresent'] else 0);self.instances['PlayerBase']=self.player;self.instances['GameManager']=self.zero(1600)
 def zero(self,n):
  p=self.alloc(n)
  for off in range(n):self.write(p+off,1,0)
  return p
 def set_wait(self,value):self.write(self.iterator+40,4,int.from_bytes(struct.pack('<f',f32(float(value))),'little'))
 def emit(self,name,*args):self.effects.append({'name':name,'args':list(args)})
 def hook(self,t):
  if t==0x4ef5038:self.put('w0',self.f['critical'])
  elif t==0x4ef50d0:self.put('w0',self.f['superCritical'])
  elif t==0x714ba8c:
   assert self.reg('x0')==self.queue;value=self.reg('x1');self.items.append(value);self.write(self.queue+32,4,len(self.items));self.emit('Queue.Enqueue',bool(value&1),bool((value>>8)&1))
  elif t==0x714bc14:
   assert self.reg('x0')==self.queue;value=self.items.pop(0);self.write(self.queue+32,4,len(self.items));self.emit('Queue.Dequeue',bool(value&1),bool((value>>8)&1));self.put('x0',value)
  elif t==0x714b79c:self.items.clear();self.write(self.queue+32,4,0);self.emit('Queue.Clear')
  elif t==0x9a006b0:self.put('x0',self.enemy)
  elif t==0x9a03d4c:self.put('w0',self.f['active'])
  elif t==0x4590cfc:self.put('x0',self.zero(80))
  elif t==0x8ebc228:pass
  elif t==0x9a05bfc:self.iterator=self.reg('x1');self.emit('StartCoroutine');self.put('x0',self.zero(32))
  elif t==0x4e44954:self.setfp('s0',float(self.f['delta']))
  elif t==0x50b7460:self.emit('ExecuteAbnormalAddDamage',bool(self.reg('w1')),bool(self.reg('w2')))
  else:super().hook(t)
 def action(self,a):
  self.effects=[];value=None
  if a['type']=='schedule':entry=0x50b7248;ptr=self.enemy
  elif a['type']=='tick':entry=0x50beb38;ptr=self.iterator
  elif a['type']=='set':
   self.f.update(a['values']);self.write(self.enemy+514,1,self.f['dead']);return self.snapshot()
  else:raise ValueError(a)
  self.put('x30',self.RETURN);steps=self.run(entry,this_ptr=ptr)
  if a['type']=='tick':value=bool(self.reg('w0'))
  return {**self.snapshot(),**({'yielded':value} if value is not None else {}),'steps':steps}
 def snapshot(self):return {'queue':list(self.items),'handlePresent':bool(self.read(self.enemy+480,8)),'iterator':{'state':signed(self.read(self.iterator+16,4),32),'waitBits':struct.pack('<f',self.floating(self.iterator+40,'s')).hex(),'currentNull':not self.read(self.iterator+24,8)},'effects':self.effects}
