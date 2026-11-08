/** Ordered PlayerBase ATK/HP calculation, native baseline XAPK 705.
 * Operates on an explicit snapshot of decrypted state. It does not reconstruct
 * upstream account/buff sources or execute Unity/IFix. No invented defaults.
 */
import {f32,i32,i64,nativeFloatToInteger as toInt,percentFloat32,percentIntegerWord} from '../../logic-step4/port/recovered-combat.mjs';
import * as stat from '../../logic-step5/port/recovered-player-stats.mjs';
import {isDragonValleyBattleMode} from '../../logic-step5/port/recovered-skill-damage.mjs';
const need=stat.need;
const F=(o,k)=>f32(need(o,k));
const L=(o,k)=>i64(need(o,k));
const I=(o,k)=>i32(need(o,k));
const D=(o,k)=>Number(need(o,k));

export const percentFloat64Factor=(value,bonus)=>BigInt(value)*toInt(f32(f32(f32(bonus)+100)*100),64)/10000n;
export const percentDouble=(value,bonus)=>BigInt(value)*toInt((Number(bonus)+100)*100,64)/10000n;
export const finishTimeMultiplier=(value,multiplier)=>BigInt(value)*toInt(f32(f32(multiplier)*10000),32)/10000n;
export const spiritHpMultiplier=(value,bonus)=>BigInt(value)*toInt(f32(f32(bonus)+100),32)/100n;
export const masteryHpMultiplier=(value,mastery,orb)=>BigInt(value)*i64(i64(orb)+i32(i32(mastery)+100n))/100n;
export const ampHpMultiplier=(value,bonus)=>BigInt(value)*i32(i32(bonus)+100n)/100n;
export const percentIntegerLong=(value,bonus)=>BigInt(value)*i64(i64(bonus)*100n+10000n)/10000n;

export function nativeRoundEven32(value) {
  const x=f32(value),integer=Math.trunc(x),fraction=x-integer;
  if (fraction===0.5 || fraction===-0.5) {
    const base=f32(integer);
    return BigInt(integer)%2n===0n?base:f32(base+(fraction<0?-1:1));
  }
  return x<0?f32(Math.ceil(f32(x-0.5))):f32(Math.floor(f32(x+0.5)));
}
export function criticalFromNormal(normal,criticalFactor,artifactBonus) {
  const scaled=f32(f32(f32(artifactBonus)+100)*10);
  return BigInt(normal)*i64(criticalFactor)*toInt(nativeRoundEven32(scaled),64)/100000n;
}
export function initialAttack({init,base,equipment,add,slayerClass,skillEffect,total,passive}) {
  return BigInt(init)*i64(base)*i64(equipment)*i64(add)*i64(slayerClass)*i32(skillEffect)*i64(total)*i32(i32(passive)+100n)/10000000000n;
}
export function initialHp({init,base,slayerClass,accessory,add,passive}) {
  return BigInt(init)*i64(base)*i64(slayerClass)*i64(accessory)*i32(add)*i32(i32(passive)+100n)/1000000n;
}

function componentsContext(context,dragon) {
  return {...context,dragonSpecialCook:dragon===null?null:need(dragon,'SpecialCook')};
}
function traceSetter(trace,name,value) {trace.push({stage:name,value});return value;}
function component(context,name) {
  return context.componentGetters===undefined?stat[name](context):need(context.componentGetters,name)(context);
}
const atkEtherFields=['Ether_LostHpDmgAdd','Ether_AttackAddWhileEtherobotAppear','Ether_EtherobotAttackAdd',
 'Ether_KnowledgeAtkBonusPercent','Ether_SearchTerrainAtkAdd','Ether_HuntNoHealDmgAdd','Ether_TraceCountHuntDmgAdd',
 'Ether_GuildMemberTraceCountHuntDmgAdd','Ether_CompleteCookCountDmgAdd'];

