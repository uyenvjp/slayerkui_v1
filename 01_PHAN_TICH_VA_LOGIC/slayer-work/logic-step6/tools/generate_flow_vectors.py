#!/usr/bin/env python3
from pathlib import Path
import argparse,collections,copy,json,random
from native_flow_vm import Program,VM
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);p.add_argument('--smoke',action='store_true');a=p.parse_args();out=Path(a.out)
base={'presetStat':None,'db':{'HavePassiveSkill':0,'SoulGemAllEquipAttackFactor':0,'SoulGemAllEquipHpFactor':0,'Spirit_Atk':0,'Spirit_Hp':0,
 'BeastAtkHpFactor':0,'BlackOrbResonateValue_Atk':'0','BlackOrbResonateValue_Hp':'0','DemonEquipAtkAdd':0,'DemonPlayerAtkAdd':0,'DemonEquipHpAdd':0,
 'ArtifactAwakenAtkAdd':'0','ArtifactAwakenHpAdd':'0','Artifact_CriticalDmg':0,'SkillMasteryOption_HpMul':0,'SkillMasteryOption_HealMul':0,
 'BlackOrbLevelValue_HpAdd':'0','BlackOrbLevelValue_HealAdd':'0','SkillMasteryOption_HpAmp':0,'SkillMasteryOption_HealAmp':0},
 'player':{'Atk_init':'1','Hp_init':'1','NormalDmg':'0','PlayerCriticalDmg':'0','SuperCriticalDmg':'17','BestDmg':'0',
 'SpiritSkill_FinishTimeDmg':0,'BeastSkillAttackAddBuff':0,'Heal':'0'},
 'dragon':None,'demon':None,'gameMode':0,'playerHpUpdatePresent':True,'databaseGetters':{'SkillEffect_AtkDmg':100},'spiritValues':{'9':0},
 'components':{'atkBase':'100','atkEquipment':'100','atkAdd':'100','atkClass':'1','atkTotal':'100','criticalDamage':'200',
 'criticalProbability':99,'superCriticalDamage':'200','hpBase':'100','hpClass':'1','hpAccessory':'100','hpAdd':100,'healBase':'10','healAdd':100}}
