"""Original level bodies with concrete registered baseline callback."""
from experience_vm import Program,ExperienceVM,signed,f32,number
class LevelFlowVM(ExperienceVM):
 def __init__(self,p,f):
  super().__init__(p,f)
  self.wrap(self.db+216,48,f['userStatPoint'],'LiappSecureInt');self.write(self.this+228,4,f['levelUpCount']);self.write(self.this+208,1,f['userLevelUpIng']);self.write(self.this+225,1,f['isPointerDown']);self.write(self.this+224,1,f['levelUpDelay'])
  self.contents=self.alloc(64);self.write(self.db+48,8,self.contents)
  for key,offset in [('Skin',42),('RankingBattle',36),('Training',37)]:self.write(self.contents+offset,1,f['contentsOpen'][key])
  self.level_events=self.alloc(32);self.write(self.this+200,8,self.level_events);self.level_delegates={}
  for key,actions in f['levelEvents'].items():
   ptr=self.alloc(80) if actions is not None else 0;self.level_delegates[int(key)]=ptr
   if ptr:self.write(ptr+24,8,0xffff9402);self.write(ptr+64,8,0);self.write(ptr+40,8,0)
  klass=self.alloc(256);static=self.alloc(256);self.classes['StatManager']=klass;self.write(klass+228,4,1);self.write(klass+184,8,static);self.write(static,8,self.this)
  callback=self.alloc(80) if f['levelActionPresent'] else 0;self.write(static+8,8,callback)
  if callback:self.write(callback+24,8,0x4f1758c);self.write(callback+64,8,self.this);self.write(callback+40,8,0)
  for name in ['DailyTimeManager','QuestManager','SkillManager','ObjectPooler_Effect','MiniQuestManager','TutorialManager','ContentsOpenManager','SlayerClassManager','TrainingManager','PlayerClassManager','AlarmManager']:self.instances[name]=self.alloc(64)
  self.season=self.alloc(64);self.season_quest=self.alloc(64);self.sound=self.alloc(64);sound_class=self.alloc(1600);self.write(self.sound,8,sound_class)
  for offset,target in [(1320,0xffff9403),(1448,0xffff9404)]:self.write(sound_class+offset,8,target);self.write(sound_class+offset+8,8,0)
  self.ui={};ui_class=self.alloc(1600);self.write(ui_class+1512,8,0xffff9405);self.write(ui_class+1520,8,0)
  for off,key in [(104,'level'),(56,'levelMain')]:ptr=self.alloc(64);self.write(ptr,8,ui_class);self.write(self.this+off,8,ptr);self.ui[ptr]=key
  for off in [96,232,240]:self.write(self.this+off,8,self.alloc(64))
  self.tutorial_keys={p.elf.u64(p.elf.u64(addr)):name for addr,name in [(0xa42c258,'skin'),(0xa42c218,'level200'),(0xa42c220,'plaza'),(0xa42c228,'cave'),(0xa42c250,'slayerClass'),(0xa42c210,'dragonForce'),(0xa42c238,'rankingBattle'),(0xa42c230,'training')]}
  self.sync=self.alloc(64)
  self.instances['TimeManager']=self.alloc(64);self.iterator=self.alloc(64);self.write(self.iterator+16,4,f['iterator']['state']);self.write(self.iterator+24,8,0 if f['iterator']['current'] is None else 0x1234);self.write(self.iterator+32,8,self.this);self.write(self.iterator+40,4,0);self.setfp('s0',number(f['iterator']['time']));self.save('s0',self.iterator+40);self.waits={}
 def hook(self,t):
  if t==0x46dbfdc:self.wrap(self.reg('x8'),48,signed(self.reg('w0'),32),'LiappSecureInt')
  elif t==0x46e2df4:self.put('w0',int(self.read(self.reg('x0'),8).value==self.read(self.reg('x1'),8).value))
  elif t==0x4b50df8:
   ptr=self.reg('x0');value=self.big('x1','x2');super().hook(t)
   if ptr==self.this+160:self.emit('MaxExp.Write',str(value))
  elif t in [0x4930e14,0x46e2dd0,0x8cd9f2c,0x49252c4]:self.put('x0',self.alloc(24))
  elif t==0xffff9405:self.emit('UI.Text',self.ui[self.reg('x0')])
  elif t==0x4e90fb8:self.emit('DailyTimeManager.Package0_Setting')
  elif t==0x4f16680:self.emit('StatManager.StatPointDisplay')
  elif t==0x99a12a8:self.emit('Animator.StatPoint.SetTrigger')
  elif t==0x4ec80d0:self.emit('UpgradeEffect')
  elif t==0x4d18dac:self.put('x0',self.sound)
  elif t==0xffff9403:self.emit('Sound.Virtual1320')
  elif t==0xffff9404:self.emit('Sound.Virtual1448')
  elif t==0x5274cc4:self.emit('MiniQuestManager.MiniQuest_Update',signed(self.reg('w1'),32))
  elif t==0x4d24a88:self.emit('UsefulManager.AdjustEventLevel',signed(self.reg('w1'),32))
  elif t==0x4d535bc:self.emit('TryCallKinesisLog',signed(self.reg('w1'),32),signed(self.reg('w2'),32))
  elif t==0x8058a28:
   assert self.reg('x0')==self.level_events;self.put('w0',int(signed(self.reg('w1'),32) in self.level_delegates))
  elif t==0x8058794:
   assert self.reg('x0')==self.level_events;self.put('x0',self.level_delegates[signed(self.reg('w1'),32)])
  elif t==0xffff9402:
   level=self.read(self.db+168,8).value;state=self.state();self.emit('LevelEvent.Invoke',level,self.f['levelEvents'][str(level)],{k:state[k] for k in ['level','currentExp','maxExp','userStatPoint','levelUpCount']})
  elif t==0x4c68a50:self.put('x0',self.instances['TutorialManager'])
  elif t==0x4c68f70:self.emit('TutorialManager.Set',signed(self.reg('w1'),32),self.tutorial_keys[self.reg('x2')])
  elif t==0x52823b0:self.put('x0',self.season)
  elif t==0x5282554:self.put('x0',self.season_quest)
  elif t==0x5289e20:self.emit('SeasonQuest.TryAddCount',signed(self.reg('w1'),32),signed(self.reg('w2'),32),signed(self.reg('w3'),32))
  elif t==0x527a3e0:self.emit('QuestManager.NoticeCheck_Achievement',signed(self.reg('w1'),32))
  elif t==0x527c758:self.emit('QuestManager.UpdateQuestType',signed(self.reg('w1'),32))
  elif t==0x509471c:self.emit('SkillManager.SetActiveSkillGainShortCut')
  elif t==0x9a03bd4:self.emit('LevelUpEffect.SetActive',bool(self.reg('w1')))
  elif t==0x4f19488:self.emit('StatManager.ForceOption_Stat_Update')
  elif t==0x4d403d0:self.emit('DatabaseManager.get_SyncExp');self.put('x0',self.sync)
  elif t==0x50cc2b4:assert self.reg('x1')==self.sync;self.emit('APIManager.LevelUp',signed(self.reg('w0'),32),self.f['syncExpInput'])
  elif t==0x5247ca0:self.emit('PlayerClassManager.CheckReddot')
  elif t==0x4d5937c:self.emit('DatabaseManager.LogError','user-level-cap')
  elif t==0x4cf1b20:self.emit('AlarmManager.MissingExp')
  elif t==0x4121774:self.put('x0',self.alloc(64))
  elif t==0x6e4b24c:self.emit('External.0x6e4b24c')
  elif t in [0x53e5224,0x53e4f2c,0x5375068,0x4f17230,0x53e4fd0,0x53e5074,0x53d8040,0x5077aac]:self.emit({0x53e5224:'ContentsOpenManager.ContentsOpenCheck_Plaza',0x53e4f2c:'ContentsOpenManager.ContentsOpenCheck_Cave',0x5375068:'SlayerClassManager.SlayerClass_OpenCheck',0x4f17230:'StatManager.DragonForce_OpenCheck',0x53e4fd0:'ContentsOpenManager.ContentsOpenCheck_PunchMachine',0x53e5074:'ContentsOpenManager.ContentsOpenCheck_RankingBattle',0x53d8040:'TrainingManager.Training_OpenCheck',0x5077aac:'SkillManager.SkillDeck_AddCheck'}[t])
  elif t==0x4b50100:self.emit('Reddot.Notify',signed(self.reg('w0'),32),bool(self.reg('w1')))
  elif t==0x4cfab0c:self.emit('TimeManager.ForceSyncStagePlay')
  elif t==0x4b592c8:
   seconds=self.fp('s0');ptr=self.alloc(24);self.waits[ptr]={'waitForSeconds':seconds};self.put('x0',ptr);self.emit('WaitForSeconds',seconds)
  else:super().hook(t)
 def state(self):return {**super().state(),'userStatPoint':self.read(self.db+216,8).value,'levelUpCount':signed(self.read(self.this+228,4),32),'userLevelUpIng':bool(self.read(self.this+208,1)),'isPointerDown':bool(self.read(self.this+225,1)),'levelUpDelay':bool(self.read(self.this+224,1))}
 def iterator_result(self):
  current=self.read(self.iterator+24,8);return {'iterator':{'state':signed(self.read(self.iterator+16,4),32),'current':None if not current else self.waits.get(current,'old'),'time':self.floating(self.iterator+40,'s')},'yielded':bool(self.reg('w0'))}
