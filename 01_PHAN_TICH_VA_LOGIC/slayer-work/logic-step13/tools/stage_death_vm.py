"""Mode0 continuation: actual EnemyRemove and Enemy_Dead; spawn/UI are sinks."""
import struct
from full_damage_vm import FullDamageVM,signed
class StageDeathVM(FullDamageVM):
 def __init__(self,p,f):
  super().__init__(p,f);g=f['game'];self.active=True;self.enemies=[self.enemy]+[self.zero(32) for _ in range(g['otherEnemies'])]
  self.enemy_list=self.zero(64) if g['listPresent'] else 0;self.write(self.game+320,8,self.enemy_list)
  if self.enemy_list:self.write(self.enemy_list+24,4,len(self.enemies))
  self.write(self.game+1416,4,g['waveCount'])
  for n,value in enumerate(g['endPosition']):self.write(self.game+1424+n*4,4,int.from_bytes(struct.pack('<f',value),'little'))
  klass=self.read(self.p.elf.u64(0xa3e8278),8);static=self.read(klass+184,8)
  for n,value in enumerate(g['rightVector']):self.write(static+60+n*4,4,int.from_bytes(struct.pack('<f',value),'little'))
 def observe_instruction(self,pc):
  if pc==0x4e466f8:self.emit('GameManager.Enemy_Dead',bool(self.reg('w2')))
  super().observe_instruction(pc)
 def hook(self,t):
  if t==0x6c0a1b0:
   assert self.reg('x0')==self.enemy_list;target=self.reg('x1');found=target in self.enemies
   if found:self.enemies.remove(target)
   self.write(self.enemy_list+24,4,len(self.enemies));self.emit('EnemyList.Remove',found);self.put('w0',found)
  elif t==0x9a006b0:self.put('x0',self.enemy)
  elif t==0x9a03bd4:self.active=bool(self.reg('w1'));self.emit('Enemy.SetActive',self.active)
  elif t==0x4e479ec:self.emit('Start_MakeEnemy_Stage')
  elif t==0x4e47d28:self.emit('StageBar_Update')
  elif t==0x4e47d80:self.emit('MakeEnemy_RewardBox',self.fp('s0'),self.fp('s1'),self.fp('s2'))
  elif t==0x4e48220:self.emit('Stage_RestartIE');self.put('x0',self.zero(64))
  elif t==0x9a05bfc:self.emit('Game.StartCoroutine');self.put('x0',self.zero(64))
  else:super().hook(t)
 def snapshot(self):return {**super().snapshot(),'game':{'waveCount':signed(self.read(self.game+1416,4),32),'endPositionBits':[struct.pack('<f',self.floating(self.game+1424+n*4,'s')).hex() for n in range(3)],'enemiesRemaining':len(self.enemies) if self.enemy_list else None,'enemyActive':self.active}}
