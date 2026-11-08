#!/usr/bin/env python3
"""Two AddCurrency bodies, explicit list capacity and mocked downstream flush."""
from pathlib import Path
import argparse,copy,json,random,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,signed,Part
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,root/'research/item-acquire');P.instructions={pc:op for pc,op in P.instructions.items() if 0x50701d8<=pc<0x5070720}
class AcquireVM(VM):
 def object(self,cls,values):
  if not values:return self.alloc(30000 if cls=='DatabaseManager' else 4096)
  return super().object(cls,values)
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False})
  self.f=f;self.events=[];self.this=self.alloc(256);self.static=self.alloc(128);klass=self.alloc(256);self.classes['DropObject']=klass
  self.write(klass+184,8,self.static);self.write(klass+228,4,1)
  for key,offset in [('dungeonType',24),('mainIndex',28),('subIndex',32)]:self.write(self.static+offset,4,f['snapshot']['context'][key])
  for key,offset in [('dungeonType',40),('mainIndex',44),('subIndex',48)]:self.write(self.this+offset,4,f['dropContext'][key])
  self.lists={}
  for key,offset in [('currencies',0),('bigCurrencies',8),('equipment',16)]:
   ls=self.alloc(64);arr=self.alloc(32+64*8);self.lists[key]=(ls,arr);self.write(self.static+offset,8,ls);self.write(ls+16,8,arr);self.write(ls+24,4,len(f['snapshot'][key]));self.write(ls+28,4,0);self.write(arr+24,4,64)
   for j,item in enumerate(f['snapshot'][key]):
    obj=self.alloc(128);self.write(arr+32+8*j,8,obj);self.write(obj+24,4,item.get('currency',0))
    if key=='currencies':self.write(obj+32,8,int(item['amount']))
    elif key=='bigCurrencies':self.write(obj+32,8,self.string(item['amount']))
    else:self.write(obj+28,4,item['index']);self.write(obj+32,4,item['count'])
 def string(self,s):ptr=self.alloc(24);self.strings=getattr(self,'strings',{});self.strings[ptr]=s;return ptr
 def context(self):return {key:signed(self.read(self.static+offset,4),32) for key,offset in [('dungeonType',24),('mainIndex',28),('subIndex',32)]}
 def queues(self):
  result={}
  for key,(ls,arr) in self.lists.items():
   out=[]
   for j in range(self.read(ls+24,4)):
    obj=self.read(arr+32+8*j,8);item={'currency':signed(self.read(obj+24,4),32)}
    if key=='currencies':item['amount']=str(signed(self.read(obj+32,8),64))
    elif key=='bigCurrencies':item['amount']=self.strings[self.read(obj+32,8)]
    else:item.update(index=signed(self.read(obj+28,4),32),count=signed(self.read(obj+32,4),32))
    out.append(item)
   result[key]=out
  return result
 def hook(self,t):
  if t==0x4590cfc:
   ptr=self.alloc(128)
   for i in range(0,128,8):self.write(ptr+i,8,0)
   self.put('x0',ptr)
  elif t in [0x8a3bd58,0x8a3c658]:pass
  elif t==0x4d2aab4:self.put('w0',self.f['bigCurrencyType'])
  elif t==0x917c63c:
   ptr=self.reg('x0');lo=self.read(ptr,8);hi=self.read(ptr+8,8);assert isinstance(lo,Part) and lo.value==hi.value;self.put('x0',self.string(str(lo.value)))
  elif t==0x8a3c780:self.write(self.reg('x0')+32,8,self.reg('x1'))
  elif t in [0x4d45ebc,0x4d46018]:
   amount=str(signed(self.reg('x2'),64)) if t==0x4d45ebc else str(self.big('x2','x3'))
   self.events.append({'name':'GainCurrency','currency':signed(self.reg('w1'),32),'amount':amount,'overload':'Int64' if t==0x4d45ebc else 'BigInteger'})
  elif t==0x50c1b80:
   self.events.append({'name':'AcquireItems','context':self.context(),**self.queues()})
   for ls,arr in self.lists.values():self.write(ls+24,4,0)
  else:super().hook(t)
base={'snapshot':{'context':{'dungeonType':5,'mainIndex':0,'subIndex':0},'currencies':[{'currency':6,'amount':'15'}],'bigCurrencies':[{'currency':1,'amount':'100000000000000000000000000'}],'equipment':[{'currency':1,'index':0,'count':1}]},'dropContext':{'dungeonType':5,'mainIndex':0,'subIndex':0},'currency':6,'amount':'15','bigCurrencyType':1}
vectors=[];rng=random.Random(705_73);steps=0;visited=set()
for case in range(72):
 f=copy.deepcopy(base)
 if case%4==1:f['dropContext']['dungeonType']=6
 if case%4==2:f['dropContext']['mainIndex']=1
 if case%4==3:f['dropContext']['subIndex']=1
 f['currency']=rng.choice([0,1,6,8,13,38,3000]);f['amount']=str(rng.choice([0,1,10**18,-1,-10**18]));f['bigCurrencyType']=rng.choice([0,1,2,3])
 if case%3==0:
  for key in ['currencies','bigCurrencies','equipment']:f['snapshot'][key]=[]
 for big,entry in [(False,0x50701d8),(True,0x507043c)]:
  v=AcquireVM(P,f);v.put('w1',f['currency'])
  if big:v.pair('x2','x3',int(f['amount'])*10**20)
  else:v.put('x2',int(f['amount']))
  steps+=v.run(entry,this_ptr=v.this);visited.update(v.visited)
  vectors.append({'case':case,'big':big,'fixture':f,'amount':str(int(f['amount'])*10**20 if big else int(f['amount'])),'result':{'context':v.context(),**v.queues(),'effects':v.events}})
report={'cases':len(vectors),'instructionSteps':steps,'distinctInstructions':len(visited),'scope':'Two DropObject.AddCurrency bodies. Preallocated List paths, constructors/string conversion/enum mapping/GainCurrency/AcquireItems explicitly modeled; no server callback or full account parity.'}
(root/'acquisition-native-flow-vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');(root/'acquisition-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
