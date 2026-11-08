"""Normal/pending RequestLoop branches. Transport, task and UI are fixtures."""
from api_control_vm import APIControlVM,signed
LOOP=0x4819ffc
INVOKE=0xffff1200
SET_SEQUENCE=0xffff1201
STATUS=0xffff1202
GET_RESULT=0xffff1203
GET_CODE=0xffff1204
GET_SEQUENCE=0xffff1205

class RequestLoopVM(APIControlVM):
 def __init__(self,p,f):
  super().__init__(p,f)
  self.steps=0;self.queue_items=[];self.records={};self.packets={};self.tasks={};self.responses={};self.invocations=[]
  for n in [2732,2740,2741,2742]:self.write(0xabce000+n,1,1)
  self.instances['Gear2LogBuilder']=self.zero(64) if f['logBuilderPresent'] else 0
  self.machine=self.zero(96);self.write(self.machine,4,-1)
  self.uni_source=self.read(p.elf.u64(0xa3e9760),8)
  for n in [2928,2936,2992]:
   method=self.zero(256);klass=self.zero(320);context=self.zero(64);interface=self.zero(320)
   self.write(p.elf.u64(0xa3f1000+n),8,method);self.write(method+32,8,klass);self.write(klass+309,2,1);self.write(klass+192,8,context);self.write(context+40,8,interface);self.write(interface+309,2,1)
  # Boxing metadata dependency used by the code-17 diagnostic branch.
  self.write(p.elf.u64(0xa3e74e0)+104,8,self.zero(256))
  for item in f['items']:self.enqueue(item)
 def zero(self,size):
  ptr=self.alloc(size)
  for off in range(size):self.write(ptr+off,1,0)
  return ptr
 def obj(self):
  ptr=self.zero(48);self.write(ptr,8,self.zero(320));return ptr
 def enqueue(self,item):
  ptr=self.zero(48);packet=self.obj() if item['packetPresent'] else 0;delegate=self.zero(80) if item['delegatePresent'] else 0
  if delegate:self.write(delegate+24,8,INVOKE);self.write(delegate+64,8,ptr)
  self.write(ptr+16,8,delegate);self.write(ptr+24,4,item['api']);self.write(ptr+28,1,item['direct']);self.write(ptr+32,8,packet)
  self.records[ptr]=item;self.packets[packet]=item['packetSequence'];self.queue_items.append(ptr);self.write(self.queue+32,4,len(self.queue_items))
 def run_loop(self):
  self.put('x30',self.RETURN);self.steps+=self.run(LOOP,this_ptr=self.machine)
 def retry_disposition(self):
  # Entry fragment after a caught RPC error's diagnostics. This constructs the
  # known live register/stack context; it does not emulate exception unwinding.
  self.write(self.machine+16,8,self.queue_items[0]);self.write(self.machine+48,4,1)
  self.sp-=272
  for off in range(272):self.write(self.sp+off,1,0)
  self.write(self.sp+184,8,self.RETURN)
  for reg,value in [(19,self.machine),(23,self.sp+128),(24,self.p.elf.u64(0xa3eee40)),(25,0xabcf000),(26,self.p.elf.u64(0xa3ee908)),(27,self.p.elf.u64(0xa3f1b88)),(28,-1),(29,0xabcf000)]:self.put('x'+str(reg),value)
  self.steps+=self.run(0x481ad28,this_ptr=self.machine)
 def action(self,item):
  self.effects=[];error=None
  try:
   if item['type']=='start':self.run_loop()
   elif item['type']=='retryDisposition':self.retry_disposition()
   elif item['type'] in ['frame','complete','delay']:
    state=signed(self.read(self.machine,4),32);assert state=={'frame':0,'complete':1,'delay':2}[item['type']]
    source=self.read(self.machine+(56 if state==1 else 24),8);self.tasks[source]['complete']=True;self.run_loop()
   elif item['type']=='kick':self.write(self.static+24,1,item['value'])
   elif item['type']=='enqueue':self.enqueue(item['item'])
   else:raise ValueError(item)
  except RuntimeError as exc:
   if 'Native NullReference' not in str(exc):raise
   error='Native NullReference'
  return {**self.snapshot(),**({'error':error} if error else {})}
 def snapshot(self):
  s=self.state();s['queueCount']=len(self.queue_items)
  return {'api':s,'machine':{'state':signed(self.read(self.machine,4),32),'current':None if not self.read(self.machine+16,8) else self.records[self.read(self.machine+16,8)]['id']},'queue':[self.records[x]['id'] for x in self.queue_items],'packets':{item['id']:str(signed(self.packets[ptr],64)) for ptr,item in [(self.read(k+32,8),v) for k,v in self.records.items()]},'invocations':[dict(x) for x in self.invocations],'effects':self.effects}
 def task(self,kind,complete,response=0):
  ptr=self.obj();self.tasks[ptr]={'kind':kind,'complete':complete,'response':response};return ptr
 def hook(self,t):
  if t==0x71496c4:
   assert self.reg('x0')==self.queue;self.put('x0',self.queue_items[0])
  elif t==0x7149628:
   assert self.reg('x0')==self.queue;ptr=self.queue_items.pop(0);self.write(self.queue+32,4,len(self.queue_items));self.emit('Queue.Dequeue',self.records[ptr]['id']);self.put('x0',ptr)
  elif t==0x47469c4:self.put('w0',2) # selected release deploy branch, logs still explicit elsewhere
  elif t==0x4cff1b8:self.emit('LoadingUI_Delay_ON',bool(self.reg('w1')),self.fp('s0'))
  elif t==0x4fce754:self.emit('MarkUserPropertiesDirty')
  elif t==0x948eff8:self.emit('NextFrame');self.put('x0',self.task('frame',False));self.put('x1',self.f['token'])
  elif t==0x948f874:
   assert [self.reg(r) for r in ['w0','w1','w2','x3','x4']]==[2000,0,8,0,0]
   self.emit('Delay',2000,False,8)
   source=0 if not self.f['delayPending'] and self.f['zeroCompletedSource'] else self.task('delay',not self.f['delayPending'])
   self.put('x0',source);self.put('x1',self.f['token'] if source else 0)
  elif t==INVOKE:
   item=self.records[self.reg('x0')];packet=self.read(self.reg('x0')+32,8);sequence=str(signed(self.packets[packet],64));self.emit('Request.Invoke',item['id'],sequence);self.invocations.append({'id':item['id'],'sequence':sequence})
   response=self.obj() if item['responsePresent'] else 0
   if response:self.responses[response]=item
   source=0 if not item['pending'] and self.f['zeroCompletedSource'] else self.task('request',not item['pending'],response)
   out=self.reg('x8');self.write(out,8,source);self.write(out+8,8,response);self.write(out+16,8,self.f['token'])
  elif t==0x45c9264:
   ptr,slot=self.reg('x0'),self.reg('w2')
   if ptr in self.tasks:
    fn=STATUS if slot==0 and self.reg('x1')==self.uni_source else GET_RESULT
   elif ptr in self.responses:fn=GET_CODE if slot==2 else GET_SEQUENCE;assert slot in [0,2]
   elif ptr in self.packets:fn=SET_SEQUENCE;assert slot==1
   else:raise ValueError('Unknown interface fixture')
   out=self.zero(16);self.write(out,8,fn);self.put('x0',out)
  elif t==SET_SEQUENCE:
   ptr=self.reg('x0');value=signed(self.reg('x1'),64);self.packets[ptr]=value
   item=self.records[self.read(self.machine+16,8)];self.emit('Request.Sequence',item['id'],str(value))
  elif t==STATUS:
   task=self.tasks[self.reg('x0')];assert self.reg('w1')==self.f['token'];self.put('w0',task['complete'])
  elif t==GET_RESULT:
   task=self.tasks[self.reg('x0')];assert task['complete'] and self.reg('w1')==self.f['token'];self.put('x0',task['response'])
  elif t==GET_CODE:self.put('w0',self.responses[self.reg('x0')]['code'])
  elif t==GET_SEQUENCE:self.put('x0',int(self.responses[self.reg('x0')]['responseSequence']))
  elif t==0x4827ce8:self.emit('Loop.Suspend','delay' if self.read(self.machine,4)==2 else 'frame')
  elif t==0x4827df4:self.emit('Loop.Suspend','request')
  elif t==0x470d0d0:self.emit('Loop.Complete')
  elif t==0x4d52080:
   item=self.records[self.read(self.machine+16,8)];self.emit('Post_DataLog','code-17',item['api'],str(signed(self.read(self.static+16,8),64)))
  else:super().hook(t)
