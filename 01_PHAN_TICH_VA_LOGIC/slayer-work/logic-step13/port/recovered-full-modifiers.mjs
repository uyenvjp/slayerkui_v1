/** Modifier formulas linked to HP/result lifecycle; upstream stat population,
 * spirit availability and secure wrappers remain explicit fixture inputs.
 */
import {f32,i32,i64,nativeFloatToInteger,elementalDamage,percentFloat32,percentIntegerWord,hpDecreaseArithmetic,isHighHp,isLowHp,lowHpArithmetic} from '../../logic-step4/port/recovered-combat.mjs';
export function applyFullModifiers(f,e,damage,emit,session){
 const s=f.stats,a=f.args,type=e.MonsterType,spirit=id=>f32(s.spiritValues[String(id)]),available=id=>s.spiritChecks[String(id)];
 const stack=amount=>{if(f.life.dmgStack)emit('DmgStackEvent',String(amount));};
 if(type===3){
  if(a.skillDamage)damage=elementalDamage(damage,e.characterDmgType,a.attackElement|0);
  if(a.skillTag===null||typeof a.skillTag==='number'||a.skillTag.kind!=='DivineBeastDmgInfoData'){if(f32(s.beastBoss)>0)damage=percentFloat32(damage,s.beastBoss);}
  stack(damage);return damage;
 }
 if(type===1){
  const value=spirit(11);
  if(e.hpCur>=BigInt(f.life.hpMax)&&value>0&&available(11)){
   const reduction=hpDecreaseArithmetic(f.life.hpMax,value);e.hpCur-=reduction;emit('HP.Set',String(e.hpCur));stack(reduction);emit('SpiritSkillEffect_EnemyTarget',11,1);
  }
 }else session.bossHitCount=(session.bossHitCount+1)|0;
 if(a.skillDamage){
  damage=elementalDamage(damage,e.characterDmgType,a.attackElement|0);const id=type===1?5:4,value=spirit(id);
  if(value>0&&available(id))damage=percentFloat32(damage,value);
 }
 const orb=i64(type===1?s.blackOrbNormal:s.blackOrbBoss);if(orb>=1n)damage=percentIntegerWord(damage,orb);
 const theme=i32(type===1?s.themeNormal:s.themeBoss);if(theme>=1n)damage=percentIntegerWord(damage,theme);
 if(type===2&&f32(s.beastBoss)>0)damage=percentFloat32(damage,s.beastBoss);
 const high=spirit(8);if(high>0&&isHighHp(e.hpCur,f.life.hpMax)&&available(8))damage=percentFloat32(damage,high);
 if(f32(s.lowHpBonus)>0&&isLowHp(e.hpCur,f.life.hpMax,nativeFloatToInteger(f32(s.lowHpThreshold))))damage=lowHpArithmetic(damage,s.lowHpBonus);
 stack(damage);return damage;
}
