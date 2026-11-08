/** PlayerBase native defense getters. Account manager fields are required. */
import {f32,i32} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step5/port/recovered-player-stats.mjs';
const F=(o,k)=>f32(need(o,k)),I=(o,k)=>i32(need(o,k));
export function playerMiss(c){
 const preset=need(c,'presetStat'),p=need(c,'player');let result;
 if(preset!==null)result=F(preset,'Miss');
 else{
  const db=need(c,'db');result=f32(F(db,'Stat_Miss')+10);
  result=f32(result+F(db,'Artifact_Miss'));result=f32(result+f32(Number(I(db,'PlayerOption_Miss'))));
  result=f32(result+F(db,'FriendOption_Miss'));result=f32(result+F(db,'FriendPassive_Miss'));
  result=f32(result+f32(Number(I(db,'SkinOption_Miss'))));result=f32(result+F(db,'SoulGemStat_Dodge'));
  const grinding=need(c,'skillGrinding');if(grinding===null)throw new Error('Native NullReference path: SkillGrindingDataManager');
  result=f32(result+F(grinding,'SkillGrindingPassiveStat_Dodge'));
  const dragon=need(c,'dragon');if(dragon===null||need(dragon,'SpecialCook')===null)throw new Error('Native NullReference path: DragonValleyManager.SpecialCook');
  result=f32(result+F(dragon.SpecialCook,'DragonValleySpecialCookMaterialBuff_Dodge'));
 }
 p.miss=result;return result;
}
export function playerResistance(c){const result=f32(F(need(c,'db'),'FriendOption_Resistance')+f32(Number(I(c.db,'PlayerOption_Resistance'))));need(c,'player').resistance=result;return result;}
export function playerDamageReduce(c){const result=need(c,'presetStat')!==null?f32(0):F(need(c,'db'),'FriendPassive_EnemyAtkReduce');need(c,'player').dmgReduce=result;return result;}
export const SOURCE={playerMiss:'0x4eeeaf8',playerResistance:'0x4eeee28',playerDamageReduce:'0x4eeed94'};