export function calculateAttackState(context) {
  if (need(context,'presetStat')!==null) return calculateAttackPreset(context);
  const db=need(context,'db'),player=need(context,'player'),dragon=need(context,'dragon');
  const c=componentsContext(context,dragon),components={},trace=[];
  // Calls retain native order. The underlying getters must use the same state snapshot.
  components.atkBase=component(c,'atkBase');components.atkEquipment=component(c,'atkEquipment');
  components.atkAdd=component(c,'atkAdd');components.atkClass=component(c,'atkClass');
  const skillEffect=i32(need(context,'databaseGetters')('SkillEffect_AtkDmg'));
  components.atkTotal=component(c,'atkTotal');
  let normal=initialAttack({init:need(player,'Atk_init'),base:components.atkBase,equipment:components.atkEquipment,
    add:components.atkAdd,slayerClass:components.atkClass,skillEffect,total:components.atkTotal,passive:I(db,'HavePassiveSkill')});
  const set=(name,value)=>normal=traceSetter(trace,name,value);
  set('initial',normal);
  set('SoulGemAllEquipAttackFactor',percentFloat64Factor(normal,F(db,'SoulGemAllEquipAttackFactor')));
  if (D(db,'Spirit_Atk')>0) set('Spirit_Atk',percentDouble(normal,D(db,'Spirit_Atk')));
  if (F(player,'SpiritSkill_FinishTimeDmg')>0) set('SpiritSkill_FinishTimeDmg',finishTimeMultiplier(normal,F(player,'SpiritSkill_FinishTimeDmg')));
  if (F(db,'BeastAtkHpFactor')>0) set('BeastAtkHpFactor',percentFloat32(normal,F(db,'BeastAtkHpFactor')));
  if (F(player,'BeastSkillAttackAddBuff')>0) set('BeastSkillAttackAddBuff',percentFloat32(normal,F(player,'BeastSkillAttackAddBuff')));
  if (L(db,'BlackOrbResonateValue_Atk')>=1n) set('BlackOrbResonateValue_Atk',percentIntegerWord(normal,L(db,'BlackOrbResonateValue_Atk')));
  if (F(db,'DemonEquipAtkAdd')>0) {
    const demon=need(context,'demon');
    if (demon!==null && need(demon,'CombinedDemon')!==null) set('DemonEquipAtkAdd',percentFloat32(normal,F(db,'DemonEquipAtkAdd')));
  }
  if (F(db,'DemonPlayerAtkAdd')>0) set('DemonPlayerAtkAdd',percentFloat32(normal,F(db,'DemonPlayerAtkAdd')));
  if (L(db,'ArtifactAwakenAtkAdd')>=1n) set('ArtifactAwakenAtkAdd',percentIntegerWord(normal,L(db,'ArtifactAwakenAtkAdd')));
  const dragonBattle=dragon!==null && isDragonValleyBattleMode(need(context,'gameMode'));
  if (dragonBattle) {
    const ether=need(dragon,'Ether');
    for (const key of atkEtherFields) if (F(ether,key)>0) set(key,percentFloat32(normal,F(ether,key)));
    const cook=need(dragon,'SpecialCook');
    if (F(cook,'DragonValleySpecialCookBuff_AtkHpAdd')>0) set('DragonValleySpecialCookBuff_AtkHpAdd',percentFloat32(normal,F(cook,'DragonValleySpecialCookBuff_AtkHpAdd')));
  }
  components.criticalDmg=component(c,'criticalDamage');
  const critical=criticalFromNormal(normal,components.criticalDmg,F(db,'Artifact_CriticalDmg'));
  components.criticalProb=f32(component(c,'criticalProbability'));
  let superCritical;
  if (components.criticalProb>=100) {
    components.superCriticalDmg=component(c,'superCriticalDamage');
    superCritical=critical*components.superCriticalDmg/100n;
    if (dragonBattle) {
      const ether=need(dragon,'Ether');
      if (F(ether,'Ether_KnowledgeSuperCriticalBonusPercent')>0) superCritical=percentFloat32(superCritical,F(ether,'Ether_KnowledgeSuperCriticalBonusPercent'));
    }
  } else superCritical=BigInt(need(player,'SuperCriticalDmg'));
  const oldBest=BigInt(need(player,'BestDmg'));
  return {NormalDmg:normal,CriticalDmg:critical,SuperCriticalDmg:superCritical,BestDmg:normal>oldBest?normal:oldBest,components,trace};
}

