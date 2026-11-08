import assert from 'node:assert/strict';
import {readFileSync,writeFileSync} from 'node:fs';
import * as d from './recovered-skill-damage.mjs';
import {calculateRecoveredSkillAttack,getMasteryLevel} from './recovered-skill-chain.mjs';

const vectors=JSON.parse(readFileSync(new URL('../skill-native-vectors.json',import.meta.url)));
const counts={};
const floatBits=v=>{const b=new ArrayBuffer(4),view=new DataView(b);view.setFloat32(0,v,true);return [...new Uint8Array(b)].map(x=>x.toString(16).padStart(2,'0')).join('');};
for (const v of vectors) {
  const i=v.inputs;let result;
  switch(v.kind) {
    case 'primary':result=d.skillPrimaryArithmetic(i.damage,i.bonus,i.other,i.third);break;
    case 'secondary':result=d.skillSecondaryArithmetic(i.damage,i.bonus,i.count,i.other,i.third);break;
    case 'altarWish':result=d.altarWishArithmetic(i.damage,i.bonus,i.other);break;
    case 'whole':result=d.wholePercent64(i.damage,i.bonus);break;
    case 'counted':result=d.countedPercent64(i.damage,i.bonus,i.count);break;
    case 'guildDamage':result=d.guildDamageArithmetic(i.damage,i.bonus);break;
    case 'worldPenalty':result=d.worldPenaltyArithmetic(i.damage,i.bonus);break;
    case 'presetSkillValue':result=d.presetSkillValueArithmetic(i.damage,i.bonus);break;
    case 'presetElement':result=d.presetElementArithmetic(i.damage,i.bonus);break;
    case 'guildValue':result=floatBits(d.guildValueArithmetic(i.bonus,i.other));break;
    default:throw new Error(v.kind);
  }
  assert.equal(result.toString(),v.expected,JSON.stringify(v));counts[v.block]=(counts[v.block]??0)+1;
}

let checks=0;
const eq=(a,b)=>{assert.deepEqual(a,b);checks++;};
const throws=fn=>{assert.throws(fn,/Unrecovered input/);checks++;};
const masteryRows=new Map(JSON.parse(readFileSync(new URL('../data/SkillMasteryAttackSkillFactorData.json',import.meta.url))).map(r=>[r.AttackSkillType,r]));
// Synthetic inputs exercise branch boundaries; they are not invented save data
// or a substitute for original game assets, account data or initial stats.
const skillData={SkillValue:300,skill:{Index:1,Grade:0,skillType:0,activeType:2,dmgType:1,AttackSkillType:1,skillOpenType:0,LinkSkillSlotIndex:0}};
const context={presetStat:null,player:{NormalDmg:100n,CriticalDmg:200n,SuperCriticalDmg:300n,WorldBossEffect_SkillDmgDoubleEnabled:false},
 db:{FriendPassive_SkillDmg:0,StarConstellationCompleteOption_FireDmg:0},databaseGetters:name=>0,wishOptionValue:type=>0,gameMode:0,
 dragon:{SpecialCook:{DragonValleySpecialCookMaterialBuff_FireDmg:0,DragonValleySpecialCookMaterialBuff_AllDmg:0},
 Ether:{Ether_FireSpiritSkillDmgAdd:0,Ether_IncreaseUseManaDmgAdd:0,Ether_NormalSkillDmgAdd:0,Ether_DashSkillDmgAdd:0,
 Ether_FossilActiveSkillUseAtkAdd:0,Ether_FossilActiveSkillUseAtkAddCount:0,Ether_FossilCountSkillDmgAdd:0,Ether_StoneStrikeDmgAdd:0},
 Hunt:{Fossil_SkillDmgAdd:0,Fossil_ActiveSkillUseAtkAdd:0,Fossil_ActiveSkillUseAtkAddCount:0,Fossil_CountSkillDmgAdd:0,Archaeology_StoneStrikeAddDmg:0}},
 guildFieldEffectData:null,SkillGrindingOptionValue_Dic:new Map(),AttackSkillTypeMasteryLevelDic:new Map([[1,1]]),skillMasteryPreset:null,
 SkillDictionary_Index:new Map(),worldBossFieldEffect:null};
