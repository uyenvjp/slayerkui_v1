/** Native baseline PlayerBase stat getters, XAPK 700.0.4 / 705.
 * Decrypted Silent* values are inputs. This module does not infer an account,
 * unlocks, wish options, presets, or any live server/IFix state.
 */
import {f32,i32,i64,nativeFloatToInteger as toInt} from '../../logic-step4/port/recovered-combat.mjs';

export function need(object,key) {
  if (object==null || !(key in object) || object[key]===undefined) throw new Error('Unrecovered input: '+key);
  return object[key];
}
const F=(o,k)=>f32(need(o,k));
const I=(o,k)=>i32(need(o,k));
const L=(o,k)=>i64(need(o,k));
const D=(o,k)=>Number(need(o,k));
const addF=(a,b)=>f32(a+b);
const sumLong=(a,b,c)=>i64(i64(a+b)+c);

export function atkBaseArithmetic({stat,upgrade,knowledge,soulGem,skin,grinding,wish1,theme,soulWeapon,soulWeaponFactor,wish3}) {
  const base=sumLong(i64(upgrade),i32(stat),i64(knowledge));
  let percentage=addF(f32(soulGem),100);
  percentage=addF(percentage,f32(Number(i32(skin))));
  percentage=addF(percentage,f32(grinding));
  percentage=addF(percentage,f32(wish1));
  percentage=addF(percentage,f32(Number(i32(theme))));
  const main=Number(base)*f32(percentage/100);
  const weaponPercent=addF(addF(f32(soulWeaponFactor),100),f32(wish3));
  const weapon=Number(i64(soulWeapon))*f32(weaponPercent/100);
  return toInt(main+weapon,64);
}
export function atkBase({db,grinding,wishOptionValue}) {
  return atkBaseArithmetic({stat:I(db,'Stat_Atk'),upgrade:L(db,'Upgrade_Atk'),knowledge:L(db,'Knowledge_AtkBase'),
    soulGem:F(db,'SoulGemStat_Str'),skin:I(db,'SkinOption_CharacterAtk'),grinding:F(grinding,'SkillGrindingPassiveStat_Str'),
    wish1:f32(wishOptionValue(1)),theme:I(db,'ThemeDungeonBuff_CharacterAtkAdd'),soulWeapon:L(db,'SoulWeaponAtk'),
    soulWeaponFactor:F(db,'SoulWeaponAttackFactor'),wish3:f32(wishOptionValue(3))});
}

export function hpBaseArithmetic({base,soulGem,skin,grinding,wish,theme}) {
  let percentage=addF(f32(soulGem),100);
  percentage=addF(percentage,f32(Number(i32(skin))));
  percentage=addF(percentage,f32(grinding));
  percentage=addF(percentage,f32(wish));
  percentage=addF(percentage,f32(Number(i32(theme))));
  return toInt(Number(i64(base))*f32(percentage/100),64);
}
export function hpBase({db,grinding,wishOptionValue}) {
  return hpBaseArithmetic({base:sumLong(L(db,'Upgrade_Hp'),I(db,'Stat_Hp'),L(db,'Knowledge_HpBase')),
    soulGem:F(db,'SoulGemStat_Hp'),skin:I(db,'SkinOption_CharacterHp'),grinding:F(grinding,'SkillGrindingPassiveStat_Hp'),
    wish:f32(wishOptionValue(2)),theme:I(db,'ThemeDungeonBuff_CharacterHpAdd')});
}
export const healBaseArithmetic=({base,soulGem})=>toInt(Number(i64(base))*f32(addF(f32(soulGem),100)/100),64);
export function healBase({db}) {
  return healBaseArithmetic({base:sumLong(L(db,'Upgrade_Heal'),I(db,'Stat_Heal'),L(db,'Knowledge_HealBase')),soulGem:F(db,'SoulGemStat_Vit')});
}

export const equipmentArithmetic=({value,havePower})=>i64(toInt(Math.ceil(havePower)+Number(i64(value)),64)+100n);
export const atkEquipment=({db})=>equipmentArithmetic({value:L(db,'EquipmentAtk'),havePower:D(db,'Equipment_HavePower_Atk')});
export const hpAccessory=({db})=>equipmentArithmetic({value:L(db,'AccessoryHp'),havePower:D(db,'Accessory_HavePower_Hp')});

export function classFirstArithmetic({classValue,slayerClassValue,slayerHavePower}) {
  const percentage=Math.ceil(slayerHavePower)+Number(i64(i64(slayerClassValue)+100n));
  return toInt(percentage*Number(i64(classValue))/100,64);
}
export function classSecondArithmetic({value,tree,constellation}) {
  const factor=i32(i32(i32(tree)+i32(constellation))+100n);
  return i64(i64(value)*factor)/100n;
}
export function classArithmetic(v) {
  return classSecondArithmetic({...v,value:classFirstArithmetic(v)});
}
export function atkClass({db}) {
  return classArithmetic({classValue:L(db,'Class_Atk'),slayerClassValue:L(db,'SlayerClass_Value'),slayerHavePower:D(db,'SlayerClass_HavePower_Value'),
    tree:I(db,'ImmortalTreeUpgradeOption_ClassAtkAdd'),constellation:I(db,'StarConstellationCompleteOption_ClassAtkHpAdd')});
}
export function hpClass({db}) {
  return classArithmetic({classValue:L(db,'Class_Hp'),slayerClassValue:L(db,'SlayerClass_Value'),slayerHavePower:D(db,'SlayerClass_HavePower_Value'),
    tree:I(db,'ImmortalTreeUpgradeOption_ClassHpAdd'),constellation:I(db,'StarConstellationCompleteOption_ClassAtkHpAdd')});
}
export const atkTotalArithmetic=value=>toInt(addF(f32(value),100),64);
export const atkTotal=({db})=>atkTotalArithmetic(F(db,'FriendPassive_TotalAtk'));

