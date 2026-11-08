"""Stronger ServerPrefs -> api255 -> response guard -> callback proof.

Original async MoveNext bodies are linked through a fixture scheduler. The
queue dispatch/Task/RPC boundaries are modeled explicitly; no service is called.
"""
from prefs_sync_vm import PrefsSyncVM,SYNC
from api_control_vm import APIControlVM,signed
RESPONSE=0x51ce4fc
RPC=0xffff1300
DIAGNOSTICS={0x49251ec,0x4926fe0,0x4925768,0x4928a74,0x4cf1b20,0x4d02840,0x4cffb98,0x4d29d04,0x4590be8,0x8e049bc,0xffff9701,0x4d024c0,0x4d021fc,0x8cdaab4,0x99c0f24}

class ClientSyncVM(PrefsSyncVM):
 def __init__(self,p,f,keys):
  super().__init__(p,f,keys);self.queued=[];self.client_machine=0
  self.api_static=self.zero(128);klass=self.zero(256);self.classes['APIManager']=klass;self.write(klass+228,4,1);self.write(klass+184,8,self.api_static);self.queue=self.zero(64);self.write(self.api_static+32,8,self.queue)
  klass=self.zero(256);static=self.zero(32);self.classes['RequestData']=klass;self.write(klass+228,4,1);self.write(klass+184,8,static);self.write(static,8,self.zero(32))
  for flag in [0xabe5000+3429,0xabe5000+3431]:self.write(flag,1,1)
  self.write(p.elf.u64(0xa3e7d70),8,self.string(''))
  self.network=self.zero(128);self.write(self.network+88,8,self.zero(32));self.front=self.zero(32);fc=self.zero(17600);self.write(self.front,8,fc);self.write(fc+17576,8,RPC)
  self.instances['AlarmManager']=self.zero(64);self.instances['AuthManager']=self.zero(64)
  self.rpc_task=self.zero(32);self.rpc_complete=not f['rpcPending'];self.rpc_response=self.zero(48);self.write(self.rpc_response+32,4,f['code'])
 def dispatch(self):
  assert self.queued and not self.client_machine
  data=self.queued[0];delegate=self.read(data+16,8);closure=self.read(delegate+64,8)
  self.client_machine=self.zero(48);self.write(self.client_machine,4,-1);self.write(self.client_machine+32,8,closure)
  self.invoke(RESPONSE,self.client_machine)
 def action(self,a):
  self.effects=[]
  if a['type']=='start':self.invoke(SYNC,self.machine)
  elif a['type']=='dispatch':self.dispatch()
  elif a['type']=='rpcComplete':self.rpc_complete=True;self.invoke(RESPONSE,self.client_machine)
  elif a['type']=='frame':self.advance()
  elif a['type']=='edit':self.invoke(0x51f0cc8,self.string(a['key']),self.string(a['text']))
  else:raise ValueError(a)
  return self.snapshot()
 def snapshot(self):
  base=super().snapshot();base.pop('pendingCallback')
  base['queue']=[{'api':signed(self.read(p+24,4),32),'content':self.text(self.read(self.read(p+32,8)+32,8)),'direct':bool(self.read(p+28,1))} for p in self.queued]
  base['responseMachine']=None if not self.client_machine else {'state':signed(self.read(self.client_machine,4),32),'resultPresent':bool(self.read(self.client_machine+24,8))}
  return base
 def hook(self,t):
  if t==0x4590cfc:
   ptr=self.zero(256);klass=self.zero(512);self.write(ptr,8,klass);self.write(klass+360,8,0xffff9701);self.put('x0',ptr)
  elif t==0x6587d3c:
   self.last_closure=self.reg('x1');self.write(self.reg('x0')+64,8,self.reg('x1'));self.write(self.reg('x0')+24,8,0x51f198c)
  elif t==0x67305f4:self.write(self.reg('x0')+64,8,self.reg('x1'))
  elif t==0x60c3458:
   if not self.reg('x0'):raise ValueError('Protobuf non-null content fixture')
  elif t==0x50c1b80:self.emit('AcquireItems')
  elif t==0x67ac460:assert self.reg('w1')==255;self.put('w0',self.f['directShow'])
  elif t==0x7149498:
   assert self.reg('x0')==self.queue;ptr=self.reg('x1');self.queued.append(ptr);self.requests+=1;self.emit('Queue.Enqueue',signed(self.read(ptr+24,4),32),self.text(self.read(self.read(ptr+32,8)+32,8)))
  elif t==0x7388e50:self.put('x0',self.network)
  elif t==0x541e6f8:self.put('x0',self.front)
  elif t==RPC:self.emit('RPC.Send',self.text(self.read(self.reg('x1')+32,8)));self.put('x0',self.rpc_task)
  elif t==0x788a208:self.put('x0',self.rpc_task)
  elif t==0x749ec34:self.put('w0',self.rpc_complete)
  elif t==0x749ec74:assert self.rpc_complete;self.put('x0',self.rpc_response)
  elif t==0x51d669c:self.emit('SetClientData.Suspend')
  elif t in DIAGNOSTICS:APIControlVM.hook(self,t)
  else:super().hook(t)
