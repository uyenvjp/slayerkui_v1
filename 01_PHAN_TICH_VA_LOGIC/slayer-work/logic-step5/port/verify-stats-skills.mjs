import assert from 'node:assert/strict';
import {readFileSync,writeFileSync} from 'node:fs';
import * as s from './recovered-player-stats.mjs';
import * as k from './recovered-skill-chain.mjs';

const rows=new Map(JSON.parse(readFileSync(new URL('../data/SkillMasteryAttackSkillFactorData.json',import.meta.url))).map(r=>[r.AttackSkillType,r]));
const vectors=JSON.parse(readFileSync(new URL('../stat-native-vectors.json',import.meta.url)));
const dispatch={atkBase:s.atkBaseArithmetic,hpBase:s.hpBaseArithmetic,healBase:s.healBaseArithmetic,
  atkEquipment:s.equipmentArithmetic,hpAccessory:s.equipmentArithmetic,atkClassFirst:s.classFirstArithmetic,hpClassFirst:s.classFirstArithmetic,
  atkClassSecond:s.classSecondArithmetic,hpClassSecond:s.classSecondArithmetic,atkTotal:v=>s.atkTotalArithmetic(v.value),
  criticalDamage:s.criticalArithmetic,superCriticalDamage:v=>s.superCriticalArithmetic(v.value),
  atkAdd:s.additiveArithmetic,hpAdd:s.additiveArithmetic,healAdd:s.additiveArithmetic,
  masterySelf:v=>k.masteryDamage(v.damage,v.attackSkillType,v.level,rows),masteryLinked:v=>k.masteryDamage(v.damage,v.attackSkillType,v.level,rows)};
const counts={};
for (const v of vectors) {
  assert.ok(dispatch[v.block],v.block);
  const actual=dispatch[v.block](v.inputs);
  assert.equal(actual.toString(),v.expected,JSON.stringify(v));
  counts[v.block]=(counts[v.block]??0)+1;
}

let checks=0;
const eq=(a,b)=>{assert.deepEqual(a,b);checks++;};
const throws=fn=>{assert.throws(fn,/Unrecovered input|Missing AttackSkillTypeMasteryLevelDic/);checks++;};
const db={Stat_Atk:100,Upgrade_Atk:200n,Knowledge_AtkBase:300n,SoulGemStat_Str:25,SkinOption_CharacterAtk:15,ThemeDungeonBuff_CharacterAtkAdd:50,
 SoulWeaponAtk:100n,SoulWeaponAttackFactor:25,Stat_Hp:100,Upgrade_Hp:200n,Knowledge_HpBase:300n,SoulGemStat_Hp:25,SkinOption_CharacterHp:15,ThemeDungeonBuff_CharacterHpAdd:50,
 Stat_Heal:100,Upgrade_Heal:200n,Knowledge_HealBase:300n,SoulGemStat_Vit:25,EquipmentAtk:250n,Equipment_HavePower_Atk:1.01,AccessoryHp:250n,Accessory_HavePower_Hp:1.01,
 Class_Atk:1000n,Class_Hp:500n,SlayerClass_Value:200n,SlayerClass_HavePower_Value:0.01,ImmortalTreeUpgradeOption_ClassAtkAdd:20,ImmortalTreeUpgradeOption_ClassHpAdd:20,
 StarConstellationCompleteOption_ClassAtkHpAdd:10,FriendPassive_TotalAtk:20,Stat_CiriticalDmg:300,Upgrade_CiriticalDmg:200,Equipment_HavePower_CriticalDmg:20,
 FriendPassive_CriticalDmg:10,PlayerOption_CriticalDmg:5,FriendOption_CriticalDmg:3,SoulGemStat_Cri:2,Upgrade_SuperCiriticalDmg:1900,Upgrade_CriticalProb:5,Upgrade_SuperCriticalProb:2,
 Artifact_AtkAdd:10,PlayerOption_AtkAdd:20,FriendOption_AtkAdd:30,FriendPassive_AtkAdd:40,SkillMasteryOption_AtkAdd:50,ImmortalTreeUpgradeOption_AtkAdd:60,StarLevelAtkFactor:70,
 Artifact_HpAdd:10,PlayerOption_HpAdd:20,FriendOption_HpAdd:30,FriendPassive_HpAdd:40,SkillMasteryOption_HpAdd:50,ImmortalTreeUpgradeOption_HpAdd:60,StarLevelHpFactor:70,
 Artifact_Heal:10,PlayerOption_HealAdd:20,FriendOption_HealAdd:30,SkillMasteryOption_HealAdd:50,ImmortalTreeUpgradeOption_HealAdd:60,StarLevelHealFactor:70};