export function criticalArithmetic({stat,upgrade,equipment,friendPassive,playerOption,friendOption,soulGem,grinding}) {
  let sum=f32(Number(i32(i32(stat)+i32(upgrade))));
  sum=addF(f32(equipment),sum);
  sum=addF(sum,f32(friendPassive));
  sum=addF(sum,f32(Number(i32(playerOption))));
  sum=addF(sum,f32(friendOption));
  sum=addF(sum,f32(soulGem));
  sum=addF(sum,f32(grinding));
  return i64(toInt(sum,64)+100n);
}
export function criticalDamage({db,grinding}) {
  return criticalArithmetic({stat:I(db,'Stat_CiriticalDmg'),upgrade:I(db,'Upgrade_CiriticalDmg'),equipment:F(db,'Equipment_HavePower_CriticalDmg'),
    friendPassive:F(db,'FriendPassive_CriticalDmg'),playerOption:I(db,'PlayerOption_CriticalDmg'),friendOption:F(db,'FriendOption_CriticalDmg'),
    soulGem:F(db,'SoulGemStat_Cri'),grinding:F(grinding,'SkillGrindingPassiveStat_Cri')});
}
export const superCriticalArithmetic=value=>i32(i32(value)+100n);
export const superCriticalDamage=({db})=>superCriticalArithmetic(I(db,'Upgrade_SuperCiriticalDmg'));
export function criticalProbability(context) {
  const preset=need(context,'presetStat');
  return preset===null?F(context.db,'Upgrade_CriticalProb'):F(preset,'CriticalProb');
}
export function superCriticalProbability(context) {
  const preset=need(context,'presetStat');
  return preset===null?F(context.db,'Upgrade_SuperCriticalProb'):F(preset,'SuperCriticalProb');
}

// SpecialCook is nullable in the native expression. If the manager is absent,
// the lifted sum is absent too and this getter returns 100, even if other buff
// inputs are nonzero. Keep this baseline behavior until a recovered IFix says otherwise.
export function additiveArithmetic({values,dragonPresent,bits}) {
  if (!dragonPresent) return 100n;
  let sum=f32(values[0]);
  for (const v of values.slice(1)) sum=addF(sum,f32(v));
  return BigInt.asIntN(bits,toInt(sum,bits)+100n);
}
export function atkAdd({db,dragonSpecialCook}) {
  const values=[F(db,'Artifact_AtkAdd'),f32(Number(I(db,'PlayerOption_AtkAdd'))),F(db,'FriendOption_AtkAdd'),F(db,'FriendPassive_AtkAdd'),
    f32(Number(I(db,'SkillMasteryOption_AtkAdd'))),f32(Number(I(db,'ImmortalTreeUpgradeOption_AtkAdd'))),f32(Number(I(db,'StarLevelAtkFactor')))];
  if (dragonSpecialCook===undefined) throw new Error('Unrecovered input: dragonSpecialCook');
  if (dragonSpecialCook!==null) values.push(F(dragonSpecialCook,'DragonValleySpecialCookMaterialBuff_Atk'));
  return additiveArithmetic({values,dragonPresent:dragonSpecialCook!==null,bits:64});
}
export function hpAdd({db,dragonSpecialCook}) {
  const values=[F(db,'Artifact_HpAdd'),f32(Number(I(db,'PlayerOption_HpAdd'))),F(db,'FriendOption_HpAdd'),F(db,'FriendPassive_HpAdd'),
    f32(Number(I(db,'SkillMasteryOption_HpAdd'))),f32(Number(I(db,'ImmortalTreeUpgradeOption_HpAdd'))),f32(Number(I(db,'StarLevelHpFactor')))];
  if (dragonSpecialCook===undefined) throw new Error('Unrecovered input: dragonSpecialCook');
  if (dragonSpecialCook!==null) values.push(F(dragonSpecialCook,'DragonValleySpecialCookMaterialBuff_Hp'));
  return additiveArithmetic({values,dragonPresent:dragonSpecialCook!==null,bits:32});
}
export function healAdd({db,dragonSpecialCook}) {
  const values=[F(db,'Artifact_Heal'),f32(Number(I(db,'PlayerOption_HealAdd'))),F(db,'FriendOption_HealAdd'),
    f32(Number(I(db,'SkillMasteryOption_HealAdd'))),f32(Number(I(db,'ImmortalTreeUpgradeOption_HealAdd'))),f32(Number(I(db,'StarLevelHealFactor')))];
  if (dragonSpecialCook===undefined) throw new Error('Unrecovered input: dragonSpecialCook');
  if (dragonSpecialCook!==null) values.push(F(dragonSpecialCook,'DragonValleySpecialCookMaterialBuff_Heal'));
  return additiveArithmetic({values,dragonPresent:dragonSpecialCook!==null,bits:32});
}

export const SOURCE=Object.freeze({atkBase:'0x4eeef44',atkTotal:'0x4eef318',atkAdd:'0x4eef484',atkEquipment:'0x4eef944',atkClass:'0x4eefb30',
  criticalProbability:'0x4eefe00',criticalDamage:'0x4eefeec',superCriticalProbability:'0x4ef01e0',superCriticalDamage:'0x4ef02cc',
  hpBase:'0x4ef0d74',hpAccessory:'0x4ef1050',hpAdd:'0x4ef11dc',hpClass:'0x4ef1660',healBase:'0x4ef18a4',healAdd:'0x4ef1a5c'});
