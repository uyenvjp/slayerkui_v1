/** Native baseline skill-damage calculations, XAPK 705.
 * Database getter results, decrypted buff values and account state are explicit
 * inputs. This does not claim those upstream values or live patches recovered.
 */
import {f32,i32,nativeFloatToInteger as toInt,lowHpArithmetic} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from './recovered-player-stats.mjs';
const F=(o,k)=>f32(need(o,k));
const I=(o,k)=>i32(need(o,k));

export function skillPrimaryArithmetic(damage,skillValue,elementBonus,friendSkillBonus) {
  const element=f32(f32(elementBonus)+100);
  const friend=f32(f32(friendSkillBonus)+100);
  const first=f32(element*f32(skillValue));
  const factor=toInt(f32(first*friend),64);
  return BigInt(damage)*factor/1000000n;
}
export function skillSecondaryArithmetic(damage,blackOrb,constellation,material,allMaterial) {
  let factor=f32(f32(blackOrb)+100);
  factor=f32(factor+f32(Number(i32(constellation))));
  factor=f32(factor+f32(material));
  factor=f32(factor+f32(allMaterial));
  return BigInt(damage)*toInt(factor,64)/100n;
}
export const wholePercent64=(damage,bonus)=>BigInt(damage)*toInt(f32(f32(bonus)+100),64)/100n;
export const countedPercent64=(damage,bonus,count)=>wholePercent64(damage,f32(f32(bonus)*f32(Number(i32(count)))));
export const altarWishArithmetic=(damage,altar,wish)=>BigInt(damage)*toInt(f32(f32(f32(altar)+100)+f32(wish)),64)/100n;

export function guildValueArithmetic(value,bonus) {
  return f32(f32(f32(value)*f32(f32(bonus)+100))/100);
}
export const guildDamageArithmetic=(damage,bonus)=>BigInt(damage)*toInt(f32(f32(f32(bonus)*100)+10000),32)/10000n;
export const worldPenaltyArithmetic=(damage,penalty)=>BigInt(damage)*toInt(f32(f32(f32(penalty)*-100)+10000),64)/10000n;
export const presetSkillValueArithmetic=(damage,value)=>BigInt(damage)*toInt(f32(f32(value)*100),64)/10000n;
export const presetElementArithmetic=(damage,bonus)=>BigInt(damage)*toInt(f32(f32(f32(bonus)+100)*100),64)/10000n;
export const isDragonValleyBattleMode=mode=>i32(mode)===19n || i32(mode)===20n;

export function applyGuildSkillValue(value,skillIndex,fieldEffect,gameMode) {
  if (Number(i32(gameMode))!==21 || fieldEffect===null) return f32(value);
  if (Number(I(fieldEffect,'BuffType'))!==7 || I(fieldEffect,'BuffIndex')!==i32(skillIndex)) return f32(value);
  return guildValueArithmetic(value,F(fieldEffect,'BuffValue'));
}
export function applyGuildActiveDamage(skill,damage,fieldEffect) {
  if (fieldEffect===null) return BigInt(damage);
  const type=Number(I(fieldEffect,'BuffType'));
  const match=(type===1 && I(skill,'Grade')===I(fieldEffect,'BuffIndex')) ||
    (type===2 && I(skill,'activeType')===4n) || (type===3 && I(skill,'activeType')===2n);
  return match?guildDamageArithmetic(damage,F(fieldEffect,'BuffValue')):BigInt(damage);
}
export function applyWorldBossSkillPenalty(skill,damage,fieldEffect) {
  if (skill===null) return BigInt(damage);
  let d=BigInt(damage);
  const activeType=Number(I(skill,'activeType'));
  if ([2,5,6,11].includes(activeType) && F(fieldEffect,'CoolTimeDmgDecreaseFactor')>0) d=worldPenaltyArithmetic(d,F(fieldEffect,'CoolTimeDmgDecreaseFactor'));
  if (activeType===4 && F(fieldEffect,'CountDmgDecreaseFactor')>0) d=worldPenaltyArithmetic(d,F(fieldEffect,'CountDmgDecreaseFactor'));
  return d;
}