const grinding={SkillGrindingPassiveStat_Str:10,SkillGrindingPassiveStat_Hp:10,SkillGrindingPassiveStat_Cri:1};
const wishCalls=[];const context={db,grinding,wishOptionValue(type){wishCalls.push(type);return type===3?25:0;},presetStat:null,
 dragonSpecialCook:{DragonValleySpecialCookMaterialBuff_Atk:80,DragonValleySpecialCookMaterialBuff_Hp:80,DragonValleySpecialCookMaterialBuff_Heal:80}};
eq(s.atkBase(context),1350n);eq(wishCalls,[1,3]);eq(s.hpBase(context),1200n);eq(wishCalls,[1,3,2]);eq(s.healBase(context),750n);
eq(s.atkEquipment(context),352n);eq(s.hpAccessory(context),352n);eq(s.atkClass(context),3913n);eq(s.hpClass(context),1956n);
eq(s.criticalDamage(context),641n);eq(s.superCriticalDamage(context),2000n);eq(s.atkTotal(context),120n);
eq(s.atkAdd(context),460n);eq(s.hpAdd(context),460n);eq(s.healAdd(context),420n);
eq(s.atkAdd({...context,dragonSpecialCook:null}),100n);eq(s.hpAdd({...context,dragonSpecialCook:null}),100n);eq(s.healAdd({...context,dragonSpecialCook:null}),100n);
eq(s.criticalProbability(context),5);eq(s.superCriticalProbability(context),2);
eq(s.criticalProbability({...context,presetStat:{CriticalProb:0.375}}),0.375);
eq(s.superCriticalProbability({...context,presetStat:{SuperCriticalProb:0.5}}),0.5);
throws(()=>s.atkBase({...context,db:{}}));throws(()=>s.hpAdd({...context,dragonSpecialCook:undefined}));throws(()=>s.criticalProbability({db}));

eq(k.masteryDamage(7n,1,1,rows),10n);eq(k.masteryDamage(7n,1,0,rows),7n);eq(k.masteryDamage(7n,1,6,rows),7n);eq(k.masteryDamage(7n,9999,1,rows),7n);
eq(k.masteryDamage(k.masteryDamage(1n,1,1,rows),3,1,rows),3n);
let trace=[];
const skill={AttackSkillType:1,skillOpenType:3,LinkSkillSlotIndex:99};
const skillContext={skill,playerSkillDamage(type){trace.push('base'+type);return [1n,7n,11n][type];},
 getMasteryLevel(){trace.push('mastery');return 1;},masteryRows:rows,SkillDictionary_Index:new Map([[99,{AttackSkillType:3}]]),
 AttackSkillTypeMasteryLevelDic:new Map([[3,1]]),gameMode:21,ApplyActiveSkillDamageBuff(skill,d){trace.push('guild');return d+1n;}};
eq(k.calculateSkillAttack(skillContext),{NormalDmg:4n,CriticalDmg:31n,SuperCriticalDmg:49n});
eq(trace,['base0','base1','base2','mastery','guild','guild','guild']);
eq(k.calculateSkillAttack({...skillContext,gameMode:24,worldBossFieldEffect:null}),{NormalDmg:3n,CriticalDmg:30n,SuperCriticalDmg:48n});
eq(k.calculateSkillAttack({...skillContext,gameMode:24,worldBossFieldEffect:{ApplyActiveSkillDamagePenalty:(skill,d)=>d/2n}}),{NormalDmg:1n,CriticalDmg:15n,SuperCriticalDmg:24n});
throws(()=>k.calculateSkillAttack({...skillContext,AttackSkillTypeMasteryLevelDic:new Map()}));
eq(k.calculateSkillAttack({...skillContext,skill:{...skill,skillOpenType:0},gameMode:0}),{NormalDmg:1n,CriticalDmg:10n,SuperCriticalDmg:16n});
const report={status:'PASS',nativeArithmeticCases:vectors.length,blocks:counts,manualFieldMappingAndBranchChecks:checks,
  limitations:['Scalar fragments, not all getter instructions or live Android gameplay.','The composed skill entry uses recovered damage formulas with explicit account and database-getter inputs.','Buff/account/progression/IFix inputs are not reconstructed by these functions.']};
writeFileSync(new URL('../js-stats-skills-report.json',import.meta.url),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
