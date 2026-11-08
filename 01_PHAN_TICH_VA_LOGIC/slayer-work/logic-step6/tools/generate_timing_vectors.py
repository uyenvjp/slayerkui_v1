#!/usr/bin/env python3
"""Bounded SkillData method-body interpreter. UI, collection and wrappers explicit."""
from pathlib import Path
import argparse,copy,json,random,struct
from native_flow_vm import Program,VM,Wrapped,f32,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
P=Program(a.source,[root/'cooldown',root/'skill-gates'])
# These dependencies remain modeled: factories allocate iterators; formatting is
# represented by its numeric input. No claim of Unity/localization execution.
for lo,hi in [(0x5309d30,0x5309dd4),(0x5309dfc,0x5309ea0),(0x530b608,0x530b764)]:
 for pc in range(lo,hi,4):P.instructions.pop(pc,None)
base={'data':{'skill':{'Index':1,'activeType':2,'dmgType':1},'SkillUsePossible':False,'SkillBan':False,'SkillSpecialBan':False,
 'SkillCoolTimeReduceBuff':True,'currentSkillBanState':0,'skilleffectCooltimeReduceFactor':0,'cooltimeReduceFactor':1,
 'CooltimeIncreaseFactor':1,'maxCooltime':10,'_maxCooltimePlus':10,'_maxCooltimePlusNone':10,'_cooltimeDirty':True,
 'curCooltime':5,'maxAttackCount':10,'_maxAttackCountResult':10,'curAttackCount':5,'useStackCount':0,'_maxUseStackCount':3},
 'statics':{'SkillStoneOption_SkillCoolTimePercent':{str(i):0 for i in range(1,5)},'SkillStoneOption_AttackCountPercent':{str(i):0 for i in range(1,5)}},
 'grinding':None,'dragonHunt':{'SkillCoolTimePercent':0,'Cook_CountSkillReduce':0,'WindSkillCountDecrease':0},
 'isBattle':True,'gameDeltaTime':0.016666667,'amount':12.5,'coroutine':{'state':0,'current':None},'delay':False}