export function calculateAttackPreset(context) {
  const preset=need(context,'presetStat'),player=need(context,'player'),trace=[];
  let normal=BigInt(need(preset,'Atk'))*i32(need(context,'databaseGetters')('SkillEffect_AtkDmg'))/100n;
  traceSetter(trace,'preset.Atk * SkillEffect_AtkDmg / 100',normal);
  if (F(player,'SpiritSkill_FinishTimeDmg')>0) normal=traceSetter(trace,'SpiritSkill_FinishTimeDmg',finishTimeMultiplier(normal,F(player,'SpiritSkill_FinishTimeDmg')));
  if (F(player,'BeastSkillAttackAddBuff')>0) normal=traceSetter(trace,'BeastSkillAttackAddBuff',percentFloat32(normal,F(player,'BeastSkillAttackAddBuff')));
  const critical=normal*L(preset,'CriticalDmg')/100n;
  const superCritical=critical*L(preset,'SuperCriticalDmg')/100n;
  // This preset method does not update BestDmg and does not gate supercritical on probability.
  return {NormalDmg:normal,CriticalDmg:critical,SuperCriticalDmg:superCritical,trace};
}

export function calculateHpState(context) {
  const preset=need(context,'presetStat');
  if (preset!==null) return {Hp_max:BigInt(need(preset,'Hp')),Heal:BigInt(need(preset,'Heal')),trace:[],
    effects:['playerHpUpdate.Invoke','SetHpBar_Effect_FillAmount']};
  const db=need(context,'db'),player=need(context,'player'),dragon=need(context,'dragon');
  const c=componentsContext(context,dragon),components={},trace=[];
  components.hpBase=component(c,'hpBase');components.hpClass=component(c,'hpClass');components.hpAccessory=component(c,'hpAccessory');components.hpAdd=component(c,'hpAdd');
  let hp=initialHp({init:need(player,'Hp_init'),base:components.hpBase,slayerClass:components.hpClass,accessory:components.hpAccessory,
    add:components.hpAdd,passive:I(db,'HavePassiveSkill')});
  hp=percentFloat64Factor(hp,F(db,'SoulGemAllEquipHpFactor'));
  components.healBase=component(c,'healBase');
  // The native method invokes HP class/accessory again for healing.
  const healClass=component(c,'hpClass'),healAccessory=component(c,'hpAccessory');components.healAdd=component(c,'healAdd');
  let heal=initialHp({init:need(player,'Hp_init'),base:components.healBase,slayerClass:healClass,accessory:healAccessory,
    add:components.healAdd,passive:I(db,'HavePassiveSkill')});
  heal=percentFloat64Factor(heal,F(db,'SoulGemAllEquipHpFactor'));
  const record=name=>trace.push({stage:name,Hp_max:hp,Heal:heal});record('initialAndSoulGem');
  if (D(db,'Spirit_Hp')>0) {
    hp=percentDouble(hp,D(db,'Spirit_Hp'));heal=percentDouble(heal,D(db,'Spirit_Hp'));record('Spirit_Hp');
    const value=f32(need(context,'spiritValue')(9));
    if (value>0) {hp=spiritHpMultiplier(hp,value);heal=spiritHpMultiplier(heal,value);record('SpiritSkillValue(9)');}
  }
  const hpMul=I(db,'SkillMasteryOption_HpMul'),hpOrb=L(db,'BlackOrbLevelValue_HpAdd');
  if (hpMul>0 || hpOrb>=1n) {hp=masteryHpMultiplier(hp,hpMul,hpOrb);record('SkillMasteryOption_HpMul+BlackOrbLevelValue_HpAdd');}
  const healMul=I(db,'SkillMasteryOption_HealMul'),healOrb=L(db,'BlackOrbLevelValue_HealAdd');
  if (healMul>0 || healOrb>=1n) {heal=masteryHpMultiplier(heal,healMul,healOrb);record('SkillMasteryOption_HealMul+BlackOrbLevelValue_HealAdd');}
  if (I(db,'SkillMasteryOption_HpAmp')>=1n) {hp=ampHpMultiplier(hp,I(db,'SkillMasteryOption_HpAmp'));record('SkillMasteryOption_HpAmp');}
  if (I(db,'SkillMasteryOption_HealAmp')>=1n) {heal=ampHpMultiplier(heal,I(db,'SkillMasteryOption_HealAmp'));record('SkillMasteryOption_HealAmp');}
  if (F(db,'BeastAtkHpFactor')>0) {hp=percentFloat64Factor(hp,F(db,'BeastAtkHpFactor'));heal=percentFloat64Factor(heal,F(db,'BeastAtkHpFactor'));record('BeastAtkHpFactor');}
  if (L(db,'BlackOrbResonateValue_Hp')>=1n) {hp=percentIntegerLong(hp,L(db,'BlackOrbResonateValue_Hp'));heal=percentIntegerLong(heal,L(db,'BlackOrbResonateValue_Hp'));record('BlackOrbResonateValue_Hp');}
  if (F(db,'DemonEquipHpAdd')>0) {
    const demon=need(context,'demon');
    if (demon!==null && need(demon,'CombinedDemon')!==null) {hp=percentFloat64Factor(hp,F(db,'DemonEquipHpAdd'));heal=percentFloat64Factor(heal,F(db,'DemonEquipHpAdd'));record('DemonEquipHpAdd');}
  }
  if (I(db,'ArtifactAwakenHpAdd')>=1n) {hp=percentIntegerWord(hp,I(db,'ArtifactAwakenHpAdd'));heal=percentIntegerWord(heal,I(db,'ArtifactAwakenHpAdd'));record('ArtifactAwakenHpAdd');}
  if (dragon!==null && isDragonValleyBattleMode(need(context,'gameMode'))) {
    const ether=need(dragon,'Ether');
    if (F(ether,'Ether_KnowledgeHpBonusPercent')>0) {hp=percentFloat32(hp,F(ether,'Ether_KnowledgeHpBonusPercent'));record('Ether_KnowledgeHpBonusPercent');}
    if (F(ether,'Ether_KnowledgeHealBonusPercent')>0) {heal=percentFloat32(heal,F(ether,'Ether_KnowledgeHealBonusPercent'));record('Ether_KnowledgeHealBonusPercent');}
    const cook=need(dragon,'SpecialCook');
    if (F(cook,'DragonValleySpecialCookBuff_AtkHpAdd')>0) {hp=percentFloat32(hp,F(cook,'DragonValleySpecialCookBuff_AtkHpAdd'));heal=percentFloat32(heal,F(cook,'DragonValleySpecialCookBuff_AtkHpAdd'));record('DragonValleySpecialCookBuff_AtkHpAdd');}
  }
  return {Hp_max:hp,Heal:heal,components,trace,effects:['playerHpUpdate.Invoke','SetHpBar_Effect_FillAmount']};
}

export function applyHpState(context,result,runtime) {
  // Native commits HP/Heal before invoking its required callback, then updates
  // the HP-bar effect. No clamp/refill of Hp_cur appears in these methods.
  const player=need(context,'player');player.Hp_max=result.Hp_max;player.Heal=result.Heal;
  const update=need(runtime,'playerHpUpdate');if (update===null) throw new Error('Native NullReference path: playerHpUpdate');
  update();need(runtime,'SetHpBar_Effect_FillAmount')();
}
export const SOURCE=Object.freeze({calculateAttackState:'0x4ee7294',calculateAttackPreset:'0x4ef0554',
 calculateHpState:'0x4ee8fa4',calculateHpPreset:'0x4ef2028',criticalRoundBlock:'0x4ee8b50'});
