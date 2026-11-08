#!/usr/bin/env python3
"""Independent instruction-derived expected outputs for recovered stat math.
Only selected arithmetic blocks are interpreted; field mapping is reviewed
separately. This does not execute any game library or validate live gameplay.
"""
from pathlib import Path
import argparse,collections,json,random
from native_math_oracle import Oracle,f32
p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
def assembly(start):
    for file in (root/'asm').glob('*.asm'):
        text=file.read_text();lines=text.splitlines()
        if int(lines[0].split()[0],16)<=start<=int(lines[-1].split()[0],16):return text,str(file.relative_to(root))
    raise ValueError(hex(start))
def run(o,start,end,kind='s64',reg=None):
    text,file=assembly(start);v,n=o.run(text,start,end,result_kind=kind,result_register=reg)
    return v,dict(file=file,start=hex(start),end=hex(end),instructions=n)
out=[];rng=random.Random(705050)
longs=[0,1,99,100,10001,2**53-1,2**53+1,2**63-1,-2**63,-101]
ints=[0,1,100,16777217,2147483647,-2147483648,-101]
floats=[0,0.1,12.5,33.333333,16777216,-0.1,-100,1e8,3.4028234663852886e38]
doubles=[0,0.1,12.001,-12.001,9007199254740992.0,1e30]
def add(name,inputs,value,ranges):
    out.append(dict(block=name,inputs=inputs,expected=str(value),ranges=ranges))
