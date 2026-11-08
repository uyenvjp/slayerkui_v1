#!/usr/bin/env python3
"""Instruction-derived arithmetic checks for the baseline skill damage pipeline."""
from pathlib import Path
import argparse,collections,json,random,struct
from native_math_oracle import Oracle,f32
p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
cache=[]
for path in sorted((root/'asm').glob('*.asm')):
    text=path.read_text();lines=text.splitlines();cache.append((int(lines[0].split()[0],16),int(lines[-1].split()[0],16),text,str(path.relative_to(root))))
def source(start):return next((text,file) for lo,hi,text,file in cache if lo<=start<=hi)
blocks=[]
for name,start,end in [('Water',0x4eec604,0x4eec680),('Earth',0x4eeca3c,0x4eecab8),('Fire',0x4eece5c,0x4eeced8),('Wind',0x4eed284,0x4eed300)]:blocks.append((name+'Primary','primary',start,end,(21,22),None))
for name,start,end in [('Water',0x4eec7ac,0x4eec828),('Earth',0x4eecbdc,0x4eecc58),('Fire',0x4eed004,0x4eed080),('Wind',0x4eed424,0x4eed4a0)]:blocks.append((name+'Secondary','secondary',start,end,(21,22),None))
blocks.extend([
 ('altarWish','altarWish',0x4eed718,0x4eed788,(21,22),None),
 ('grindingSkillDamage','whole',0x530c634,0x530c6cc,(20,21),'s8'),
 ('dashSkillDamage','whole',0x530c7a4,0x530c83c,(20,21),'s8'),
 ('normalSkillDamage','whole',0x530c938,0x530c9d0,(20,21),'s8'),
 ('huntCountSkillDamage','whole',0x530cd58,0x530cdf0,(20,21),'s8'),
 ('etherCountSkillDamage','whole',0x530ce4c,0x530cee4,(20,21),'s0'),
 ('huntStoneDamage','whole',0x530cf68,0x530d000,(20,21),'s8'),
 ('etherStoneDamage','whole',0x530d05c,0x530d0f4,(19,20),'s0'),
 ('huntCommonSkillDamage','whole',0x4eed830,0x4eed89c,(20,21),'s8'),
 ('etherCommonSkillDamage','whole',0x4eed8f8,0x4eed964,(20,21),'s0'),
 ('huntCountedDamage','counted',0x530cae4,0x530cb84,(20,21),'w22'),
 ('etherCountedDamage','counted',0x530cc34,0x530ccd4,(20,21),'w0'),
 ('guildActiveDamage','guildDamage',0x52086cc,0x5208730,(20,19),None),
 ('worldCooldownPenalty','worldPenalty',0x4eb1340,0x4eb13a4,(19,20),None),
 ('worldCountPenalty','worldPenalty',0x4eb13fc,0x4eb1460,(19,20),None),
 ('presetSkillValue','presetSkillValue',0x4eedc68,0x4eedcd4,(23,24),None),
 ('presetElementDamage','presetElement',0x4eedd10,0x4eedd80,(23,24),None),
 ('guildSkillValue','guildValue',0x5208874,0x520888c,None,None),
])
floats=[0,0.1,0.375,1,12.5,33.33333,100,1000,1e7,3.4028234663852886e38,-0.1,-100]
ints=[0,1,100,16777217,2147483647,-2147483648]
rng=random.Random(705051);rows=[]
for name,kind,start,end,pair,bonusreg in blocks:
    assembly,file=source(start)
    for j in range(100):
        damage=[0,1,7,99,100,101,10**100+7][j%7] if j<60 else rng.randrange(-10**100,10**100)
        bonus=f32(floats[j%len(floats)]);other=f32(floats[(j+3)%len(floats)]);third=f32(floats[(j+5)%len(floats)]);count=ints[j%len(ints)]
        v=dict(damage=str(damage),bonus=bonus,other=other,third=third,count=count)
        o=Oracle()
        if pair:o.pair('x'+str(pair[0]),'x'+str(pair[1]),damage)
        if kind=='primary':o.setfp('s8',bonus);o.setfp('s9',other);o.setfp('s10',third)
        elif kind=='secondary':o.setfp('s8',bonus);o.setfp('s9',other);o.setfp('s0',third);o.put('w23',count)
        elif kind=='altarWish':o.setfp('s8',bonus);o.setfp('s9',other)
        elif kind=='whole':o.setfp(bonusreg,bonus)
        elif kind=='counted':o.setfp('s8',bonus);o.put(bonusreg,count)
        elif kind=='guildDamage':o.setfp('s8',bonus);o.setfp('s0',100.0);o.setfp('s1',10000.0)
        elif kind=='worldPenalty':o.setfp('s8',bonus);o.setfp('s0',-100.0);o.setfp('s1',10000.0)
        elif kind in ['presetSkillValue','presetElement']:o.setfp('s8',bonus)
        elif kind=='guildValue':o.setfp('s0',bonus);o.setfp('s1',other)
        else:raise ValueError(kind)
        expected,n=o.run(assembly,start,end,result_kind='f32' if kind=='guildValue' else 'big')
        expected=struct.pack('<f',expected).hex() if kind=='guildValue' else str(expected)
        rows.append(dict(block=name,kind=kind,inputs=v,expected=expected,expected_encoding='f32-little-endian-hex' if kind=='guildValue' else 'decimal-integer',source_file=file,start=hex(start),end=hex(end),instructions=n))
(root/'skill-native-vectors.json').write_text(json.dumps(rows,indent=2,allow_nan=False)+'\n')
report={'cases':len(rows),'blocks':dict(collections.Counter(r['block'] for r in rows)),'scope':'Selected arithmetic blocks, not full-method/control-flow or Android parity.'}
(root/'native-skill-oracle-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
