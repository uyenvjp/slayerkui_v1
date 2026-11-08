/** SkillData mastery and Atk_Cal orchestration; unpatched XAPK 705 only.
 * The underlying player-skill calculation and mode-specific handlers remain
 * explicit dependencies. This is not a full skill/battle implementation.
 */
import {i32} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from './recovered-player-stats.mjs';
import {playerSkillDamage,applyGuildActiveDamage,applyWorldBossSkillPenalty} from './recovered-skill-damage.mjs';

export function masteryFactorDamage(damage,percentage) {
  return BigInt(damage)*i32(percentage)/100n;
}
export function masteryDamage(damage,attackSkillType,level,rows) {
  const row=rows.get(Number(i32(attackSkillType)));
  const l=Number(i32(level));
  if (row===undefined || l<1 || l>5) return BigInt(damage);
  return masteryFactorDamage(damage,need(row,'Level'+l));
}

export function calculateSkillAttack(context) {
  const skill=need(context,'skill');
  const base=need(context,'playerSkillDamage');
  let result=[BigInt(base(0)),BigInt(base(1)),BigInt(base(2))];
  const level=Number(i32(need(context,'getMasteryLevel')()));
  const table=need(context,'masteryRows');
  if (level>=1) result=result.map(d=>masteryDamage(d,need(skill,'AttackSkillType'),level,table));
  if (Number(i32(need(skill,'skillOpenType')))===3) {
    const linked=need(context,'SkillDictionary_Index').get(Number(i32(need(skill,'LinkSkillSlotIndex'))));
    if (!linked) throw new Error('Unrecovered linked skill');
    const type=Number(i32(need(linked,'AttackSkillType')));
    const levels=need(context,'AttackSkillTypeMasteryLevelDic');
    if (!levels.has(type)) throw new Error('Missing AttackSkillTypeMasteryLevelDic key: '+type);
    result=result.map(d=>masteryDamage(d,type,levels.get(type),table));
  }
  const mode=Number(i32(need(context,'gameMode')));
  if (mode===21) {
    const apply=need(context,'ApplyActiveSkillDamageBuff');
    result=result.map(d=>BigInt(apply(skill,d)));
  }
  if (mode===24) {
    const handler=need(context,'worldBossFieldEffect');
    if (handler!==null) result=result.map(d=>BigInt(need(handler,'ApplyActiveSkillDamagePenalty')(skill,d)));
  }
  return {NormalDmg:result[0],CriticalDmg:result[1],SuperCriticalDmg:result[2]};
}

export function getMasteryLevel(context,skill) {
  const type=Number(i32(need(skill,'AttackSkillType')));
  const dict=need(context,'AttackSkillTypeMasteryLevelDic');
  let level=dict.has(type)?i32(dict.get(type)):0n;
  // The caller supplies the result of selecting the current preset and testing
  // its class: null, or a PresetBattle_SkillMastery instance's decrypted fields.
  const preset=need(context,'skillMasteryPreset');
  if (preset!==null && type!==0 && need(preset,'_isAncientAwaken') && i32(need(preset,'_ancientAwakenSkillType'))===BigInt(type)) level=i32(level+1n);
  return Number(level);
}

export function calculateRecoveredSkillAttack(context,skillData,masteryRows) {
  return calculateSkillAttack({skill:need(skillData,'skill'),
    playerSkillDamage:type=>playerSkillDamage(context,skillData,type),
    getMasteryLevel:()=>getMasteryLevel(context,skillData.skill),masteryRows,
    SkillDictionary_Index:context.SkillDictionary_Index,AttackSkillTypeMasteryLevelDic:context.AttackSkillTypeMasteryLevelDic,
    gameMode:need(context,'gameMode'),
    ApplyActiveSkillDamageBuff:(skill,d)=>applyGuildActiveDamage(skill,d,need(context,'guildFieldEffectData')),
    worldBossFieldEffect:context.worldBossFieldEffect===null?null:{ApplyActiveSkillDamagePenalty:(skill,d)=>applyWorldBossSkillPenalty(skill,d,need(context,'worldBossFieldEffect'))}});
}
export const SOURCE=Object.freeze({mastery:'0x530bef8',masteryExplicitType:'0x530c14c',calculateSkillAttack:'0x530b940',getMasteryLevel:'0x53058ac',isAncientAwakenSkill:'0x52602c8'});
