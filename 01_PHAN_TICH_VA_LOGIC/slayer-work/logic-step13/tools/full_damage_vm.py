"""Stronger variant: native normal/boss/special modifiers, no output stubs."""
from enemy_lifecycle_vm import EnemyLifecycleVM,signed

class FullDamageVM(EnemyLifecycleVM):
 def __init__(self,p,f):
  super().__init__(p,f);s=f['stats'];klass=self.read(self.enemy,8)
  self.write(klass+920,8,0x5018334);self.write(klass+1288,8,0x50bba54)
  for offset,key,kind,size in [(11632,'blackOrbNormal','SilentLong',64),(11696,'blackOrbBoss','SilentLong',64),(22176,'themeNormal','SilentInt',64),(22240,'themeBoss','SilentInt',64)]:self.wrap(self.db+offset,size,int(s[key]),kind)
  for offset,key in [(1560,'beastBoss'),(2192,'lowHpThreshold'),(2264,'lowHpBonus')]:self.wrap(self.player+offset,72,s[key],'SilentFloat')
  self.db_static=self.read(self.classes['DatabaseManager']+184,8);self.write(self.db_static+304,4,s['bossHitCount'])
 def observe_instruction(self,pc):
  if pc in [0x50b8b60,0x50b8cbc,0x50b8e74]:
   kind={0x50b8b60:'Normal',0x50b8cbc:'Boss',0x50b8e74:'SpecialBoss'}[pc];self.emit('Modifier.'+kind,str(self.big('x1','x2')),signed(self.reg('w3'),32),signed(self.reg('w4'),32),bool(self.reg('w5')))
  super().observe_instruction(pc)
 def hook(self,t):
  if t in [0x4d59090,0x4d58f70] and self.reg('w1')!=7:
   index=str(self.reg('w1'))
   if t==0x4d59090:self.setfp('s0',self.f['stats']['spiritValues'][index])
   else:self.put('w0',self.f['stats']['spiritChecks'][index])
  elif t in [0x917e74c,0x917e6cc,0x917e64c]:
   a,b=self.big('x0','x1'),self.big('x2','x3');self.put('w0',a>=b if t==0x917e74c else a>b if t==0x917e6cc else a<=b)
  else:super().hook(t)
 def snapshot(self):return {**super().snapshot(),'bossHitCount':signed(self.read(self.db_static+304,4),32)}
