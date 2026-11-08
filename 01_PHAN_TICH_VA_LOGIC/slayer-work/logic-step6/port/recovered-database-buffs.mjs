/** Original DatabaseManager combat getter rules, unpatched XAPK 705.
 * Inputs are decrypted fields and dictionary values in original enumeration
 * order. Missing account/buff state is never replaced by invented defaults.
 */
import {f32,i32,i64} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step5/port/recovered-player-stats.mjs';
const F=(o,k)=>f32(need(o,k));
const I=(o,k)=>i32(need(o,k));
const L=(o,k)=>i64(need(o,k));
const elemental={Fire:{wish:4,skillCache:'fireSkillDmg',orbCache:'fireDamage_BlackOrbOption'},
 Water:{wish:5,skillCache:'waterSkillDmg',orbCache:'waterDamage_BlackOrbOption'},
 Wind:{wish:6,skillCache:'windSkillDmg',orbCache:'windDamage_BlackOrbOption'},
 Earth:{wish:7,skillCache:'earthSkillDmg',orbCache:'earthDamage_BlackOrbOption'}};

function values(dictionary) {
  if (dictionary===null || dictionary===undefined) throw new Error('Native NullReference path: buff dictionary');
  if (dictionary instanceof Map) return dictionary.values();
  if (Array.isArray(dictionary)) return dictionary.values();
  throw new Error('Unrecovered input: ordered dictionary values');
}
export function skillEffectAttack(context) {
  let result=100n;
  for(const value of values(need(need(context,'statics'),'SkillAtkDmg'))) result=i32(result+i32(value));
  need(context,'db')._skillEffect_AtkDmg=result;
  return result;
}
export function elementalSkillDamage(context,element) {
  const spec=need(elemental,element),db=need(context,'db');
  let result=f32(F(db,'Artifact_'+element+'Dmg')+F(db,'FriendStat_'+element+'Dmg'));
  result=f32(result+F(db,'FriendPassive_'+element+'Dmg'));
  result=f32(result+f32(Number(I(db,'SkillBonusDmg'))));
  result=f32(result+f32(Number(L(db,'BlackOrbAccsMainValue_'+element+'Damage'))));
  result=f32(result+F(db,'DemonAttributeDmgAdd'));
  db[spec.skillCache]=result;
  return result;
}
export function elementalBlackOrbDamage(context,element) {
  const spec=need(elemental,element),db=need(context,'db'),wish=need(context,'wishOptionValue');
  let result=f32(F(db,'BlackOrbAccsSubOptionValue_'+element+'Damage')+F(db,'BlackOrbAccsSubOptionValue_AllAttributeDamage'));
  result=f32(result+f32(wish(spec.wish)));
  result=f32(result+f32(wish(8)));
  result=f32(result+f32(Number(L(db,'BlackOrbResonateValue_AllDamage'))));
  db[spec.orbCache]=result;
  return result;
}
const season={Fire:['FireSkillDmgBuff','_skillEffectFireDmgBuff'],Water:['WaterSkillDmgBuff','_EffectwaterDmgBuff'],
 Wind:['WindSkillDmgBuff','_skillEffectWindDmgBuff'],Earth:['EarthSkillDmgBuff','_skillEffectEarthDmgBuff']};
export function seasonSkillDamage(context,element) {
  const [dictionary,cache]=need(season,element);
  let result=f32(0);
  for(const value of values(need(need(context,'statics'),dictionary))) result=f32(result+f32(value));
  need(context,'db')[cache]=result;
  return result;
}
export function demonAltarSkillDamage(context) {
  const demon=need(context,'demon');
  if(demon===null) throw new Error('Native NullReference path: DemonManager.Instance');
  const altar=need(demon,'Altar');
  if(altar===null) throw new Error('Native NullReference path: DemonManager.Altar');
  return F(altar,'SkillDmgValue');
}
const spiritFields=[null,'SpiritSkill_BossCurrentHpPercentDmg','SpiritSkill_TimeStop','SpiritSkill_SkillCooltimeCharge',
 'SpiritSkill_BossAddSkillDmg','SpiritSkill_NormalEnemyAddDmg','SpiritSkill_GoldDrop','SpiritSkill_NormalEnemyInstantKill',
 'SpiritSkill_HighHpEnemyAddDmg','SpiritSkill_PlayerHpPercent','SpiritSkill_ExpDrop','SpiritSkill_NormalEnemyHpDecrease','SpiritSkill_FinishTimeDmg'];
export function spiritValue(context,index) {
  const db=need(context,'db');
  if(need(db,'SpiritSkill_Ban')) return f32(0);
  const id=Number(i32(index));
  return id>=1 && id<=12?F(db,spiritFields[id]):f32(0);
}
export function spiritCheck(context,index) {
  const types=need(need(context,'db'),'SpiritSkillTypes');
  if(types===null) throw new Error('Native NullReference path: SpiritSkillTypes');
  if(!Array.isArray(types)) throw new Error('Unrecovered input: SpiritSkillTypes array');
  const id=i32(index);
  return types.some(value=>i32(value)===id);
}

export function createDatabaseRuntime(context) {
  const routes={SkillEffect_AtkDmg:()=>skillEffectAttack(context),SkillValueDemonAltar:()=>demonAltarSkillDamage(context)};
  for(const element of Object.keys(elemental)) {
    routes[element+'SkillDmg']=()=>elementalSkillDamage(context,element);
    routes[element+'DamageOption_BlackOrb']=()=>elementalBlackOrbDamage(context,element);
    routes['SkillEffect'+(element==='Water'?'water':element)+'DmgBuff']=()=>seasonSkillDamage(context,element);
  }
  return {databaseGetters:name=>need(routes,name)(),spiritValue:index=>spiritValue(context,index),spiritCheck:index=>spiritCheck(context,index)};
}
export const SOURCE=Object.freeze({skillEffectAttack:'0x4d509d4',FireSkillDmg:'0x4d50198',WaterSkillDmg:'0x4d5032c',WindSkillDmg:'0x4d504c0',EarthSkillDmg:'0x4d50654',
 FireDamageOption_BlackOrb:'0x4d4ecf0',WaterDamageOption_BlackOrb:'0x4d4ebb0',WindDamageOption_BlackOrb:'0x4d4ee18',EarthDamageOption_BlackOrb:'0x4d4ef40',
 SkillEffectFireDmgBuff:'0x4d50db8',SkillEffectwaterDmgBuff:'0x4d50fa4',SkillEffectWindDmgBuff:'0x4d51190',SkillEffectEarthDmgBuff:'0x4d5137c',
 demonAltarSkillDamage:'0x4d51568',spiritValue:'0x4d59090',spiritCheck:'0x4d58f70'});
