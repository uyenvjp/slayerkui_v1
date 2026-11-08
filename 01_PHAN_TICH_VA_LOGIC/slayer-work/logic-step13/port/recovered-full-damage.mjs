import {applyFullModifiers} from './recovered-full-modifiers.mjs';
import {createResultRuntime} from './recovered-enemy-result.mjs';
/** GetDmg orchestration, explicit downstream modifier/result dependencies.
 * Does not invent enemy HP/death/loot behavior or a Unity battle loop.
 */
import {f32,i32,misses,abnormalArithmetic,burnArithmetic,freezeArithmetic,masteryArithmetic,nativeFloatToInteger} from '../../logic-step4/port/recovered-combat.mjs';
const word=x=>Number(i32(x)),win=[0,4,1,2,3];
export function receiveFullDamageHit(f,session){
 const e=structuredClone(f.enemy),c=f.context,a=f.args,effects=[];let damage=BigInt(a.damage),draws=0,resultDamage=null;
 const emit=(name,...args)=>effects.push({name,args}),tag=a.skillTag,index=typeof tag==='number',type=word(a.damageType),critical=word(a.criticalType),element=word(a.attackElement);
 const runtime=createResultRuntime(f,e,emit,session);e.hpCur=BigInt(f.life.hpCur);e.hitInProgress=f.life.hitInProgress;
 const result=error=>({hpCur:String(e.hpCur),hitInProgress:e.hitInProgress,rewardDraws:session.rewardCursor,bossHitCount:session.bossHitCount,lastSkillTag:e.lastSkillTag,isNeedIceEffect:e.isNeedIceEffect,isDead:e.isDead,resultDamage,effects,randomDraws:draws,...(error?{error}:{})});
 const requireValue=v=>{if(v===null)throw new TypeError('Native NullReference');return v;};
 const quest=()=>{if(e.isDead&&word(c.gameMode)===0&&c.cameraShake&&index)emit('SeasonQuest.TryAddCount',43,tag,1);};
 const abnormal=()=>{if(e.stunPresent)damage=abnormalArithmetic(damage,c.abnormalSkillValue);};
 const ice=percent=>{if(e.icePresent){damage=freezeArithmetic(damage,c.freezeAddDamage,percent);e.isNeedIceEffect=percent>0;}};
 try{
  if(!e.HitPossible)return result();
  if(e.MissState){emit('FloatString.Miss');if(type===1)emit('SeasonQuest.TryAddCount',27,tag,1);return result();}
  if(e.stunPresent&&type!==3&&f32(c.abnormalSkillValue)>0&&(!index||tag!==1004))emit('ScheduleAbnormalAddDamage');
  let accuracy=f32(c.accuracy),option;
  if(index&&Object.hasOwn(c.grinding,String(tag))){option=requireValue(c.grinding[String(tag)]);accuracy=f32(accuracy+f32(option.Accuracy));}
  let isMiss=false;
  if(!a.trueDamage){draws++;isMiss=misses({accuracy,miss:c.miss,userLevel:c.userLevel,trueDamage:false,randomUnit:c.randomUnit});}
  if(type!==2&&type!==3&&isMiss){emit('FloatString.Miss');quest();return result();}
  e.lastSkillTag=tag;e.isNeedIceEffect=false;
  if(index){
   if(tag!==45){
    abnormal();let skipIce=false;
    const hasMastery=Object.hasOwn(c.mastery,String(tag));
    const mastery=()=>word(requireValue(c.mastery[String(tag)]));
    if(tag===29&&hasMastery&&mastery()>=2&&e.MonsterType===1)damage=masteryArithmetic(damage);
    else if(tag>=1&&tag<=3&&hasMastery&&mastery()>=3&&(e.isBurning1||e.isBurning2))damage=burnArithmetic(damage,30);
    else if(tag>=12&&tag<=14){
     if(!hasMastery)skipIce=true;
     else if(mastery()>=2){ice(50);skipIce=true;}
    }else if(tag>=34&&tag<=36&&hasMastery&&mastery()>=2&&e.MonsterType===2)damage=masteryArithmetic(damage);
    else if(tag===0)emit('Player.CheckRandomCameraShake');
    if(!skipIce)ice(0);
   }
   if(e.characterDmgType===(win[element]??0)){
    let bonus=0;
    if(Object.hasOwn(c.grinding,String(tag)))bonus=f32(f32(requireValue(c.grinding[String(tag)]).DmgType)+0);
    if(tag===18&&Object.hasOwn(c.mastery,'18')&&word(requireValue(c.mastery['18']))>=2)bonus=f32(bonus+50);
    if(bonus>0)damage=damage*nativeFloatToInteger(f32(f32(bonus+100)*100),64)/10000n;
   }
  }else if(tag!==null&&tag.kind==='CombinedDemon')abnormal();
  if(type===3)e.isNeedIceEffect=false;
  else{
   if(!f.animatorPresent)throw new TypeError('Native NullReference');
   emit('Animator.Hit');emit('HitEffect',e.isNeedIceEffect);e.isNeedIceEffect=false;emit('Sound.Hit');
  }
  if(!a.trueDamage&&[1,2,3].includes(e.MonsterType)){
   const kind=['','Normal','Boss','SpecialBoss'][e.MonsterType];emit('Modifier.'+kind,String(damage),critical,element,!!a.skillDamage);damage=applyFullModifiers(f,e,damage,emit,session);
  }
  if(tag===null||index||tag.kind!=='DivineBeastDmgInfoData')emit('FloatDmgText',String(damage),critical);
  resultDamage=String(damage);runtime.applyResult(damage,type);
  if(c.needRecording){emit('AddDamageInfo',tag,resultDamage);emit('Replay.AddFrameSkillDamage',tag,resultDamage);}
  quest();return result();
 }catch(error){if(error.message!=='Native NullReference')throw error;return result(error.message);}
}

export function createFullDamage(f){return {fixture:structuredClone(f),rewardCursor:0,bossHitCount:f.stats.bossHitCount|0};}
export function stepFullDamage(s,changes={}){Object.assign(s.fixture.args,changes);const r=receiveFullDamageHit(s.fixture,s);Object.assign(s.fixture.enemy,{lastSkillTag:r.lastSkillTag,isNeedIceEffect:r.isNeedIceEffect,isDead:r.isDead});s.fixture.life.hpCur=r.hpCur;s.fixture.life.hitInProgress=r.hitInProgress;return r;}
