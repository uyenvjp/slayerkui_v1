"""Read original table rows using fields and generated Deserialize methods from this APK.
BigInteger native payloads are preserved as opaque bytes; accompanying *Serialized
properties provide the authoritative decimal strings assigned by the original setters.
"""
from pathlib import Path
import sys,json,struct,re,base64,hashlib,collections
R=Path(__import__('os').environ.get('SLAYER_LOGIC_DIR',sys.argv[1] if len(sys.argv)>1 else str(Path(__file__).parent.parent/'logic-full')))
PRIMITIVES={'bool':'B','byte':'B','sbyte':'b','short':'h','ushort':'H','int':'i','uint':'I','long':'q','ulong':'Q','float':'f','double':'d','char':'H'}
class Reader:
 def __init__(self,b):self.b=b;self.p=0
 def read(self,n):
  if n<0 or self.p+n>len(self.b):raise ValueError(f'Read outside file at {self.p}, requested {n}')
  a=self.b[self.p:self.p+n];self.p+=n;return a
 def scalar(self,fmt):return struct.unpack('<'+fmt,self.read(struct.calcsize(fmt)))[0]
 def value(self,t):
  kind=t['kind']
  if kind in PRIMITIVES:
   v=self.scalar(PRIMITIVES[kind]);return bool(v) if kind=='bool' else v
  if kind=='enum':return self.value(t['underlying'])
  if kind=='string':
   n=self.scalar('i')
   if n==-1:return None
   if n==0:return ''
   if n>0:return self.read(n*2).decode('utf-16-le')
   byte_count=~n;chars=self.scalar('i');s=self.read(byte_count).decode('utf8')
   assert chars in [-1,len(s.encode('utf-16-le'))//2]
   return s
  if kind=='array':
   n=self.scalar('i')
   if n==-1:return None
   if not 0<=n<=1000000:raise ValueError('Invalid array length '+str(n))
   return [self.value(t['element']) for _ in range(n)]
  if kind=='value' and t['name']=='System.Numerics.BigInteger':
   n=self.scalar('i')
   if not 0<=n<=1000000:raise ValueError('Unresolved BigInteger native payload '+str(n))
   raw=self.read(n)
   return {'opaque_native_payload_base64':base64.b64encode(raw).decode(),'native_payload_length':n}
  raise ValueError('Unsupported type '+str(t))
schemas=json.loads((R/'table-schemas.json').read_text());outdir=R/'table-json';outdir.mkdir(exist_ok=True);ok=[];failed=[]
for s in schemas:
 n=s['name'];b=(R/'game-tables'/(n+'.bin')).read_bytes();reader=Reader(b);count=reader.scalar('i');rows=[];current=0
 try:
  fields=[]
  for f in s['fields']:
   fields.append(f)
   if f['type'].get('name')=='System.Numerics.BigInteger':fields.append({'name':f['name']+'Serialized','type':{'kind':'string'}})
  for current in range(count):
   members=reader.scalar('B')
   if members==255:rows.append(None);continue
   if members!=len(fields):raise ValueError(f'Member count {members}, schema {len(fields)} at {reader.p-1}')
   row={}
   for f in fields:row[f['name']]=reader.value(f['type'])
   rows.append(row)
  if reader.p!=len(b):raise ValueError(f'Unconsumed bytes: {len(b)-reader.p}')
  # The generated native Deserialize calls each *Serialized setter after reading
  # its corresponding native BigInteger payload. Preserve that final decimal value.
  for row in rows:
   if row is None:continue
   for field in fields:
    if field['type'].get('name')=='System.Numerics.BigInteger':
     text=row[field['name']+'Serialized']
     if not isinstance(text,str) or not re.fullmatch(r'[+-]?[0-9]+',text):raise ValueError('Non-decimal BigInteger surrogate')
     row[field['name']]=str(int(text))
  encoded=json.dumps(rows,ensure_ascii=False,indent=2,allow_nan=False).encode();(outdir/(n+'.json')).write_bytes(encoded);ok.append({'name':n,'rows':count,'consumed_bytes':reader.p,'sha256_json':hashlib.sha256(encoded).hexdigest()})
 except (ValueError,AssertionError,UnicodeError,struct.error) as e:failed.append({'name':n,'row':current,'offset':reader.p,'error':str(e)})
for name in json.loads((R/'schema-unmatched.json').read_text()):
 try:
  source=(R/'game-tables'/(name+'.bin')).read_bytes();rows=json.loads(source.decode('utf8'));assert isinstance(rows,list) and all(isinstance(r,dict) for r in rows)
  encoded=json.dumps(rows,ensure_ascii=False,indent=2,allow_nan=False).encode();(outdir/(name+'.json')).write_bytes(encoded);ok.append({'name':name,'format':'UTF-8 JSON','rows':len(rows),'consumed_bytes':len(source),'sha256_json':hashlib.sha256(encoded).hexdigest()})
 except (ValueError,AssertionError,UnicodeError) as e:failed.append({'name':name,'error':str(e)})
report={'schema_source':'Decoded IL2CPP fields; generated MemoryPack getters and Deserialize for BigInteger surrogate properties','parsed':ok,'unparsed':failed,'unmatched_schema':[],'total_rows_parsed':sum(i['rows'] for i in ok)}
(R/'table-parse-verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2));print('OK',len(ok),'FAILED',len(failed),'ROWS',report['total_rows_parsed']);print('FAILURES',json.dumps(failed[:35],ensure_ascii=False));print('CORE_EQUIPMENT',json.loads((outdir/'EquipmentBaseData.json').read_text())[-2:])
