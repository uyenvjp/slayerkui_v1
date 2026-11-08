"""Currency object/collection setup shared by isolated and linked analyses."""
from equipment_vm import VM,Wrapped,signed
class CurrencySupport:
 def init_currency(self,record,event_present=False):
  self.currency=self.alloc(160);self.currency_dictionary=self.alloc(32);self.instances['CurrencyData']=self.currency_dictionary
  klass=self.alloc(512);self.write(self.currency,8,klass);self.write(klass+392,8,0x501b524);self.write(klass+400,8,0);self.write(klass+408,8,0x501b5f4);self.write(klass+416,8,0)
  self.write(self.currency+24,4,record['currency']);self.currency_wrap(self.currency+48,int(record['amount']));self.write(self.currency+96,8,int(record['totalGet']));self.write(self.currency+104,8,int(record['totalUsed']))
  callback=self.alloc(80) if event_present else 0;self.write(self.currency+112,8,callback)
  if callback:self.write(callback+24,8,0xffff9301);self.write(callback+40,8,0);self.write(callback+64,8,0)
 def currency_wrap(self,ptr,value):
  for j in range(0,48,8):self.write(ptr+j,8,0)
  self.write(ptr,8,Wrapped(signed(value,64),'LiappSecureLong'))
 def currency_state(self):return {'currency':signed(self.read(self.currency+24,4),32),'amount':str(self.read(self.currency+48,8).value),'totalGet':str(signed(self.read(self.currency+96,8),64)),'totalUsed':str(signed(self.read(self.currency+104,8),64))}
 def currency_hook(self,t):
  if t==0x46e204c:self.put('x0',self.read(self.reg('x0'),8).value)
  elif t==0x46dc024:self.currency_wrap(self.reg('x8'),signed(self.reg('x0'),64))
  elif t==0x80ac050:
   assert self.reg('x0')==self.currency_dictionary;found=signed(self.reg('w1'),32)==self.currency_state()['currency'];self.write(self.reg('x2'),8,self.currency if found else 0);self.put('w0',int(found))
  elif t==0x80aa4d4:
   assert self.reg('x0')==self.currency_dictionary
   if signed(self.reg('w1'),32)!=self.currency_state()['currency']:raise ValueError('Native dictionary missing key')
   self.put('x0',self.currency)
  elif t==0xffff9301:self.currency_event()
  else:return False
  return True
