"""Connected source method bodies; Unity/account/API sinks remain explicit."""
from equipment_vm import EquipmentVM,Wrapped,signed,f32,bits
from currency_vm import CurrencySupport
class EquipmentFlowVM(EquipmentVM):
 def __init__(self,p,fixture):
  super().__init__(p,fixture);m=fixture['manager'];self.cube=int(fixture['db']['upgradeCube']);self.waits={}
  self.write(self.this+288,8,self.items[m['currentIndex']]);self.write(self.this+296,8,int(m['currentValue']));self.wrap(self.this+304,48,int(m['currentPrice']),'LiappSecureLong')
  for key,off in [('countValueCheck',368),('hCount',400),('upgradeCount',416)]:self.write(self.this+off,4,m[key])
  self.write(self.this+404,1,m['delayBusy']);self.write(self.this+405,1,m['isHolding'])
  self.wrap(self.db+15440,48,int(fixture['db']['equipmentUpgradeCount']),'LiappSecureLong');self.wrap(self.db+2320,48,fixture['db']['equippedIndex'],'LiappSecureInt');self.wrap(self.db+2368,64,int(fixture['db']['equipmentAtk']),'SilentLong')
  self.instances['GoodsDisplayManager']=self.alloc(64);self.instances['QuestManager']=self.alloc(64);self.instances['ObjectPooler_Effect']=self.alloc(64);self.instances['AlarmManager']=self.alloc(64)
  self.instances['PlayerBase']=self.player;self.write(p.elf.u64(0xa3e74e0)+72,8,self.alloc(256))
  sound=self.alloc(64);sc=self.alloc(1500);self.sound=sound;self.write(sound,8,sc)
  for offset,hook in [(1320,0xffff9101),(1400,0xffff9102)]:self.write(sc+offset,8,hook);self.write(sc+offset+8,8,0)
  self.ui={};uc=self.alloc(1600)
  for offset,hook in [(1512,0xffff9201),(712,0xffff9202),(680,0xffff9203)]:self.write(uc+offset,8,hook);self.write(uc+offset+8,8,0)
  for offset,name in [(160,'display'),(184,'atk'),(208,'ownedAtk'),(232,'critical'),(240,'gold'),(248,'button'),(272,'price')]:
   obj=self.alloc(64);self.write(obj,8,uc);self.write(self.this+offset,8,obj);self.ui[obj]=name
  slots=self.alloc(32+25*8);self.write(slots+24,8,25);self.write(self.this+56,8,slots);self.slot_indices={}
  for i in range(25):obj=self.alloc(64);self.write(slots+32+i*8,8,obj);self.slot_indices[obj]=i
  # Modeled initialized localization/format metadata. Actual strings and their
  # layout are outside the business-state comparison, not silently generated.
  for usage in [0xa3f0248,0xa3ee800]:
   klass=self.alloc(256);context=self.alloc(64);self.write(p.elf.u64(usage),8,klass);self.write(klass+56,8,context);self.write(context+8,8,self.alloc(24));self.write(context+16,8,self.alloc(24))
  self.iterator=self.alloc(64);self.write(self.iterator+32,8,self.this)
  self.write(self.iterator+16,4,fixture['iterator']['state']);self.write(self.iterator+24,8,0 if fixture['iterator']['current'] is None else 0x1234)
 def emit(self,name,*args):self.effects.append({'name':name,'args':list(args)})
 def hook(self,t):
  if t==0x46e204c:
   w=self.read(self.reg('x0'),8);assert w.type=='LiappSecureLong';self.put('x0',w.value)
  elif t in [0x46dc024,0x46dbfdc]:self.wrap(self.reg('x8'),48,signed(self.reg('x0' if t==0x46dc024 else 'w0'),64 if t==0x46dc024 else 32),'LiappSecureLong' if t==0x46dc024 else 'LiappSecureInt')
  elif t in [0x46e2d7c,0x46e1ffc]:
   w=self.read(self.reg('x0'),8);integer=t==0x46e2d7c;self.wrap(self.reg('x8'),48,signed(w.value+1,32 if integer else 64),'LiappSecureInt' if integer else 'LiappSecureLong')
  elif t==0x46e2ff8:self.put('w0',int(self.read(self.reg('x0'),8).value==self.read(self.reg('x1'),8).value))
  elif t==0x4b5279c:
   value=signed(self.reg('x1'),64);self.wrap(self.reg('x0'),64,value,'SilentLong');self.emit('EquipmentAtk.Write',str(value))
  elif t==0x4d40850:self.wrap(self.reg('x8'),48,self.cube,'LiappSecureLong')
  elif t==0x4d462a0:
   assert self.reg('w1')==6;amount=signed(self.reg('x2'),64);self.cube=signed(self.cube-amount,64);self.emit('UseCurrency',6,str(amount))
  elif t==0x4e9d8fc:self.emit('GoodsDisplayManager.UpgradeCubeUpdate')
  elif t==0x4d535bc:self.emit('TryCallKinesisLog',signed(self.reg('w1'),32),signed(self.reg('w2'),32))
  elif t==0x527a3e0:self.emit('NoticeCheck_Achievement',signed(self.reg('w1'),32))
  elif t==0x4ec80d0:self.emit('UpgradeEffect')
  elif t==0x4e9da08:self.emit('TrySendKinesisLog',signed(self.read(self.reg('x1')+20,4),32))
  elif t==0x4ee7294:self.emit('PlayerBase.Atk_Cal')
  elif t==0x9a005e0:self.put('x0',self.alloc(24))
  elif t==0x4d18dac:self.put('x0',self.sound)
  elif t==0xffff9101:self.emit('Sound.Virtual1320')
  elif t==0xffff9102:self.emit('Sound.Virtual1400')
  elif t==0x50c2808:self.emit('APIManager.ItemUpgrade',signed(self.reg('w0'),32),signed(self.reg('w1'),32),signed(self.reg('w2'),32))
  elif t==0x4590be8:self.put('x0',self.alloc(64)) # opaque diagnostic boxing
  elif t in [0x8cdaab4,0x4d53cfc,0x4d53e08,0x4d53f00,0x47dcb2c,0x47b51a4,0x8cd9f2c,0x8ccbe48,0x4922f54,0x4925984]:self.put('x0',self.alloc(24))
  elif t==0x4cf1b20:self.emit('AlarmText.MissingCube')
  elif t==0x4d59a14:self.emit('DataCheck_H',signed(self.reg('w2'),32),str(signed(self.reg('x3'),64)))
  elif t==0xffff9201:self.emit('UI.Text',self.ui[self.reg('x0')])
  elif t==0xffff9202:self.emit('UI.ButtonEnabled',bool(self.reg('w1')))
  elif t==0xffff9203:self.emit('UI.ButtonColor',*[self.fp('s'+str(i)) for i in range(4)])
  elif t==0x99eca0c:
   for i,value in enumerate([.5,.5,.5,1]):self.setfp('s'+str(i),value)
  elif t==0x4e97820:self.emit('EquipmentDisplay.LevelSetting',signed(self.read(self.reg('x1')+20,4),32),self.read(self.reg('x1')+32,8).value)
  elif t==0x4e98444:self.emit('EquipmentSlot.LevelRenew',self.slot_indices[self.reg('x0')])
  elif t==0x4b592c8:
   seconds=self.fp('s0');ptr=self.alloc(24);self.waits[ptr]={'waitForSeconds':seconds};self.put('x0',ptr);self.emit('WaitForSeconds',seconds)
  elif t in [0x4b514bc,0x4b51bb8,0x80424e4,0x805ef00]:
   pointer=self.reg('x0')
   if t in [0x80424e4,0x805ef00]:stat=self.dictionaries[pointer][0]
   else:stat={self.db+2432:'atk',self.db+2496:'critical',self.db+2568:'gold'}[pointer]
   before=len(self.writes);super().hook(t)
   for w in self.writes[before:]:self.emit('Owned.Write',stat,w['kind'],w.get('index'),w['valueBits'])
  else:super().hook(t)
 def state_result(self):
  m=self.f['manager'];eq={str(i):self.read(ptr+32,8).value for i,ptr in self.items.items()}
  return {'itemLevels':eq,'currentValue':str(signed(self.read(self.this+296,8),64)),'currentPrice':str(self.read(self.this+304,8).value),
   'countValueCheck':signed(self.read(self.this+368,4),32),'hCount':signed(self.read(self.this+400,4),32),'upgradeCount':signed(self.read(self.this+416,4),32),
   'delayBusy':bool(self.read(self.this+404,1)),'isHolding':bool(self.read(self.this+405,1)),
   'upgradeCube':str(self.cube),'equipmentUpgradeCount':str(self.read(self.db+15440,8).value),'equipmentAtk':str(self.read(self.db+2368,8).value),
   'owned':{kind:{k:v for k,v in self.owned_result(kind).items() if k!='writes'} for kind in ['atk','critical','gold']}}
 def iterator_result(self):
  current=self.read(self.iterator+24,8);return {'iterator':{'state':signed(self.read(self.iterator+16,4),32),'current':None if not current else self.waits.get(current,'old')},'yielded':bool(self.reg('w0'))}

