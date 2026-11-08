#!/usr/bin/env python3
from pathlib import Path
import argparse,copy,json,random
from prefs_vm import Program,PrefsVM,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out);keys=json.loads((root/'prefs-keys.json').read_text())['values']
P=Program(a.source,[root/'research/server-prefs',root/'research/prefs-value']);ranges=[(0x51efc7c,0x51f0200),(0x51f02e4,0x51f17d4),(0x51f186c,0x51f1900)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
base={'store':{},'target':{'value':'old','dirty':False},'key':'LAST_PLAYED_CAVE_INDEX','enumKey':0,'int':1,'text':'new','bool':True,'intDefault':7,'textDefault':'fallback','boolDefault':False,'force':False,'accountPresent':True,'clientDataPresent':True,'json':'declared-json-fixture','deserialized':{'restored':{'value':'42','dirty':True}},'serialized':'declared-serialized-json-fixture'}
rng=random.Random(705_11);fixtures=[];texts=[None,'','0','1','+001',' -2 ','2147483647','2147483648','bad','True','true','FALSE',' False ','text']
for case in range(96):
 f=copy.deepcopy(base);f['enumKey']=rng.choice(list(keys.values())+[-1,999]);f['key']=rng.choice(list(keys)+['','custom-key','999']);f['int']=rng.choice([-2147483648,-1,0,1,42,2147483647]);f['text']=rng.choice(texts);f['bool']=case%2==0;f['intDefault']=rng.choice([-1,0,7]);f['textDefault']=rng.choice(texts);f['boolDefault']=case%3==0;f['force']=case%4==0;f['json']=rng.choice([None,'','declared-json-fixture']);f['accountPresent']=case%5!=0;f['clientDataPresent']=case%7!=0
 for k in {f['key'],next((k for k,v in keys.items() if v==f['enumKey']),str(f['enumKey'])),'other-key'}:
  if rng.randrange(3):f['store'][k]={'value':rng.choice(texts),'dirty':bool(rng.randrange(2))}
 f['target']={'value':rng.choice(texts),'dirty':case%2==0};fixtures.append(f)
entries=[('getInt',0x51f05b0),('setInt',0x51f0798),('getString',0x51f0afc),('setString',0x51f0cc8),('getBool',0x51f0fac),('setBool',0x51f11b4),('hasKey',0x51f1524),('remove',0x51f16d0),('getIntEnum',0x51f04cc),('setIntEnum',0x51f06b4),('getStringEnum',0x51f0a18),('setStringEnum',0x51f0be4),('getBoolEnum',0x51f0ec4),('setBoolEnum',0x51f10d0),('hasKeyEnum',0x51f1448),('removeEnum',0x51f15f8),('resetAllDirty',0x51f02e4),('valueIsDirty',0x51f186c),('valueSetDirty',0x51f18b4),('valueResetDirty',0x51f0484),('valueConstruct',0x51f09dc),('savePrefs',0x51effe4),('loadJson',0x51efd24),('loadAccount',0x51efc7c)]
vectors=[];steps=0;visited=set()
def run(f,name,entry,v=None):
 global steps
 v=v or PrefsVM(P,f,keys);v.put('x30',v.RETURN);ptr=v.target if name.startswith('value') else v.account if name=='loadAccount' else v.string(f['json']) if name=='loadJson' else int(f['force']) if name=='savePrefs' else f['enumKey'] if name.endswith('Enum') else v.string(f['key'])
 if name.startswith(('getInt','setInt')):v.put('w1',f['intDefault'] if name.startswith('get') else f['int'])
 elif name.startswith(('getBool','setBool')):v.put('w1',f['boolDefault'] if name.startswith('get') else f['bool'])
 elif name.startswith(('getString','setString')):v.put('x1',v.string(f['textDefault'] if name.startswith('get') else f['text']))
 elif name=='valueConstruct':v.put('x1',v.string(f['text']))
 error=None
 try:steps+=v.run(entry,this_ptr=ptr)
 except RuntimeError as exc:
  error=next((x for x in ['Native NullReference','Native dictionary ArgumentNull fixture'] if x in str(exc)),None)
  if not error:raise
 visited.update(v.visited);result={'state':v.state(),'effects':v.effects}
 if error:result['error']=error
 elif name.startswith('getString'):result['value']=v.text(v.reg('x0'))
 elif name.startswith('getInt'):result['value']=signed(v.reg('w0'),32)
 elif name.startswith('getBool') or name.startswith('hasKey') or name=='valueIsDirty':result['value']=bool(v.reg('w0'))
 return v,result
for case,f in enumerate(fixtures):
 for name,entry in entries:
  _,result=run(f,name,entry);vectors.append({'case':case,'method':name,'fixture':f,'expected':result})
contracts=[]
for name in ['getInt','setInt','getString','setString','getBool','setBool','remove','hasKey','resetAllDirty','savePrefs']:
 f=copy.deepcopy(base);f['store']=None
 if name=='savePrefs':f['force']=True
 _,result=run(f,name,dict(entries)[name]);contracts.append({'method':name,'fixture':f,'expected':result})
for name in ['getInt','setInt','hasKey','remove']:
 f=copy.deepcopy(base);f['key']=None;_,result=run(f,name,dict(entries)[name]);contracts.append({'method':name,'fixture':f,'expected':result})
for name in ['getInt','setInt','getString','getBool']:
 f=copy.deepcopy(base);f['store'][f['key']]=None;_,result=run(f,name,dict(entries)[name]);contracts.append({'method':name,'fixture':f,'expected':result})
sequences=[]
for initial,actions in [({'key':{'value':'bad','dirty':False}},[('setInt',{'int':2}),('savePrefs',{}),('setString',{'text':'2'}),('savePrefs',{}),('resetAllDirty',{}),('remove',{}),('savePrefs',{}),('savePrefs',{'force':True})]),({},[('setBool',{'bool':True}),('setBool',{'bool':True}),('resetAllDirty',{}),('setBool',{'bool':False}),('loadJson',{}),('savePrefs',{})])]:
 f=copy.deepcopy(base);f['key']='key';f['store']=initial;v=PrefsVM(P,f,keys);frames=[]
 for name,args in actions:
  f.update(args);v.effects=[];_,result=run(f,name,dict(entries)[name],v);frames.append({'action':name,'args':args,'expected':result})
 sequences.append({'fixture':{**copy.deepcopy(base),'key':'key','store':initial},'frames':frames})
report={'cases':len(vectors),'snapshots':len(fixtures),'entries':len(entries),'contract_cases':len(contracts),'connected_sequences':len(sequences),'sequence_actions':sum(len(s['frames']) for s in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'24 selected ServerPrefs/Value entries: string/enum get-set/has/remove, dirty flags, load success/empty/account-null paths and Save decision. Original methods and dirty reset bodies interpreted. Explicit initialized metadata, collections/enumerators, ASCII parser fixtures, enum names, allocation, deserialize/serialize and RequestServerSync sink; no exception-unwind/complete JSON/BCL/network/account-save parity.'}
(root/'prefs-native-vectors.json').write_text(json.dumps({'vectors':vectors,'contracts':contracts,'sequences':sequences},indent=2)+'\n');(root/'prefs-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
