#!/usr/bin/env python3
"""Read-only stage row verifier. Input: existing Slayer_Legend_Phan_Tich_Lien_Tuc.zip.
It parses decoded MemoryPack binary from the archived user-XAPK recovery, verifies
all field values against the archived JSON and prints/verifies row counts. Does
NOT execute any game native code or claim that stages are selected at runtime.
"""
import csv, hashlib, io, json, pathlib, struct, sys, zipfile

ZIP = pathlib.Path(sys.argv[1]) if len(sys.argv)>1 else pathlib.Path('/mnt/data/files/Slayer_Legend_Phan_Tich_Lien_Tuc.zip')
OUT = pathlib.Path(sys.argv[2]) if len(sys.argv)>2 else pathlib.Path('/mnt/data')
OUT.mkdir(parents=True, exist_ok=True)
names=['StageInfoBaseData','StageInfoBase1000Data','StageInfoBase2000Data']
PRIMITIVES={'bool':'B','byte':'B','sbyte':'b','short':'h','ushort':'H','int':'i','uint':'I','long':'q','ulong':'Q','float':'f','double':'d','char':'H'}
class Reader:
    def __init__(self,b):self.b=b;self.p=0
    def read(self,n):
        if n<0 or self.p+n>len(self.b):raise ValueError(f'out of range {self.p} + {n} > {len(self.b)}')
        a=self.b[self.p:self.p+n];self.p+=n;return a
    def scalar(self,fmt):return struct.unpack('<'+fmt,self.read(struct.calcsize(fmt)))[0]
    def val(self,t):
        kind=t['kind']
        if kind in PRIMITIVES:
            v=self.scalar(PRIMITIVES[kind]);return bool(v) if kind=='bool' else v
        if kind=='enum':return self.val(t['underlying'])
        if kind=='string':
            n=self.scalar('i')
            if n==-1:return None
            if n>=0:return self.read(n*2).decode('utf-16-le')
            c=self.scalar('i');s=self.read(~n).decode('utf8')
            if c not in [-1,len(s.encode('utf-16-le'))//2]:raise ValueError('bad char count')
            return s
        if kind=='array':
            n=self.scalar('i')
            if n==-1:return None
            if not 0<=n<=1000000:raise ValueError('bad array length')
            return [self.val(t['element']) for _ in range(n)]
        if kind=='value' and t['name']=='System.Numerics.BigInteger':
            n=self.scalar('i')
            if not 0<=n<=1000000:raise ValueError('bad bignum size')
            self.read(n)
            return None # authoritatively restored by following XXXSerialized field
        raise ValueError(t)

allrows=[]; results=[]
with zipfile.ZipFile(ZIP) as z:
    schemas={x['name']:x for x in json.loads(z.read('logic-full/table-schemas.json'))}
    reports={x['name']:x for x in json.loads(z.read('logic-full/table-parse-verification.json'))['parsed']}
    decr={x['name']:x for x in json.loads(z.read('logic-full/table-decode-verification.json'))['success']}
    for name in names:
        data=z.read('logic-full/game-tables/'+name+'.bin')
        jsb=z.read('logic-full/table-json/'+name+'.json')
        official=json.loads(jsb)
        reader=Reader(data);count=reader.scalar('i');fields=[];bignames=[]
        for f in schemas[name]['fields']:
            fields.append(f)
            if f['type'].get('name')=='System.Numerics.BigInteger':
                fields.append({'name':f['name']+'Serialized','type':{'kind':'string'}})
                bignames.append(f['name'])
        parsed=[]
        for j in range(count):
            num=reader.scalar('B')
            if num==255:parsed.append(None);continue
            if num!=len(fields):raise AssertionError(f'{name}[{j}]: members {num} != {len(fields)}')
            row={f['name']:reader.val(f['type']) for f in fields}
            for key in bignames:row[key]=str(int(row[key+'Serialized']))
            parsed.append(row)
        assert reader.p==len(data),f'{name} leftover bytes'
        assert parsed==official, f'parsed raw differs from archived JSON: {name}'
        assert count==len(official)==reports[name]['rows']
        assert len(data)==reports[name]['consumed_bytes']==decr[name]['decoded_bytes']
        assert hashlib.sha256(data).hexdigest()==decr[name]['sha256']
        assert hashlib.sha256(jsb).hexdigest()==reports[name]['sha256_json']
        results.append({'name':name,'rows':count,'bytes':len(data),'binary_sha256':hashlib.sha256(data).hexdigest(), 'archived_json_sha256':hashlib.sha256(jsb).hexdigest(), 'verified':True})
        allrows.extend(parsed)
assert len(allrows)==3000
assert all(x is not None for x in allrows)
assert [x['Id'] for x in allrows]==list(range(3000))
fields=['Id','StageName','MainNumber','SubNumber','Monster','MonsterCount','Map','Hp','BossHp','BossAtk','AttackSpeed','Miss','Accuracy','Gold','Exp','Cube','StoneProb','EquipmentProb','EquipmentIndex','GoldAuto','ExpAuto','CubeAuto','DiamondAuto']
path=OUT/'Slayer_Legend_Stage_3000_Dong_Verified.csv'
with path.open('w',encoding='utf-8-sig',newline='') as f:
    w=csv.DictWriter(f,fieldnames=fields);w.writeheader()
    for r in allrows:
        w.writerow({k:json.dumps(r[k],ensure_ascii=False) if k=='Monster' else r[k] for k in fields})
OUT.joinpath('Slayer_Stage_Verification.json').write_text(json.dumps({'archive':ZIP.name,'input':'decoded MemoryPack tables in user-XAPK recovery archive','status':'all 3,000 rows decoded and field-wise matched to archived JSON', 'sources':results,'recovered_stage_ids':[0,1,20], 'game_runtime_start_id_confirmed':False, 'initial_player_appearance_confirmed':False},ensure_ascii=False,indent=2),encoding='utf-8')
print(json.dumps({'status':'OK','rows':len(allrows),'sources':results,'selected':[dict((k,x[k]) for k in ['Id','MainNumber','SubNumber','Hp','BossHp','BossAtk','Gold','Exp','Monster','Map']) for x in [allrows[0],allrows[1],allrows[20]]]},ensure_ascii=False,indent=2))