class TimingVM(VM):
 def __init__(self,program,context):
  self.context=context;self.labels={};self.dictionary_pointers={};self.core_effects=[]
  fixture={'db':{},'player':{'isBattle':context['isBattle']},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False}
  super().__init__(program,fixture);self.instances['PlayerBase']=self.player
  self.instances['GameManager']=self.alloc(64);dragon=self.alloc(256);self.instances['DragonValleyManager']=dragon
  h=context['dragonHunt'];hunt=self.alloc(256) if h is not None else 0;self.write(dragon+48,8,hunt)
  if h is not None:self.wrap(hunt+96,h['Cook_CountSkillReduce'])
  grinding=self.alloc(256);self.instances['SkillGrindingManager']=grinding;self.write(grinding+32,8,self.alloc(32))
  values={k:v for k,v in context['data'].items() if k not in ['skill','curAttackCount','currentSkillBanState']}
  self.data=self.object('SkillData',values);self.wrap(self.data+656,context['data']['curAttackCount'],'LiappSecureFloat',48)
  self.write(self.data+72,4,context['data']['currentSkillBanState'])
  s=context['data']['skill'];skill=self.alloc(256)
  for key,offset in [('Index',16),('activeType',140),('dmgType',148)]:self.write(skill+offset,4,s[key])
  self.write(self.data+32,8,skill)
  klass=self.alloc(1600);self.write(self.data,8,klass)
  for offset,va in [(536,0x5309868),(552,0x5309d30),(568,0x5309dfc)]:self.write(klass+offset,8,va);self.write(klass+offset+8,8,0)
  slot=self.alloc(256);self.write(self.data+40,8,slot)
  for offset,label in [(80,'cooltime'),(88,'cooltime.fillAmount'),(96,'cooltime.text'),(104,'attackCount'),(112,'attackCount.fillAmount'),(120,'attackCount.text'),(168,'stack'),(176,'stack.text')]:
   ptr=self.alloc(64);self.labels[ptr]=label;self.write(slot+offset,8,ptr)
   tklass=self.alloc(1600);self.write(ptr,8,tklass);self.write(tklass+1512,8,0xffff1020);self.write(tklass+1520,8,0)
  self.write(self.data+968,8,0)
  self.co=self.alloc(48);self.write(self.co+16,4,context['coroutine']['state']);self.write(self.co+24,8,0);self.write(self.co+32,8,self.data)
  dbklass=self.alloc(256);static=self.alloc(512);self.classes['DatabaseManager']=dbklass;self.write(dbklass+228,4,1);self.write(dbklass+184,8,static);self.write(static,8,self.db)
  for key,offset in [('SkillStoneOption_SkillCoolTimePercent',256),('SkillStoneOption_AttackCountPercent',272)]:
   ptr=self.alloc(32);self.write(static+offset,8,ptr);self.dictionary_pointers[ptr]=context['statics'][key]
 def wrap(self,ptr,value,kind='SilentFloat',n=72):
  for j in range(0,n,8):self.write(ptr+j,8,0)
  self.write(ptr,8,Wrapped(f32(value),kind))
 def hook(self,target):
  c=self.context
  if target==0x5313560:self.put('x0',0xffff2000)
  elif target==0x805a310:
   found=c['grinding'] is not None;self.put('w0',int(found));self.write(self.reg('x2'),8,0xffff2010 if found else 0)
  elif target in [0x53127cc,0x5312850]:self.wrap(self.reg('x8'),c['grinding']['SkillCoolTimePercent' if target==0x53127cc else 'AttackCountPercent'])
  elif target==0x80e29f8:self.setfp('s0',self.dictionary_pointers[self.reg('x0')][str(self.reg('w1'))])
  elif target in [0x5059db8,0x5059eec]:self.setfp('s0',c['dragonHunt']['SkillCoolTimePercent' if target==0x5059db8 else 'WindSkillCountDecrease'])
  elif target==0x46dbf98:self.wrap(self.reg('x8'),self.fp('s0'),'LiappSecureFloat',48)
  elif target==0x46e350c:self.setfp('s0',self.read(self.reg('x0'),8).value)
  elif target==0x46e34e0:self.wrap(self.reg('x8'),f32(self.read(self.reg('x0'),8).value-1),'LiappSecureFloat',48)
  elif target==0x9a03bd4:self.core_effects.append({'name':self.labels[self.reg('x0')]+'.SetActive','args':[bool(self.reg('w1'))]})
  elif target==0x9b24f9c:self.core_effects.append({'name':self.labels[self.reg('x0')],'args':[self.fp('s0')]})
  elif target==0x8e746e4:
   ptr=self.alloc(16);self.labels[ptr]=str(signed(self.read(self.reg('x0'),4),32));self.put('x0',ptr)
  elif target==0x530b608:
   ptr=self.alloc(16);self.labels[ptr]=self.fp('s0');self.put('x0',ptr)
  elif target==0xffff1020:
   label=self.labels[self.reg('x0')];value=self.labels[self.reg('x1')]
   self.core_effects.append({'name':'cooltime.elapsed' if label=='cooltime.text' else label,'args':[value]})
  elif target==0x5306c34:self.core_effects.append({'name':'SkillUsingCheck','args':[]})
  elif target in [0x5309d30,0x5309dfc]:
   ptr=self.alloc(48);self.labels[ptr]='normal' if target==0x5309d30 else 'delay';self.put('x0',ptr)
  elif target==0x9a05d2c:pass
  elif target==0x9a05bfc:self.core_effects.append({'name':'coroutine.replace','args':[self.labels[self.reg('x1')]]})
  elif target==0x4e44954:self.setfp('s0',c['gameDeltaTime'])
  else:super().hook(target)
 def result(self):
  out={}
  for key,offset,kind in [('curCooltime',316,'f'),('curAttackCount',656,'w'),('SkillUsePossible',56,'b'),('_cooltimeDirty',312,'b'),('_maxCooltimePlus',168,'w'),('_maxCooltimePlusNone',240,'w'),('_maxAttackCountResult',584,'w'),('cooltimeReduceFactor',84,'f'),('useStackCount',860,'i')]:
   value=self.floating(self.data+offset,'s') if kind=='f' else self.read(self.data+offset,8).value if kind=='w' else bool(self.read(self.data+offset,1)) if kind=='b' else str(signed(self.read(self.data+offset,4),32))
   out[key]=value
  return out