eq(calculateRecoveredSkillAttack(context,skillData,masteryRows),{NormalDmg:450n,CriticalDmg:900n,SuperCriticalDmg:1350n});
eq(d.calculatePlayerSkillDamage({...context,dragon:{}},{atkType:0,dmgType:0,skillValue:999,isCalSeasonSkillBuff:true}),100n);
eq(d.calculatePlayerSkillDamage({...context,dragon:{}},{atkType:0,dmgType:100,skillValue:999,isCalSeasonSkillBuff:true}),100n);
eq(d.calculatePlayerSkillDamage({...context,databaseGetters:n=>n==='SkillValueDemonAltar'?10:0,wishOptionValue:()=>20},{atkType:0,dmgType:0,skillValue:999,isCalSeasonSkillBuff:true}),130n);
eq(d.playerSkillDamage({...context,databaseGetters:n=>n==='SkillEffectFireDmgBuff'?10.9:0},skillData,0),330n);
eq(d.playerSkillDamage({...context,databaseGetters:n=>n==='FireDamageOption_BlackOrb'?10.9:0},skillData,0),330n);
eq(d.playerSkillDamage({...context,SkillGrindingOptionValue_Dic:new Map([[1,{SkillDamage:10.9}]])},skillData,0),330n);
eq(calculateRecoveredSkillAttack({...context,gameMode:21,guildFieldEffectData:{BuffType:7,BuffIndex:1,BuffValue:100}},skillData,masteryRows),{NormalDmg:900n,CriticalDmg:1800n,SuperCriticalDmg:2700n});
eq(calculateRecoveredSkillAttack({...context,gameMode:21,guildFieldEffectData:{BuffType:1,BuffIndex:0,BuffValue:50}},skillData,masteryRows),{NormalDmg:675n,CriticalDmg:1350n,SuperCriticalDmg:2025n});
eq(d.applyGuildSkillValue(300,1,{BuffType:7,BuffIndex:2,BuffValue:100},21),300);
eq(d.applyGuildSkillValue(300,1,{BuffType:7,BuffIndex:1,BuffValue:100},0),300);
eq(d.applyGuildActiveDamage({activeType:4},100n,{BuffType:2,BuffValue:50}),150n);
eq(d.applyGuildActiveDamage({activeType:2},100n,{BuffType:3,BuffValue:50}),150n);
eq(d.applyGuildActiveDamage({activeType:2},100n,{BuffType:2,BuffValue:50}),100n);
eq(d.applyWorldBossSkillPenalty({activeType:2},100n,{CoolTimeDmgDecreaseFactor:25}),75n);
eq(d.applyWorldBossSkillPenalty({activeType:4},100n,{CountDmgDecreaseFactor:40}),60n);
eq(d.applyWorldBossSkillPenalty(null,100n,{}),100n);
const world={...context,gameMode:24,worldBossFieldEffect:{CoolTimeDmgDecreaseFactor:50,CountDmgDecreaseFactor:0}};
eq(calculateRecoveredSkillAttack(world,skillData,masteryRows),{NormalDmg:225n,CriticalDmg:450n,SuperCriticalDmg:675n});
eq(calculateRecoveredSkillAttack({...world,player:{...world.player,WorldBossEffect_SkillDmgDoubleEnabled:true}},skillData,masteryRows),{NormalDmg:450n,CriticalDmg:900n,SuperCriticalDmg:1350n});
const dragon={...context.dragon,Ether:{...context.dragon.Ether,Ether_FireSpiritSkillDmgAdd:10.9,Ether_NormalSkillDmgAdd:40},Hunt:{...context.dragon.Hunt,Fossil_ActiveSkillUseAtkAdd:50,Fossil_ActiveSkillUseAtkAddCount:2}};
eq(calculateRecoveredSkillAttack({...context,gameMode:19,dragon},skillData,masteryRows),{NormalDmg:693n,CriticalDmg:1386n,SuperCriticalDmg:2079n});
eq(calculateRecoveredSkillAttack({...context,gameMode:20,dragon},skillData,masteryRows),{NormalDmg:1386n,CriticalDmg:2772n,SuperCriticalDmg:4158n});
eq(d.isDragonValleyBattleMode(19),true);eq(d.isDragonValleyBattleMode(20),true);eq(d.isDragonValleyBattleMode(21),false);
eq(getMasteryLevel({...context,skillMasteryPreset:{_isAncientAwaken:true,_ancientAwakenSkillType:1}},skillData.skill),2);
eq(getMasteryLevel({...context,AttackSkillTypeMasteryLevelDic:new Map()},skillData.skill),0);
eq(getMasteryLevel({...context,skillMasteryPreset:{_isAncientAwaken:true,_ancientAwakenSkillType:0}},{AttackSkillType:0}),0);
eq(calculateRecoveredSkillAttack({...context,skillMasteryPreset:{_isAncientAwaken:true,_ancientAwakenSkillType:1}},skillData,masteryRows),{NormalDmg:1350n,CriticalDmg:2700n,SuperCriticalDmg:4050n});
const preset={...context,presetStat:{FireDmg:100}};
eq(d.playerSkillDamage(preset,skillData,0),600n);
eq(d.playerSkillDamage({...preset,databaseGetters:n=>10.9},skillData,0),660n);
throws(()=>d.playerSkillDamage({...context,db:{}},skillData,0));
const report={status:'PASS',nativeArithmeticCases:vectors.length,blocks:counts,manualBranchAndCompositionChecks:checks,
 scope:'Arithmetic and synthetic branch/composition fixtures only; not Android gameplay parity, complete stats aggregation, skill cooldowns/AI, server or IFix recovery.'};
writeFileSync(new URL('../js-skill-damage-report.json',import.meta.url),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