class NativeCurrencyEquipmentFlowVM(CurrencySupport,EquipmentFlowVM):
 """Replace the provisional balance hook with the actual currency bodies."""
 def __init__(self,p,f):
  super().__init__(p,f);self.init_currency({'currency':6,'amount':f['db']['upgradeCube'],'totalGet':f['db']['currencyTotalGet'],'totalUsed':f['db']['currencyTotalUsed']},f['currencyEventPresent']);self.event_manager=self.alloc(128);self.main_event=self.alloc(128)
 def currency_event(self):
  c=self.currency_state();self.emit('CurrencyData.Event',c['currency'],c['amount'],c['totalGet'],c['totalUsed'])
 def hook(self,t):
  if t==0x80aa4d4:self.emit('UseCurrency',signed(self.reg('w1'),32),str(signed(self.reg('x19'),64)))
  if self.currency_hook(t):return
  if t==0x4ea5e6c:self.emit('GoodsDisplayManager.UpdateCurrency',signed(self.reg('w1'),32))
  elif t==0x7388e50:self.put('x0',self.event_manager)
  elif t==0x4d7f928:self.put('x0',self.main_event)
  elif t==0x4d7d910:self.put('w0',self.f['eventShopCurrency'])
  elif t==0x4c9c3e8:self.emit('PopupEventPass.CheckRedDot')
  else:super().hook(t)
 def state_result(self):
  c=self.currency_state();self.cube=int(c['amount']);return {**super().state_result(),'currencyTotalGet':c['totalGet'],'currencyTotalUsed':c['totalUsed']}