methods={'cooltimeReduceFactor':0x5305a90,'cooltimeAddValue':0x5305af0,'setMaxCooltimePlus':0x5305b90,'maxCooltimePlus':0x5305e70,
 'maxAttackCountResult':0x53061e8,'setCooltimeReduceAmount':0x5307184,'attackCountSetting':0x5309588,'attackCountStart':0x5309668,
 'attackCounting':0x53096d8,'attackCountUpdate':0x5309868,'skillCoolTimeSetting':0x5309adc,'skillCoolTimeStart':0x5309c88,
 'cooltimeCharge':0x530a30c,'cooltimeChargeTimeSkill':0x530a5f0,'skillCooltimeReset':0x530b140,'skillCooltimeResetAncient':0x530b238,
 'moveCooltime':0x530da34,'moveCooltimeDelay':0x530dd6c,'skillBanCheck':0x5305790,'invalidateMaxCooltime':0x5305b44}
fixtures=[copy.deepcopy(base)];rng=random.Random(705106)
for j in range(35):
 c=copy.deepcopy(base);d=c['data'];d['skill']['activeType']=rng.choice([2,4,8,10,11]);d['skill']['dmgType']=rng.choice([0,1,2,3,4]);d['skill']['Index']=rng.choice([1,1006]);
 for k in ['SkillUsePossible','SkillBan','SkillSpecialBan','SkillCoolTimeReduceBuff','_cooltimeDirty']:d[k]=bool(rng.randrange(2))
 for k in ['maxCooltime','maxAttackCount']:d[k]=rng.choice([.0001,.1,.5,1.5,2.5,10,13.25])
 d['curCooltime']=rng.choice([-1,0,.005,2,12]);d['curAttackCount']=rng.choice([-1,0,.5,3,30]);d['useStackCount']=rng.choice([0,1,2,3]);d['currentSkillBanState']=rng.choice([0,8])
 for k in ['skilleffectCooltimeReduceFactor','cooltimeReduceFactor','CooltimeIncreaseFactor']:d[k]=rng.choice([-.5,0,.25,1,1.2,2])
 c['statics']={key:{str(i):rng.choice([-150,-33.3333,0,12.5,250]) for i in range(1,5)} for key in c['statics']}
 c['grinding']=rng.choice([None,{'SkillCoolTimePercent':12.5,'AttackCountPercent':33.3333}]);c['dragonHunt']={key:rng.choice([-50,0,12.5,100]) for key in c['dragonHunt']}
 c['isBattle']=bool(rng.randrange(2));c['gameDeltaTime']=rng.choice([0,.016666667,1,10]);c['amount']=rng.choice([-200,0,12.5,50,100,200]);c['coroutine']['state']=rng.choice([-1,0,1,2]);c['delay']=bool(rng.randrange(2));fixtures.append(c)
for field in ['maxCooltime','curCooltime','curAttackCount','maxAttackCount','amount']:
 c=copy.deepcopy(base)
 if field=='amount':c[field]=float('nan')
 else:c['data'][field]=float('nan')
 fixtures.append(c)
def encode_special(value):
 if isinstance(value,float) and not __import__('math').isfinite(value):return {'$float64':struct.pack('<d',value).hex()}
 if isinstance(value,list):return [encode_special(x) for x in value]
 if isinstance(value,dict):return {k:encode_special(v) for k,v in value.items()}
 return value
vectors=[];steps=0;visited=set()
for case,c in enumerate(fixtures):
 for name,entry in methods.items():
  vm=TimingVM(P,c);ptr=vm.alloc(80);vm.put('x8',ptr);vm.setfp('s0',c['amount']);vm.put('w1',int(c['delay']))
  count=vm.run(entry,this_ptr=vm.co if name.startswith('moveCooltime') else vm.data);steps+=count;visited.update(vm.visited)
  result={'state':vm.result(),'effects':vm.core_effects}
  if name in ['cooltimeReduceFactor','cooltimeAddValue','maxCooltimePlus']:result['value']=vm.fp('s0')
  elif name=='maxAttackCountResult':result['value']=vm.read(ptr,8).value
  elif name=='skillBanCheck':result['value']=bool(vm.reg('w0'))
  elif name.startswith('moveCooltime'):result['value']=bool(vm.reg('w0'));result['coroutineState']=signed(vm.read(vm.co+16,4),32)
  vectors.append({'case':case,'method':name,'fixture':c,'expected':result})
(root/'timing-native-flow-vectors.json').write_text(json.dumps(encode_special(vectors),indent=2,allow_nan=False)+'\n')
report={'cases':len(vectors),'snapshots':len(fixtures),'entries':len(methods),'instruction_steps':steps,'distinct_instructions_visited':len(visited),
 'scope':'SkillData method bodies with decrypted wrappers, account getters, UI calls, iterator allocation and localization represented explicitly; not Unity or live IFix validation.'}
(root/'timing-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
