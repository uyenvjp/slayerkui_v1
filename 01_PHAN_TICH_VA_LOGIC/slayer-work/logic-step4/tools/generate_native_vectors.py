#!/usr/bin/env python3
"""Generate expected results from disassembled ARM64 arithmetic, not JS rules."""
from pathlib import Path
import argparse, collections, hashlib, json, random
from native_math_oracle import Oracle, f32
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args()
root=Path(a.out); source=Path(a.source); methods=json.loads((root/'combat-methods.json').read_text())
def getasm(start):
    r=next(r for r in methods if int(r['native_va'],16)<=start<int(r['end_va'],16))
    return (root/r['asm_file']).read_text(),r['asm_file']
blocks=[
 ('spiritNormal',0x50ba124,0x50ba1a4,(20,19),'s8'),
 ('spiritBoss',0x50ba760,0x50ba7e0,(20,19),'s8'),
 ('highHp',0x50ba2b0,0x50ba330,(20,19),'s8'),
 ('beastBoss',0x50ba8e8,0x50ba968,(20,19),'s8'),
 ('blackOrbNormal',0x50bb450,0x50bb4a4,(20,19),'w21'),
 ('themeNormal',0x50bb5d4,0x50bb628,(20,19),'w21'),
 ('lowHp',0x50ba4ec,0x50ba554,(20,19),'s8'),
 ('abnormal',0x50b85f0,0x50b8678,(20,19),'s8'),
 ('freeze',0x50b8ac0,0x50b8b2c,(22,21),'s8'),
 ('burn',0x50b8920,0x50b8978,(20,19),'w21'),
 ('masteryNormal',0x50b872c,0x50b8784,(20,19),None),
 ('hpDecrease',0x50b9f40,0x50b9fac,(20,21),'s8'),
 ('blackOrbBoss',0x50bb758,0x50bb7ac,(20,19),'w21'),
 ('themeBoss',0x50bb8dc,0x50bb930,(20,19),'w21'),
 ('masteryBoss',0x50b881c,0x50b8874,(20,19),None),
]
stages=json.loads((source/'table-json/StageInfoBaseData.json').read_text())
values=[0,1,2,7,8,99,100,101,10**20+7]+[int(stages[i]['Hp']) for i in [0,10,99,499,999]]
floats=[0,0.1,0.375,1,12.5,33.33333,100,1000,1e7,3.4028234663852886e38]
ints=[0,1,12,100,21474836,21474837,2147483647,-1]
rng=random.Random(705); vectors=[]
for name,start,end,pair,reg in blocks:
    assembly,file=getasm(start)
    for j in range(100):
        d=values[j%len(values)] if j<70 else rng.randrange(10**100)*(-1 if j%3==0 else 1)
        b=(floats if reg and reg.startswith('s') else ints)[j%(len(floats) if reg and reg.startswith('s') else len(ints))]
        mastery=[0,30,50,2147483647][j%4]
        o=Oracle();o.pair('x'+str(pair[0]),'x'+str(pair[1]),d)
        if reg:
            if reg.startswith('s'):o.setfp(reg,b)
            else:o.put(reg,b)
        if name=='freeze':o.put('w19',mastery)
        expected,count=o.run(assembly,start,end)
        vectors.append(dict(block=name,input=str(d),bonus=b,mastery=mastery,expected=str(expected),source_file=file,source_va_start=hex(start),source_va_end=hex(end),instruction_count=count))
for j in range(100):
    start,end=0x4d23040,0x4d23064;assembly,file=getasm(start)
    accuracy=f32([0,1,60,10000,0.1][j%5]); miss=f32([0,1,100,60,0.3,1e6][j%6]);level=[0,1,100,2147483647][j%4]; unit=f32([0,0.1,0.5,0.99999994][j%4])
    o=Oracle(random_unit=unit);o.setfp('s9',accuracy);o.setfp('s8',miss);o.put('w0',level)
    expected,count=o.run(assembly,start,end,result_big=False)
    vectors.append(dict(block='miss',accuracy=accuracy,miss=miss,userLevel=level,randomUnit=unit,expected=expected,source_file=file,source_va_start=hex(start),source_va_end=hex(end),instruction_count=count))
for kind,start,end,mp,cp in [('highHpCheck',0x50bbafc,0x50bbb6c,(21,22),(19,20)),('lowHpCheck',0x50bbc24,0x50bbc94,(22,23),(20,21))]:
    assembly,file=getasm(start)
    for j in range(100):
        maximum=values[j%len(values)]+1;percentage=[0,1,30,70,100][j%5]
        current=maximum*percentage//100+[-1,0,1][j%3]
        o=Oracle();o.pair('x'+str(mp[0]),'x'+str(mp[1]),maximum);o.pair('x'+str(cp[0]),'x'+str(cp[1]),current)
        if kind=='lowHpCheck':o.put('w19',percentage)
        expected,count=o.run(assembly,start,end,result_big=False)
        vectors.append(dict(block=kind,hpCurrent=str(current),hpMax=str(maximum),threshold=percentage,expected=expected,source_file=file,source_va_start=hex(start),source_va_end=hex(end),instruction_count=count))
(root/'native-math-vectors.json').write_text(json.dumps(vectors,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
report={'cases':len(vectors),'blocks':dict(collections.Counter(v['block'] for v in vectors)),
 'source_native_sha256':hashlib.sha256((source/'libil2cpp.so').read_bytes()).hexdigest(),
 'scope':'Bounded native arithmetic instructions interpreted in Python; not native execution, whole-method coverage, gameplay parity, or IFix validation.'}
(root/'native-oracle-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
