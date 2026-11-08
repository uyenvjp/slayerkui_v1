"""Linked original sync/callback/signal/wait coroutine bodies, modeled scheduler.

No RPC/Android code is run. UniTask wrappers, interface dispatch and frame
completion are explicit fixture dependencies. IFix is the unpatched baseline.
"""
from prefs_vm import PrefsVM,signed

SYNC=0x51f19c0
CALLBACK=0x51f198c
WAIT=0x47460f4
STATUS=0xffff1100
RESULT=0xffff1101

class PrefsSyncVM(PrefsVM):
 def __init__(self,p,f,keys):
  super().__init__(p,f,keys)
  for flag in [0xabce000+n for n in [3445,2740,2741,2742,2744]]:self.write(flag,1,1)
  self.steps=0;self.tasks={};self.waits=[];self.pending=None;self.requests=0;self.last_closure=0
  self.machine=self.zero(96);self.write(self.machine,4,-1);self.write(self.machine+40,8,self.string(f['json']))
 def zero(self,size):
  ptr=self.alloc(size)
  for off in range(size):self.write(ptr+off,1,0)
  return ptr
 def invoke(self,entry,ptr,arg1=None):
  regs,vec,sp=self.x.copy(),self.v.copy(),self.sp
  flags={k:getattr(self,k) for k in ['eq','lt','gt','unordered','negative','carry','overflow'] if hasattr(self,k)}
  try:
   self.put('x30',self.RETURN)
   if arg1 is not None:self.put('x1',arg1)
   self.steps+=self.run(entry,this_ptr=ptr)
  finally:
   self.x,self.v,self.sp=regs,vec,sp
   for k,v in flags.items():setattr(self,k,v)
 def task(self,kind,owner=0):
  ptr=self.zero(32);klass=self.zero(320);self.write(ptr,8,klass)
  self.tasks[ptr]={'kind':kind,'owner':owner,'complete':False,'token':self.f['token']&65535}
  return ptr
 def completed(self,ptr):
  t=self.tasks[ptr]
  return signed(self.read(t['owner'],4),32)==-2 if t['kind']=='wait' else t['complete']
 def deliver(self,code):
  assert self.pending is not None,'No outstanding callback fixture'
  closure=self.pending;response=self.zero(48);self.write(response+32,4,code)
  self.pending=None;self.emit('Callback',signed(code,32),signed(code,32)==1)
  self.invoke(CALLBACK,closure,response)
 def advance(self):
  assert self.waits,'No wait fixture'
  waiter=self.waits[-1];owner=waiter['machine'];assert signed(self.read(owner,4),32)==0
  frame=self.read(owner+32,8);self.tasks[frame]['complete']=True
  self.invoke(WAIT,owner)
  if signed(self.read(owner,4),32)==-2 and signed(self.read(self.machine,4),32)==0:self.invoke(SYNC,self.machine)
 def action(self,action):
  self.effects=[]
  if action['type']=='start':self.invoke(SYNC,self.machine)
  elif action['type']=='deliver':self.deliver(action['code'])
  elif action['type']=='frame':self.advance()
  elif action['type']=='edit':self.invoke(0x51f0cc8,self.string(action['key']),self.string(action['text']))
  else:raise ValueError(action)
  return self.snapshot()
 def snapshot(self):
  closure=self.last_closure;signal=self.read(closure+24,8) if closure else 0
  wait=self.waits[-1] if self.waits else None
  return {'store':self.values(self.read(self.static,8)),
   'machine':{'state':signed(self.read(self.machine,4),32),'count':signed(self.read(self.machine+56,4),32),'closurePresent':bool(self.read(self.machine+48,8))},
   'lastCallback':None if not closure else {'success':bool(self.read(closure+16,1)),'signal':bool(self.read(signal+16,1))},
   'wait':None if not wait else {'state':signed(self.read(wait['machine'],4),32),'frames':wait['frames']},
   'requests':self.requests,'pendingCallback':self.pending is not None,'effects':self.effects}
 def hook(self,t):
  if t==0x6587d3c:self.write(self.reg('x0')+64,8,self.reg('x1'))
  elif t==0x50d1630:
   closure=self.read(self.reg('x1')+64,8);self.last_closure=closure;self.pending=closure
   n=self.requests;self.requests+=1;self.emit('SetClientData',self.text(self.reg('x0')))
   if not self.f['pending'][n]:self.deliver(self.f['codes'][n])
  elif t==0x474600c:
   owner=self.zero(48);self.write(owner,4,-1);self.write(owner+24,8,self.reg('x0'))
   self.waits.append({'machine':owner,'frames':0});self.invoke(WAIT,owner)
   complete=signed(self.read(owner,4),32)==-2
   source=0 if complete and self.f['zeroCompletedSource'] else self.task('wait',owner)
   self.put('x0',source);self.put('x1',self.f['token']&65535 if source else 0)
  elif t==0x948f59c:
   assert (self.reg('w0'),self.reg('w1'),self.reg('x2'),self.reg('x3'))==(1,8,0,0)
   self.waits[-1]['frames']+=1;self.emit('DelayFrame',1,8)
   source=self.task('frame');self.put('x0',source);self.put('x1',self.f['token']&65535)
  elif t==0x45c9264:
   assert self.reg('x0') in self.tasks
   slot=self.reg('w2');assert slot in [0,2]
   dispatch=self.zero(16);self.write(dispatch,8,STATUS if slot==0 else RESULT);self.put('x0',dispatch)
  elif t in [STATUS,RESULT]:
   ptr=self.reg('x0');assert self.reg('w1')==self.tasks[ptr]['token']
   if t==STATUS:self.put('w0',int(self.completed(ptr)))
   else:assert self.completed(ptr),'Fixture resumed an incomplete source'
  elif t==0x47598e8:self.emit('Wait.Suspend')
  elif t==0x5e1f894:self.emit('Sync.Suspend')
  elif t==0x8d8c6c4:self.emit('Sync.Complete')
  else:super().hook(t)
