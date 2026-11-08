/** HP/result/death and warm EnemyNormal callback order. Secure values,
 * delegates, Unity and downstream manager/subscriber effects are dependencies.
 */
import {stageItemDrop,stageGoldAmount} from '../../logic-step7/port/recovered-stage-rewards.mjs';
const f32=Math.fround;
const required=present=>{if(!present)throw new TypeError('Native NullReference');};
export function createResultRuntime(f,e,emit,session){
 const life=f.life,instantValue=f32(life.instantKillPercent);
 const random=(kind,min,max)=>{
  const unit=f.reward.draws[session.rewardCursor%f.reward.draws.length];session.rewardCursor++;
  const value=kind==='RandomFloat'?f32(min+(max-min)*unit):Math.min(max-1,min+Math.floor((max-min)*unit));
  emit('Reward',{kind,min,max,value});return value;
 };
 const rewardRuntime={randomFloat:(a,b)=>random('RandomFloat',a,b),randomInt:(a,b)=>random('RandomInt',a,b),eventBuffActive:code=>{const result=f.reward.eventBuffActive[String(code)];emit('Reward',{kind:'EventBuff_Active',code,result});return result;},getStageGoldAmount:()=>stageGoldAmount(f.reward.stageGold,random('RandomInt',90,111)),effect:event=>emit('Reward',event)};
 const hp=value=>{e.hpCur=value;emit('HP.Set',String(value));};
 const checkTag=()=>{
  const tag=e.lastSkillTag;
  if(tag===null)return;
  if(typeof tag==='number')emit('CheckDeadBuffBySkillIndex',tag|0);
  else if(tag.kind==='CombinedDemon'&&life.combinedKillCallbackPresent)emit('Player.CombinedDemonKill',tag);
  e.lastSkillTag=null;
 };
 const normalDead=()=>{
  emit('EnemyNormal.DeadEvent');required(life.databaseKillCallbackPresent);emit('DatabaseManager.KillEvent');
  if((f.context.gameMode|0)===0){emit('StageItemDrop');stageItemDrop(f.reward,rewardRuntime);}
  else if((f.context.gameMode|0)===4)emit('MineItemDrop');
  emit('Effect.Dead',1);emit('Effect.Slash',8);
  if((life.enemyType|0)===8)emit('Camera.DarkMap');
  if((life.enemyType|0)===9){
   emit('SkillCoolTimeBuff');for(let n=0;n<6;n++){emit('SpawnCooltimeDropEffect');emit('CooltimeDrop.SetActive',true);emit('CooltimeDrop.SetEffect');}
  }
  if((life.enemyType|0)===7)emit('Player.SlowEffect',80,1.5);
  emit('GameManager.Enemy_Dead',true);
  if(session.applyGameDeath)session.applyGameDeath(f,e,emit);
 };
 const death=()=>{
  emit('Death.Enter',e.isDead);if(e.isDead)return;
  e.isDead=true;e.hitInProgress=false;
  required(life.scalerPresent);required(life.spriteScalerPresent);required(life.poolPresent);
  emit('EnemyDeadEffect',f32(life.scaleX),f32(life.spriteScaleX));required(life.deathCallbackPresent);emit('EnemyDead_Event.Invoke');
  normalDead();if(life.playerKillCallbackPresent)emit('Player.KillCountEvent');checkTag();
 };
 return {
  applyResult(damage,type){
   if(type===3)emit('DotDmgResult',String(damage));emit('DmgResult',String(damage));hp(e.hpCur-damage);
   if(e.hpCur>0n&&e.MonsterType===1&&!e.isDead&&instantValue>0&&life.instantKillAvailable&&Number(e.hpCur)/Number(BigInt(life.hpMax))<=Number(instantValue)*0.01){
    if(life.dmgStack)emit('DmgStackEvent',String(e.hpCur));hp(0n);emit('SpiritSkillEffect_EnemyTarget',7,1);
   }
   if(e.hpCur<=0n)death();else emit('Hpbar_DmgEffect');
  }
 };
}
