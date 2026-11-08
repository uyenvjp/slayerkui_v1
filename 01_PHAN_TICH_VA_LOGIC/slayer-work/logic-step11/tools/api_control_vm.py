"""API warm statics, UTC DateTimeOffset fixture and UI diagnostics models."""
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,signed
class APIControlVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False});self.f=f;self.effects=[];self.static=self.alloc(128);klass=self.alloc(256);self.classes['APIManager']=klass;self.write(klass+228,4,1);self.write(klass+184,8,self.static)
  s=f['state']
  for field,offset,size in [('processingRaw',0,1),('retryCount',4,4),('failCount',8,4),('currentSequence',16,8),('kickOut',24,1)]:self.write(self.static+offset,size,int(s[field]))
  self.queue=0 if s['queueCount'] is None else self.alloc(64);self.write(self.static+32,8,self.queue)
  if self.queue:self.write(self.queue+32,4,s['queueCount'])
  self.time_dic=0 if s['lastRequestTimes'] is None else self.alloc(32);self.write(self.static+40,8,self.time_dic);self.times=None if not self.time_dic else {int(k):int(v) for k,v in s['lastRequestTimes'].items()};self.strings={}
  self.instances['AlarmManager']=self.alloc(64) if f['alarmPresent'] else 0;self.instances['AuthManager']=self.alloc(64) if f['authPresent'] else 0
 def emit(self,name,*args):self.effects.append({'name':name,'args':list(args)})
 def string(self,s):p=self.alloc(24);self.strings[p]=s;return p
 def hook(self,t):
  if t==0x4d5937c:self.emit('DatabaseManager.LogError','api-processing')
  elif t==0x53c8ccc:
   ticks=int(self.f['nowTicks']);self.emit('TimeApp.UtcNow',str(ticks));self.pair('x0','x1',ticks)
  elif t==0x809a5a8:
   assert self.reg('x0')==self.time_dic;k=signed(self.reg('w1'),32);value=self.big('x2','x3');self.times[k]=value;self.emit('LastRequestTime.Set',k,str(value))
  elif t==0x809ba10:
   assert self.reg('x0')==self.time_dic;k=signed(self.reg('w1'),32);found=k in self.times
   if found:del self.times[k]
   self.emit('LastRequestTime.Remove',k,found);self.put('w0',found)
  elif t==0x809bfb0:
   assert self.reg('x0')==self.time_dic;k=signed(self.reg('w1'),32);found=k in self.times
   if found:self.pair('x8','x9',self.times[k]);self.write(self.reg('x2'),8,self.reg('x8'));self.write(self.reg('x2')+8,8,self.reg('x9'))
   self.put('w0',found)
  elif t==0x8e5a9a4:
   ticks=self.read(self.reg('x0'),8).value;self.pair('x0','x1',ticks+int(self.fp('d0'))*10000000)
  elif t==0x8e5dbec:self.put('w0',self.big('x0','x1')<self.big('x2','x3'))
  elif t in [0x49251ec,0x4926fe0,0x4925768,0x4928a74]:self.put('x0',self.string({0x49251ec:'ALARM_TEXT_018',0x4926fe0:'ALARM_TEXT_089',0x4925768:'ALARM_TEXT_031',0x4928a74:'ALARM_TEXT_152'}[t]))
  elif t==0x4cf1b20:self.emit('AlarmManager.AlarmText',self.strings[self.reg('x1')])
  elif t in [0x4d02840,0x4cffb98,0x4d29d04]:self.emit({0x4d02840:'AlarmManager.MaintenanceBreak_Alarm',0x4cffb98:'AlarmManager.PopUp_UpdateAlarm',0x4d29d04:'AuthManager.Popup_DuplicateLogin'}[t])
  elif t==0x4590be8:self.put('x0',self.alloc(24))
  elif t==0x4590cfc:
   ptr=self.alloc(64);klass=self.alloc(512);self.write(ptr,8,klass);self.write(klass+360,8,0xffff9701);self.write(klass+368,8,0);self.put('x0',ptr)
  elif t==0x8e049bc:self.emit('StackTrace.Create')
  elif t==0xffff9701:self.emit('StackTrace.ToString');self.put('x0',self.string('stacktrace-fixture'))
  elif t in [0x4d024c0,0x4d021fc]:self.emit('AlarmManager.AbnormalError_Popup' if t==0x4d024c0 else 'AlarmManager.PhysicalFail_Popup',self.strings[self.reg('x1')])
  elif t==0x8cdaab4:self.put('x0',self.string('diagnostic-format-fixture'))
  elif t==0x99c0f24:self.emit('Unity.Debug.LogError','invalid-response-code',signed(self.f['code'],32))
  else:super().hook(t)
 def state(self):return {'processingRaw':bool(self.read(self.static,1)),'retryCount':signed(self.read(self.static+4,4),32),'failCount':signed(self.read(self.static+8,4),32),'currentSequence':str(signed(self.read(self.static+16,8),64)),'kickOut':bool(self.read(self.static+24,1)),'queueCount':self.f['state']['queueCount'],'lastRequestTimes':None if self.times is None else {str(k):str(v) for k,v in self.times.items()}}