for j in range(200):
    lo=lambda k:longs[(j+k)%len(longs)] if j<100 else rng.randrange(-2**63,2**63)
    iv=lambda k:ints[(j+k)%len(ints)]
    fl=lambda k:f32(floats[(j+k)%len(floats)])
    db=lambda k:doubles[(j+k)%len(doubles)]
    v=dict(stat=str(iv(0)),upgrade=str(lo(1)),knowledge=str(lo(2)),soulGem=fl(0),skin=str(iv(3)),grinding=fl(2),wish1=fl(3),theme=str(iv(4)),soulWeapon=str(lo(4)),soulWeaponFactor=fl(4),wish3=fl(5))
    o=Oracle(extra_float_calls={0x53f8428:v['wish3']})
    for reg,key in [('w21','stat'),('x22','upgrade'),('x23','knowledge'),('w24','skin'),('w25','theme'),('x26','soulWeapon')]:o.put(reg,int(v[key]))
    for reg,key in [('s8','soulGem'),('s9','grinding'),('s10','wish1'),('s11','soulWeaponFactor')]:o.setfp(reg,v[key])
    expected,source=run(o,0x4eef1b4,0x4eef244,'captured_long');add('atkBase',v,expected,[source])
    v=dict(base=str(lo(0)),soulGem=fl(1),skin=str(iv(2)),grinding=fl(3),wish=fl(4),theme=str(iv(5)))
    o=Oracle();o.put('x20',int(v['base']));o.put('w23',int(v['skin']));o.put('w0',int(v['theme']))
    for reg,key in [('s8','soulGem'),('s9','grinding'),('s10','wish')]:o.setfp(reg,v[key])
    expected,source=run(o,0x4ef0f80,0x4ef0fc8);add('hpBase',v,expected,[source])
    v=dict(base=str(lo(0)),soulGem=fl(1));o=Oracle();o.put('x20',int(v['base']));o.setfp('s0',v['soulGem'])
    expected,source=run(o,0x4ef19b0,0x4ef19e8);add('healBase',v,expected,[source])
    v=dict(value=str(lo(0)),havePower=db(1))
    for name,start,end,reg,kind in [('atkEquipment',0x4eefa38,0x4eefa6c,'x21','captured_long'),('hpAccessory',0x4ef1138,0x4ef1168,'x20','s64')]:
        o=Oracle();o.put(reg,int(v['value']));o.setfp('d8',v['havePower']);expected,source=run(o,start,end,kind);add(name,v,expected,[source])
    v=dict(classValue=str(lo(0)),slayerClassValue=str(lo(1)),slayerHavePower=db(2))
    for name,start,end,classreg,slayerreg,kind,resultreg in [('atkClassFirst',0x4eefc38,0x4eefc7c,'x22','x23','captured_long',None),('hpClassFirst',0x4ef1760,0x4ef1798,'x20','x21','s64','x21')]:
        o=Oracle();o.put(classreg,int(v['classValue']));o.put(slayerreg,int(v['slayerClassValue']));o.setfp('d8',v['slayerHavePower']);expected,source=run(o,start,end,kind,resultreg);add(name,v,expected,[source])
    v=dict(value=str(lo(0)),tree=str(iv(1)),constellation=str(iv(2)))
    for name,start,end,valuereg,kind in [('atkClassSecond',0x4eefcfc,0x4eefd34,'x22','captured_long'),('hpClassSecond',0x4ef17f8,0x4ef1830,'x21','s64')]:
        o=Oracle();o.put(valuereg,int(v['value']));o.put('w20',int(v['tree']));o.put('w0',int(v['constellation']));expected,source=run(o,start,end,kind);add(name,v,expected,[source])
    v=dict(value=fl(0));o=Oracle();o.setfp('s0',v['value']);expected,source=run(o,0x4eef398,0x4eef3c4,'captured_long');add('atkTotal',v,expected,[source])
    v=dict(stat=str(iv(0)),upgrade=str(iv(1)),equipment=fl(1),friendPassive=fl(2),playerOption=str(iv(2)),friendOption=fl(3),soulGem=fl(4),grinding=fl(5))
    o=Oracle()
    for reg,key in [('w21','stat'),('w22','upgrade'),('w23','playerOption')]:o.put(reg,int(v[key]))
    for reg,key in [('s8','equipment'),('s9','friendPassive'),('s10','friendOption'),('s11','soulGem'),('s0','grinding')]:o.setfp(reg,v[key])
    expected,source=run(o,0x4ef00c0,0x4ef010c,'captured_long');add('criticalDamage',v,expected,[source])
    v=dict(value=str(iv(0)));o=Oracle();o.put('w0',int(v['value']));expected,source=run(o,0x4ef0350,0x4ef0360,'captured_long');add('superCriticalDamage',v,expected,[source])
    for name,sstart,send,cstart,cend,dreg,bits in [('atkAdd',0x4eef7ac,0x4eef7e8,0x4eef81c,0x4eef848,'d11',64),('hpAdd',0x4ef1520,0x4ef155c,0x4ef1590,0x4ef15ac,'d11',32),('healAdd',0x4ef1d74,0x4ef1dac,0x4ef1de0,0x4ef1dfc,'d10',32)]:
        # Native sum has three floats + four ints for ATK/HP, two floats +
        # four ints for healing, followed by a nullable SpecialCook float.
        rawints=[iv(k) for k in [1,2,3,4]];special=fl(5)
        values=[fl(0),f32(rawints[0]),fl(1)]
        if name!='healAdd':values.append(fl(2))
        values.extend(f32(x) for x in rawints[1:]);values.append(special)
        o=Oracle();o.setfp('s8',fl(0));o.setfp('s9',fl(1));o.setfp('s10',fl(2))
        for reg,val in zip(['w20','w21','w22','w23'] if name!='atkAdd' else ['w21','w22','w23','w24'],rawints):o.put(reg,val)
        o.put('x8',int.from_bytes(__import__('struct').pack('<f',special),'little')<<32)
        _,first=run(o,sstart,send,'f32');o.setfp(dreg,o.fp('s0'))
        expected,last=run(o,cstart,cend,'captured_long' if bits==64 else 's32')
        add(name,dict(values=values,dragonPresent=True,bits=bits),expected,[first,last])
rows=json.loads((root/'data/SkillMasteryAttackSkillFactorData.json').read_text())
for row in rows:
    for level in range(1,6):
        for variant,start,end in [('masterySelf',0x530c0d4,0x530c120),('masteryLinked',0x530c328,0x530c374)]:
            damage=rng.randrange(10**100);o=Oracle();o.pair('x20','x19',damage);o.put('w21',row['Level'+str(level)])
            expected,source=run(o,start,end,'big');add(variant,dict(damage=str(damage),attackSkillType=row['AttackSkillType'],level=level,factor=row['Level'+str(level)]),expected,[source])
(root/'stat-native-vectors.json').write_text(json.dumps(out,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
report={'cases':len(out),'blocks':dict(collections.Counter(v['block'] for v in out)),'scope':'Bounded native arithmetic interpreted; field mapping and orchestration checked separately. Not whole-game parity.'}
(root/'native-stat-oracle-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
