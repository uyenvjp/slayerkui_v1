#!/usr/bin/env python3
"""Database getter control-flow checks with explicit dictionary/wish/Silent models."""
from pathlib import Path
import argparse,collections,copy,json,random,struct
from native_flow_vm import Program,VM,Wrapped
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out)
manifest=json.loads((root/'db-getters/DatabaseManager-method-manifest.json').read_text())
program=Program(a.source,[root/'asm',root/'db-getters'])
base={'presetStat':None,'db':{'SkillBonusDmg':0,'DemonAttributeDmgAdd':0,'BlackOrbAccsSubOptionValue_AllAttributeDamage':0,
 'BlackOrbResonateValue_AllDamage':'0','SpiritSkill_Ban':False,'SpiritSkillTypes':[4,5,7,8,9,11]},'player':{},
 'dragon':None,'demon':{'CombinedDemon':None,'Altar':{'SkillDmgValue':12.5}},'gameMode':0,'playerHpUpdatePresent':True,
 'databaseGetters':{},'spiritValues':{},'components':{},'wishValues':{str(i):0 for i in range(1,10)},
 'statics':{'SkillAtkDmg':[],'FireSkillDmgBuff':[],'WaterSkillDmgBuff':[],'WindSkillDmgBuff':[],'EarthSkillDmgBuff':[]}}
spirit=['BossCurrentHpPercentDmg','TimeStop','SkillCooltimeCharge','BossAddSkillDmg','NormalEnemyAddDmg','GoldDrop','NormalEnemyInstantKill',
 'HighHpEnemyAddDmg','PlayerHpPercent','ExpDrop','NormalEnemyHpDecrease','FinishTimeDmg']
for i,name in enumerate(spirit):base['db']['SpiritSkill_'+name]=(i+1)*1.25
for element in ['Fire','Water','Wind','Earth']:
 for prefix in ['Artifact_','FriendStat_','FriendPassive_']:base['db'][prefix+element+'Dmg']=0
 base['db']['BlackOrbAccsMainValue_'+element+'Damage']='0';base['db']['BlackOrbAccsSubOptionValue_'+element+'Damage']=0
fixtures=[copy.deepcopy(base)];rng=random.Random(705061)
for j in range(14):
 f=copy.deepcopy(base)
 for key,value in f['db'].items():
  if key in ['SpiritSkill_Ban','SpiritSkillTypes']:continue
  f['db'][key]=str(rng.choice([0,1,2**53+1,2**63-1,-2**63])) if isinstance(value,str) else rng.choice([0,0.375,12.5,33.33333,1e8,-0.1])
 f['db']['SkillBonusDmg']=rng.choice([0,1,16777217,2147483647,-2147483648])
 f['wishValues']={str(i):rng.choice([0,0.1,12.5,33.33333]) for i in range(1,10)}
 f['statics']={key:[2147483647,1,-100] if key=='SkillAtkDmg' else [1e8,1,-1e8,0.375] if j%2 else [1e8,-1e8,1,0.375] for key in f['statics']}
 f['db']['SpiritSkill_Ban']=bool(j%2);f['db']['SpiritSkillTypes']=[] if j%3 else [1,3,5,8,12]
 fixtures.append(f)
vectors=[];visited=set();steps=0
for case,f in enumerate(fixtures):
 for method in manifest:
  name=method['name'];indices=range(0,14) if name in ['SpiritSkillValue','SpiritSkillCheck'] else [None]
  for index in indices:
   vm=VM(program,f);ret=vm.alloc(80);vm.put('x8',ret)
   if index is not None:vm.put('w1',index)
   count=vm.run(int(method['native_va'],16),this_ptr=vm.db);visited.update(vm.visited);steps+=count
   if name=='SpiritSkillValue':expected=struct.pack('<f',vm.fp('s0')).hex();encoding='f32-little-endian-hex'
   elif name=='SpiritSkillCheck':expected=bool(vm.reg('w0'));encoding='bool'
   else:
    result=vm.read(ret,8);assert isinstance(result,Wrapped),(name,result)
    if result.type=='SilentFloat':expected=struct.pack('<f',result.value).hex();encoding='f32-little-endian-hex'
    else:expected=str(result.value);encoding='integer'
   vectors.append(dict(case=case,method=name,index=index,fixture=f,expected=expected,encoding=encoding,instruction_steps=count))
(root/'db-native-flow-vectors.json').write_text(json.dumps(vectors,indent=2,allow_nan=False)+'\n')
report={'cases':len(vectors),'snapshots':len(fixtures),'methods':len(manifest),'distinct_instructions_visited':len(visited),'instruction_steps':steps,
 'scope':'Getter method bodies with dictionary enumeration order, wish values, decrypted wrappers, enum boxing and initialized runtime modeled explicitly; not full collection/Unity/Android/IFix validation.'}
(root/'db-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