program=Program(a.source,out/'asm');fixtures=[copy.deepcopy(base)]
if not a.smoke:
    # Branch-target fixtures plus simultaneous modifiers. These are tests, never
    # initial game/save/account data. Original table assets remain untouched.
    for key in base['db']:
        for value in [-1,0.375,25,21474837]:
            f=copy.deepcopy(base);f['db'][key]=str(int(value)) if isinstance(f['db'][key],str) else value if key not in ['HavePassiveSkill','SkillMasteryOption_HpMul','SkillMasteryOption_HealMul','SkillMasteryOption_HpAmp','SkillMasteryOption_HealAmp'] else int(value)
            f['demon']={'CombinedDemon':{}};f['components']['criticalProbability']=100;fixtures.append(f)
    ether=['Ether_LostHpDmgAdd','Ether_AttackAddWhileEtherobotAppear','Ether_EtherobotAttackAdd','Ether_KnowledgeAtkBonusPercent',
      'Ether_SearchTerrainAtkAdd','Ether_HuntNoHealDmgAdd','Ether_TraceCountHuntDmgAdd','Ether_GuildMemberTraceCountHuntDmgAdd','Ether_CompleteCookCountDmgAdd',
      'Ether_KnowledgeSuperCriticalBonusPercent','Ether_KnowledgeHpBonusPercent','Ether_KnowledgeHealBonusPercent']
    for mode in [0,19,20]:
        for key in ether+['DragonValleySpecialCookBuff_AtkHpAdd']:
            f=copy.deepcopy(base);f['gameMode']=mode;f['components']['criticalProbability']=100
            f['dragon']={'Ether':dict.fromkeys(ether,0),'SpecialCook':{'DragonValleySpecialCookBuff_AtkHpAdd':0}}
            f['dragon']['SpecialCook' if key.startswith('DragonValley') else 'Ether'][key]=12.5;fixtures.append(f)
    for spirit in [0,20]:
        for value in [0,33.3333]:
            f=copy.deepcopy(base);f['db']['Spirit_Hp']=spirit;f['spiritValues']['9']=value;fixtures.append(f)
    for probability in [99.9999999,100.000001]:
        f=copy.deepcopy(base);f['components']['criticalProbability']=probability;fixtures.append(f)
    for demon in [None,{'CombinedDemon':None},{'CombinedDemon':{}}]:
        f=copy.deepcopy(base);f['db']['DemonEquipAtkAdd']=25;f['db']['DemonEquipHpAdd']=25;f['demon']=demon;fixtures.append(f)
    for value in ['2147483647','2147483648','9223372036854775807','-9223372036854775808']:
        f=copy.deepcopy(base);f['db']['BlackOrbResonateValue_Hp']=value;fixtures.append(f)
    for bonus in [-100.15,-100.05,-99.95,-99.85,0.05,0.15,0.25,0.35,99.95,1e8]:
        f=copy.deepcopy(base);f['db']['Artifact_CriticalDmg']=bonus;fixtures.append(f)
    for preset in [False,True]:
        for value in [0,1.5]:
            f=copy.deepcopy(base);f['player']['SpiritSkill_FinishTimeDmg']=value;f['player']['BeastSkillAttackAddBuff']=25
            if preset:f['presetStat']={'Atk':'105','Hp':'12345','Heal':'123','CriticalDmg':'250','SuperCriticalDmg':'300'}
            fixtures.append(f)
    rng=random.Random(705060)
    for j in range(60):
        f=copy.deepcopy(base)
        for key in f['db']:
            sample=rng.choice([0,1,12,25,100,21474837])
            f['db'][key]=str(sample) if isinstance(f['db'][key],str) else sample
        f['player']['Atk_init']=str(rng.randrange(10**30));f['player']['Hp_init']=str(rng.randrange(10**30))
        f['player']['SpiritSkill_FinishTimeDmg']=rng.choice([0,1.25,2.5]);f['player']['BeastSkillAttackAddBuff']=rng.choice([0,12.5,33.33333])
        f['demon']={'CombinedDemon':rng.choice([None,{}])};f['gameMode']=rng.choice([0,19,20])
        f['dragon']={'Ether':{k:rng.choice([0,12.5,33.33333]) for k in ether},'SpecialCook':{'DragonValleySpecialCookBuff_AtkHpAdd':rng.choice([0,12.5])}}
        f['components']['criticalProbability']=rng.choice([0,99.9,100,150]);f['spiritValues']['9']=rng.choice([0,12.5])
        fixtures.append(f)
rows=[];branches=collections.Counter();visited=set()
for index,f in enumerate(fixtures):
    for kind,entry in [('attack',0x4ee7294),('hp',0x4ee8fa4)]:
        vm=VM(program,f);steps=vm.run(entry);expected=vm.result(hp=kind=='hp')
        rows.append(dict(case=index,kind=kind,fixture=f,expected=expected,instruction_steps=steps))
        branches.update(vm.branches);visited.update(vm.visited)
(out/'native-flow-vectors.json').write_text(json.dumps(rows,indent=2)+'\n')
report={'cases':len(rows),'fixture_snapshots':len(fixtures),'distinct_instructions_visited':len(visited),'instruction_steps':sum(r['instruction_steps'] for r in rows),
 'branch_outcomes':[dict(pc=hex(pc),taken=taken,count=count) for (pc,taken),count in sorted(branches.items())],
 'scope':'Four bounded ATK/HP method bodies interpreted with explicit decrypted field/getter/object-lifetime/init/callback models. No Unity, live IFix, Android or full-game parity.'}
(out/'native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps({k:v for k,v in report.items() if k!='branch_outcomes'}))
