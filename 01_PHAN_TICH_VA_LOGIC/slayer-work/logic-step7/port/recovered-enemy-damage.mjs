/** DRAFT: EnemyBase.GetDmg orchestration, ARM64 0x50b7810, original XAPK 705.
 * Explicit decrypted inputs. Effects retain call order; host handles Unity,
 * replay and quests. CombinedDemon/DivineBeast tags resolved from metadata.
 * Full orchestration has not yet been compared to a native-flow corpus.
 */
import {f32,i32,misses,abnormalArithmetic,burnArithmetic,freezeArithmetic,masteryArithmetic,elementalDamage,monsterModifiers,nativeFloatToInteger} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step5/port/recovered-player-stats.mjs';
const win=[0,4,1,2,3];
export function receiveEnemyDamage(enemy,context,args){
 const effects=[],emit=(name,...args)=>effects.push({name,args});let damage=BigInt(need(args,'damage'));
 const type=Number(i32(need(args,'damageType'))),tag=need(args,'skillTag'),isIndex=typeof tag==='number';
 const done=(hit=false)=>({hit,damage,effects});
 if(!need(enemy,'HitPossible'))return done();
 if(need(enemy,'MissState')){emit('FloatString.Miss');if(type===1)emit('SeasonQuest.TryAddCount',27,tag,1);return done();}
 if(need(enemy,'stunPresent')&&f32(need(context,'abnormalSkillValue'))>0&&type!==3&&(!isIndex||tag!==1004))emit('ScheduleAbnormalAddDamage');
 let accuracy=f32(need(context,'accuracy'));
 const grinding=need(context,'grinding');const option=isIndex?grinding[String(tag)]:undefined;
 if(option!==undefined)accuracy=f32(accuracy+f32(need(option,'Accuracy')));
 const trueDamage=need(args,'trueDamage');
 const isMiss=trueDamage?false:misses({accuracy,miss:need(context,'miss'),userLevel:need(context,'userLevel'),trueDamage:false,randomUnit:need(context,'randomUnit')()});
 if(type!==2&&type!==3&&isMiss){emit('FloatString.Miss');return finishQuest(done());}
 enemy._lastDamageSkillIndex=tag;enemy.isNeedIceEffect=false;
 const abnormal=()=>{if(enemy.stunPresent)damage=abnormalArithmetic(damage,need(context,'abnormalSkillValue'));};
 const ice=percent=>{if(need(enemy,'icePresent')){damage=freezeArithmetic(damage,need(context,'freezeAddDamage'),percent);enemy.isNeedIceEffect=percent>0;}};
 if(isIndex){
  if(tag!==45){
   abnormal();let mastery=0;
   if([1,2,3,12,13,14,18,29,34,35,36].includes(tag))mastery=Number(need(context,'masteryLevel')(tag));
   if(tag===29&&mastery>=2&&enemy.MonsterType===1)damage=masteryArithmetic(damage);
   else if(tag>=1&&tag<=3&&mastery>=3&&need(enemy,'isBurning'))damage=burnArithmetic(damage,30);
   else if(tag>=12&&tag<=14&&mastery>=2){ice(50);mastery=-1;}
   else if(tag>=34&&tag<=36&&mastery>=2&&enemy.MonsterType===2)damage=masteryArithmetic(damage);
   else if(tag===0)emit('Player.CheckRandomCameraShake');
   if(mastery!==-1)ice(0);
  }
  const element=Number(i32(need(args,'attackElement')));
  if(enemy.characterDmgType===(win[element]??0)){
   let bonus=option===undefined?f32(0):f32(need(option,'DmgType'));
   if(tag===18&&Number(context.masteryLevel(18))>=2)bonus=f32(bonus+50);
   if(bonus>0)damage=damage*nativeFloatToInteger(f32(f32(bonus+100)*100),64)/10000n;
  }
 }else if(tag!==null&&need(tag,'kind')==='CombinedDemon')abnormal();
 if(type===3)enemy.isNeedIceEffect=false;
 else{emit('Animator.Hit');emit('HitEffect');enemy.isNeedIceEffect=false;emit('Sound.Hit');}
 if(!need(args,'trueDamage')){
  const params={...need(context,'modifiers'),skillDamage:need(args,'skillDamage'),attackElement:need(args,'attackElement')};
  if(enemy.MonsterType===1||enemy.MonsterType===2){const result=monsterModifiers(damage,enemy,params,enemy.MonsterType===2);damage=result.damage;enemy.hpCurrent=result.hpCurrent;for(const e of result.events)emit('NativeModifier',e);}
  else if(enemy.MonsterType===3){if(args.skillDamage)damage=elementalDamage(damage,enemy.characterDmgType,args.attackElement);if(tag===null||tag.kind!=='DivineBeastDmgInfoData'){const b=f32(need(params,'beastBoss'));if(b>0)damage=damage*nativeFloatToInteger(f32(f32(b+100)*100),32)/10000n;}if(enemy.dmgStackState)emit('NativeModifier',{method:'DmgStackEvent',damage});}
 }
 if(tag===null||isIndex||tag.kind!=='DivineBeastDmgInfoData')emit('FloatDmgText',String(damage),need(args,'criticalType'));
 emit(type===3?'DotDmgResult':'DmgResult',String(damage));
 if(need(context,'needRecording')){emit('AddDamageInfo',tag,String(damage));emit('Replay.AddFrameSkillDamage',tag,String(damage));}
 return finishQuest(done(true));
 function finishQuest(result){if(need(enemy,'lastGetDmgCheck')&&need(context,'gameMode')===0&&need(context,'cameraShake')&&isIndex)emit('SeasonQuest.TryAddCount',43,tag,1);return result;}
}
export const SOURCE={receiveEnemyDamage:'0x50b7810',CombinedDemonTypeUsage:'0xa3f2bd8',DivineBeastTypeUsage:'0xa3f2bf0'};
