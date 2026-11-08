"""Initialized dictionaries, values, string/BCL and serialization dependencies."""
from pathlib import Path
import re,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,signed
def try_int32(value):
 if value is None or not re.fullmatch(r'[\t\r\n ]*[+-]?[0-9]+[\t\r\n ]*',value):return None
 n=int(value);return n if -2147483648<=n<=2147483647 else None
def try_bool(value):
 if value is None:return None
 text=value.strip(' \t\r\n').lower();return True if text=='true' else False if text=='false' else None
class PrefsVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f,keys):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False});self.f=f;self.effects=[];self.strings={};self.dictionaries={};self.enums=keys;self.initial={};self.collections={};self.enums_state={}
  self.static=self.alloc(64);klass=self.alloc(256);self.classes['ServerPrefs']=klass;self.write(klass+228,4,1);self.write(klass+184,8,self.static)
  store=self.make_dictionary(f['store']);self.write(self.static,8,store)
  if store:self.initial=dict(self.dictionaries[store])
  self.target=self.make_value(f['target']);self.account=0 if not f['accountPresent'] else self.alloc(1024)
  if self.account:
   data=self.alloc(64) if f['clientDataPresent'] else 0;self.write(self.account+768,8,data)
   if data:self.write(data+24,8,self.string(f['json']))
  # Cached predicate singleton and initialized Boolean type metadata only.
  cls=self.alloc(256);st=self.alloc(32);self.classes['ServerPrefs+<>c']=cls;self.write(cls+228,4,1);self.write(cls+184,8,st);self.write(st,8,self.alloc(32));self.write(st+8,8,self.alloc(80))
  bool_cls=self.alloc(256);self.write(bool_cls+228,4,1);self.write(p.elf.u64(0xa3e74e0)+40,8,bool_cls)
 def string(self,text):
  if text is None:return 0
  ptr=self.alloc(24);self.strings[ptr]=text;return ptr
 def text(self,ptr):
  if not ptr:return None
  if ptr not in self.strings:raise ValueError('Unmodeled string reference')
  return self.strings[ptr]
 def make_value(self,record):
  if record is None:return 0
  ptr=self.alloc(48);self.write(ptr+16,1,record['dirty']);self.write(ptr+24,8,self.string(record['value']));return ptr
 def make_dictionary(self,records):
  if records is None:return 0
  ptr=self.alloc(32);self.dictionaries[ptr]={k:self.make_value(v) for k,v in records.items()};return ptr
 def record(self,ptr):return None if not ptr else {'value':self.text(self.read(ptr+24,8)),'dirty':bool(self.read(ptr+16,1))}
 def values(self,ptr):return None if not ptr else {k:self.record(v) for k,v in self.dictionaries[ptr].items()}
 def state(self):
  ptr=self.read(self.static,8);return {'store':self.values(ptr),'sameInitial':None if not ptr else {k:v==self.initial.get(k) for k,v in self.dictionaries[ptr].items()},'target':self.record(self.target)}
 def emit(self,name,*args):self.effects.append({'name':name,'args':list(args)})
 def dictionary_key(self):
  ptr=self.reg('x0');assert ptr in self.dictionaries;key=self.text(self.reg('x1'))
  if key is None:raise ValueError('Native dictionary ArgumentNull fixture')
  return self.dictionaries[ptr],key
 def hook(self,t):
  if t==0x81aa638:
   d,k=self.dictionary_key();self.write(self.reg('x2'),8,d.get(k,0));self.put('w0',int(k in d))
  elif t in [0x81a8ad0,0x81a8abc]:
   d,k=self.dictionary_key();ptr=self.reg('x2');assert (k not in d) if t==0x81a8ad0 else True;d[k]=ptr;v=self.record(ptr);self.emit('Dictionary.Add' if t==0x81a8ad0 else 'Dictionary.Set',k,v['value'],v['dirty'])
  elif t==0x81a8cc4:
   d,k=self.dictionary_key();self.put('w0',int(k in d))
  elif t==0x81a9fec:
   d,k=self.dictionary_key();del d[k];self.emit('Dictionary.Remove',k);self.put('w0',1)
  elif t==0x81a8c58:self.dictionaries[self.reg('x0')].clear();self.emit('Dictionary.Clear')
  elif t==0x8e74df8:
   value=try_int32(self.text(self.reg('x0')));self.write(self.reg('x1'),4,0 if value is None else value);self.put('w0',value is not None)
  elif t==0x8dd46d4:
   value=try_bool(self.text(self.reg('x0')));self.write(self.reg('x1'),1,False if value is None else value);self.put('w0',value is not None)
  elif t==0x8e746e4:self.put('x0',self.string(str(signed(self.read(self.reg('x0'),4),32))))
  elif t==0x8dd40cc:self.put('x0',self.string('True' if self.read(self.reg('x0'),1) else 'False'))
  elif t==0x8cd8404:self.put('w0',self.text(self.reg('x0'))!=self.text(self.reg('x1')))
  elif t==0x4743654:self.put('w0',self.text(self.reg('x0')) in [None,''])
  elif t==0x8eafa0c:
   n=signed(self.read(self.reg('x0')+16,4),32);name=next((k for k,v in self.enums.items() if v==n),str(n));self.put('x0',self.string(name))
  elif t==0x4590cfc:
   ptr=self.alloc(80)
   for i in range(0,80,8):self.write(ptr+i,8,0)
   self.put('x0',ptr)
  elif t in [0x8ebc228,0x673c730]:pass
  elif t==0x81a8f04:
   ptr=self.reg('x8');self.enums_state[ptr]={'values':list(self.dictionaries[self.reg('x0')].values()),'index':0}
   for i in range(0,40,8):self.write(ptr+i,8,0)
  elif t==0x64627e4:
   ptr=self.reg('x0');e=self.enums_state[ptr];n=e['index'];found=n<len(e['values'])
   if found:self.write(ptr+24,8,e['values'][n]);e['index']+=1
   self.put('w0',found)
  elif t==0x6462904:pass
  elif t==0x81a88f4:
   ptr=self.alloc(24);self.collections[ptr]=self.reg('x0');self.put('x0',ptr)
  elif t==0x5ed994c:
   vals=self.dictionaries[self.collections[self.reg('x0')]].values();self.put('w0',any(self.read(v+16,1) for v in vals))
  elif t==0x8f03f00:
   ptr=self.reg('x0');self.emit('SerializeObject',self.values(ptr));self.put('x0',self.string(self.f['serialized']))
  elif t==0x51f0200:self.emit('RequestServerSync',self.text(self.reg('x0')))
  elif t==0x5f708a0:
   self.emit('DeserializeObject',self.text(self.reg('x0')));self.put('x0',self.make_dictionary(self.f['deserialized']))
  else:super().hook(t)