const elements={1:['Fire','Fire'],2:['Water','water'],3:['Wind','Wind'],4:['Earth','Earth']};
export function calculatePlayerSkillDamagePreset(context,{atkType,dmgType,skillValue,isCalSeasonSkillBuff}) {
  const player=need(context,'player');
  const a=Number(i32(atkType));
  let damage=BigInt(need(player,a===2?'SuperCriticalDmg':a===1?'CriticalDmg':'NormalDmg'));
  const entry=elements[Number(i32(dmgType))];
  if (!entry) return damage;
  damage=presetSkillValueArithmetic(damage,skillValue);
  const [element,spelling]=entry;
  const bonus=F(need(context,'presetStat'),element+'Dmg');
  if (bonus>0) damage=presetElementArithmetic(damage,bonus);
  if (isCalSeasonSkillBuff) damage=lowHpArithmetic(damage,f32(need(context,'databaseGetters')('SkillEffect'+spelling+'DmgBuff')));
  return damage;
}
export function calculatePlayerSkillDamage(context,{atkType,dmgType,skillValue,isCalSeasonSkillBuff}) {
  const preset=need(context,'presetStat');
  if (preset!==null) return calculatePlayerSkillDamagePreset(context,{atkType,dmgType,skillValue,isCalSeasonSkillBuff});
  const player=need(context,'player');
  const a=Number(i32(atkType));
  let damage=BigInt(need(player,a===2?'SuperCriticalDmg':a===1?'CriticalDmg':'NormalDmg'));
  const entry=elements[Number(i32(dmgType))];
  const db=need(context,'db');
  const getter=need(context,'databaseGetters');
  const dragon=need(context,'dragon');
  if (entry) {
    const [element,seasonSpelling]=entry;
    const special=need(dragon,'SpecialCook');
    damage=skillPrimaryArithmetic(damage,skillValue,f32(getter(element+'SkillDmg')),F(db,'FriendPassive_SkillDmg'));
    damage=skillSecondaryArithmetic(damage,f32(getter(element+'DamageOption_BlackOrb')),I(db,'StarConstellationCompleteOption_'+element+'Dmg'),
      F(special,'DragonValleySpecialCookMaterialBuff_'+element+'Dmg'),F(special,'DragonValleySpecialCookMaterialBuff_AllDmg'));
    if (isCalSeasonSkillBuff) damage=lowHpArithmetic(damage,f32(getter('SkillEffect'+seasonSpelling+'DmgBuff')));
    if (isDragonValleyBattleMode(need(context,'gameMode'))) damage=lowHpArithmetic(damage,F(need(dragon,'Ether'),'Ether_'+element+'SpiritSkillDmgAdd'));
  }
  // Native None/All/unknown element branches skip the element/skillValue product.
  damage=altarWishArithmetic(damage,f32(getter('SkillValueDemonAltar')),f32(need(context,'wishOptionValue')(9)));
  if (isDragonValleyBattleMode(need(context,'gameMode'))) {
    damage=wholePercent64(damage,F(need(dragon,'Hunt'),'Fossil_SkillDmgAdd'));
    damage=wholePercent64(damage,F(need(dragon,'Ether'),'Ether_IncreaseUseManaDmgAdd'));
  }
  if (Number(i32(need(context,'gameMode')))===24 && need(player,'WorldBossEffect_SkillDmgDoubleEnabled')) damage=damage*200n/100n;
  return damage;
}

/** SkillData.Player_SkillDmg_Cal, composed with CalculateSkillDmg above.
 * SkillValue and grinding-option getter outputs remain explicit recovered-state
 * inputs; this function does not compute skill levels/cooldowns or unlocks.
 */
export function playerSkillDamage(context,skillData,atkType) {
  const skill=need(skillData,'skill');
  const index=Number(I(skill,'Index'));
  const mode=Number(i32(need(context,'gameMode')));
  const value=applyGuildSkillValue(F(skillData,'SkillValue'),index,need(context,'guildFieldEffectData'),mode);
  let damage=calculatePlayerSkillDamage(context,{atkType,dmgType:Number(I(skill,'dmgType')),skillValue:value,isCalSeasonSkillBuff:true});
  const grinding=need(context,'SkillGrindingOptionValue_Dic');
  if (grinding.has(index)) damage=wholePercent64(damage,F(grinding.get(index),'SkillDamage'));
  if (mode===19 || mode===20) {
    const ether=need(need(context,'dragon'),'Ether');
    if (index===28 || index===29) damage=wholePercent64(damage,F(ether,'Ether_DashSkillDmgAdd'));
    const normalBonus=F(ether,'Ether_NormalSkillDmgAdd');
    if (normalBonus>0 && I(skill,'Grade')===0n && I(skill,'skillType')===0n && I(skill,'AttackSkillType')!==0n) damage=wholePercent64(damage,normalBonus);
  }
  if (mode===20) {
    const dragon=need(context,'dragon'),hunt=need(dragon,'Hunt'),ether=need(dragon,'Ether');
    damage=countedPercent64(damage,F(hunt,'Fossil_ActiveSkillUseAtkAdd'),I(hunt,'Fossil_ActiveSkillUseAtkAddCount'));
    damage=countedPercent64(damage,F(ether,'Ether_FossilActiveSkillUseAtkAdd'),I(ether,'Ether_FossilActiveSkillUseAtkAddCount'));
    if (I(skill,'activeType')===4n) {
      damage=wholePercent64(damage,F(hunt,'Fossil_CountSkillDmgAdd'));
      damage=wholePercent64(damage,F(ether,'Ether_FossilCountSkillDmgAdd'));
    }
    if (index===34) {
      damage=wholePercent64(damage,F(hunt,'Archaeology_StoneStrikeAddDmg'));
      damage=wholePercent64(damage,F(ether,'Ether_StoneStrikeDmgAdd'));
    }
  }
  return damage;
}

export const SOURCE=Object.freeze({calculatePlayerSkillDamage:'0x4eec3b8',playerSkillDamage:'0x530c3a0',
  calculatePlayerSkillDamagePreset:'0x4eedb3c',isDragonValleyBattleMode:'0x5040758',
  applyGuildSkillValue:'0x5208760',applyGuildActiveDamage:'0x5208568',applyWorldBossSkillPenalty:'0x4eb1220'});
