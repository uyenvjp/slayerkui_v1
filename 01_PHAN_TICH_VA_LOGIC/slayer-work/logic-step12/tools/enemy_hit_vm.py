"""Full GetDmg orchestration plus selected original status/math bodies.

Normal/Boss/SpecialBoss modifiers and DmgResult lifecycle are explicit fixture
boundaries. Unity/replay/quests/account getters/secure values remain models.
"""
from pathlib import Path
import re,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-step6/tools'))
from native_flow_vm import Program,VM,Wrapped,signed,f32

class EnemyHitVM(VM):
 def __init__(self,p,f):
  super().__init__(p,{'db':{},'player':{},'dragon':None,'demon':None,'presetStat':None,'playerHpUpdatePresent':False});self.f=f;self.effects=[];self.draws=0;self.received=None;self.tag_objects={};self.dicts={};self.mastery_values={};self.option_values={}
  self.enemy=self.zero(1024);klass=self.zero(1400);self.write(self.enemy,8,klass)
  for off,fn in [(472,0xffff2001),(584,0xffff2002),(680,0xffff2003),(696,0xffff2004),(1224,0xffff2005),(1240,0xffff2006),(1256,0xffff2007)]:self.write(klass+off,8,fn)
  pclass=self.zero(800);self.write(self.player,8,pclass);self.write(pclass+504,8,0xffff2008);self.instances['PlayerBase']=self.player
  e=f['enemy']
  for off,k,n in [(512,'HitPossible',1),(360,'MissState',1),(488,'isNeedIceEffect',1),(514,'isDead',1),(536,'isBurning1',1),(537,'isBurning2',1),(324,'MonsterType',4),(304,'characterDmgType',4)]:self.write(self.enemy+off,n,e[k])
  self.write(self.enemy+528,8,self.zero(32) if e['stunPresent'] else 0);self.write(self.enemy+520,8,self.zero(32) if e['icePresent'] else 0);self.write(self.enemy+344,8,self.zero(32) if f['animatorPresent'] else 0)
  self.int_class=self.zero(512);self.write(self.p.elf.u64(0xa3e74e0)+72,8,self.int_class)
  self.combined_class=self.metadata_class(0xa3f2bd8);self.beast_class=self.metadata_class(0xa3f2bf0)
  self.tag=self.make_tag(f['args']['skillTag']);self.write(self.enemy+504,8,self.make_tag(e['lastSkillTag']))
  game=self.zero(1600);self.instances['GameManager']=game;self.write(game+1516,1,f['context']['cameraShake'])
  self.instances['ReplayManager']=self.zero(64);skill=self.zero(1300);self.instances['SkillManager']=skill;grinding=self.zero(64);self.instances['SkillGrindingManager']=grinding;self.write(grinding+32,8,self.zero(64))
  self.mastery_dict=self.zero(32);self.write(skill+1200,8,self.mastery_dict);self.option_dict=self.zero(32)
  for key,value in f['context']['mastery'].items():
   ptr=0 if value is None else self.zero(32);self.mastery_values[ptr]=value;self.dicts.setdefault(self.mastery_dict,{})[int(key)]=ptr
  for key,value in f['context']['grinding'].items():
   ptr=0 if value is None else self.zero(32);self.option_values[ptr]=value;self.dicts.setdefault(self.option_dict,{})[int(key)]=ptr
  self.dicts.setdefault(self.mastery_dict,{});self.dicts.setdefault(self.option_dict,{})
  dragon=self.zero(128);self.instances['DragonValleyManager']=dragon;self.write(dragon+48,8,self.zero(64))
  for off in range(168,216,8):self.write(self.db+off,8,0)
 def zero(self,size):
  ptr=self.alloc(size)
  for off in range(size):self.write(ptr+off,1,0)
  return ptr
 def metadata_class(self,usage):
  val=self.p.elf.u64(self.p.elf.u64(usage));assert val>>29==1;name=self.p.types[(val>>1)&0xfffffff]['name'];klass=self.zero(512);static=self.zero(256);self.classes[name]=klass;self.write(klass+228,4,1);self.write(klass+184,8,static);self.write(klass+304,1,1);return klass
 def make_tag(self,tag):
  if tag is None:return 0
  ptr=self.zero(32)
  if isinstance(tag,int):self.write(ptr,8,self.int_class);self.write(ptr+16,4,tag)
  else:
   klass=self.combined_class if tag['kind']=='CombinedDemon' else self.beast_class if tag['kind']=='DivineBeastDmgInfoData' else self.zero(512)
   ancestry=self.zero(8);self.write(ancestry,8,klass);self.write(klass+200,8,ancestry);self.write(ptr,8,klass)
  self.tag_objects[ptr]=tag;return ptr
 def decode_tag(self,ptr):return None if not ptr else self.tag_objects.get(ptr,signed(self.read(ptr+16,4),32))
 def address(self,operand):
  m=re.fullmatch(r'\[(x\d+), (w\d+), uxtw #(\d+)\]',operand)
  if m:return self.reg(m[1])+(self.reg(m[2])<<int(m[3])),m[1]
  return super().address(operand)
 def emit(self,name,*args):self.effects.append({'name':name,'args':list(args)})
 def hook(self,t):
  c=self.f['context']
  if t==0xffff2001:self.setfp('s0',c['miss'])
  elif t==0xffff2008:self.setfp('s0',c['accuracy'])
  elif t in [0x4590bec,0x4124344]:self.put('x0',self.reg('x0')+16)
  elif t==0x46e2dcc:self.put('w0',c['userLevel'])
  elif t==0x99fb5c0:self.draws+=1;self.setfp('s0',c['randomUnit'])
  elif t==0x4ef6160:self.setfp('s0',c['abnormalSkillValue'])
  elif t==0x5059e48:self.setfp('s0',c['freezeAddDamage'])
  elif t==0x50b7248:self.emit('ScheduleAbnormalAddDamage')
  elif t==0x5313560:self.put('x0',self.option_dict)
  elif t==0x805a310:
   d=self.dicts[self.reg('x0')];k=signed(self.reg('w1'),32);self.write(self.reg('x2'),8,d.get(k,0));self.put('w0',k in d)
  elif t==0x53058ac:self.put('w0',self.mastery_values[self.reg('x0')])
  elif t in [0x5312ae4,0x53129dc]:
   ptr=self.reg('x8');key='Accuracy' if t==0x5312ae4 else 'DmgType'
   for off in range(0,72,8):self.write(ptr+off,8,0)
   self.write(ptr,8,Wrapped(f32(self.option_values[self.reg('x0')][key]),'SilentFloat'))
  elif t==0x4eff710:self.emit('Player.CheckRandomCameraShake')
  elif t==0x99a12a8:self.emit('Animator.Hit')
  elif t==0xffff2002:self.emit('HitEffect',bool(self.read(self.enemy+488,1)))
  elif t==0x4d18dac:self.put('x0',self.zero(32))
  elif t==0x4d1ac84:self.emit('Sound.Hit')
  elif t in [0x50b8b60,0x50b8cbc,0x50b8e74]:
   kind={0x50b8b60:'Normal',0x50b8cbc:'Boss',0x50b8e74:'SpecialBoss'}[t];self.emit('Modifier.'+kind,str(self.big('x1','x2')),signed(self.reg('w3'),32),signed(self.reg('w4'),32),bool(self.reg('w5')))
   self.pair('x0','x1',int(c['modifierReturns'][kind]))
  elif t==0xffff2003:self.emit('FloatDmgText',str(self.big('x1','x2')),signed(self.reg('w3'),32))
  elif t in [0xffff2006,0xffff2007]:
   self.received=str(self.big('x1','x2'));self.emit('DotDmgResult' if t==0xffff2006 else 'DmgResult',self.received);self.write(self.enemy+514,1,c['resultDead'])
  elif t==0xffff2005:self.emit('AddDamageInfo',self.decode_tag(self.reg('x1')),str(self.big('x2','x3')))
  elif t==0x527f854:self.emit('Replay.AddFrameSkillDamage',self.decode_tag(self.reg('x1')),str(self.big('x2','x3')))
  elif t==0x5280000:self.put('w0',c['needRecording'])
  elif t in [0x52823b0,0x5282554]:self.put('x0',self.zero(32))
  elif t==0x5289e20:self.emit('SeasonQuest.TryAddCount',signed(self.reg('w1'),32),self.decode_tag(self.reg('x2')),signed(self.reg('w3'),32))
  elif t==0x4e41f54:self.put('w0',c['gameMode'])
  elif t==0xffff2004:self.emit('FloatString.Miss')
  else:super().hook(t)
 def snapshot(self):return {'lastSkillTag':self.decode_tag(self.read(self.enemy+504,8)),'isNeedIceEffect':bool(self.read(self.enemy+488,1)),'isDead':bool(self.read(self.enemy+514,1)),'resultDamage':self.received,'effects':self.effects,'randomDraws':self.draws}
