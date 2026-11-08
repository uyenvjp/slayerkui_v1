/** PlayerBase.GetDmg baseline method flow. Host/Unity actions are returned in
 * source order. Death/reflect/season callbacks are dependencies, not recreated
 * implementations. Inputs use decrypted values and original field names.
 */
import {f32,i32,nativeFloatToInteger} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step5/port/recovered-player-stats.mjs';
const F=(o,k)=>f32(need(o,k)),I=(o,k)=>i32(need(o,k)),B=(o,k)=>BigInt(need(o,k));
export function playerMissProbability(accuracy,miss,randomUnit){return f32(randomUnit)<f32(f32(miss)/f32(f32(accuracy)+f32(miss)));}
const reduce=(damage,percent)=>damage*nativeFloatToInteger(f32(f32(100-f32(percent))*100),32)/10000n;
export function receivePlayerDamage(context,args){
 const p=need(context,'player'),effects=[],draws={int:0,float:0};
 const emit=(name,...values)=>effects.push({name,args:values});
 const draw=kind=>{const values=need(need(context,'random'),kind);const index=draws[kind]++;if(index>=values.length)throw new Error('Unrecovered input: random '+kind+' draw '+index);return values[index];};
 const miss=value=>playerMissProbability(need(args,'accuracy'),value,draw('float'));
 const finish=()=>({effects,draws});
 if(I(p,'state')===3n||!need(p,'isBattle'))return finish();
 if(I(p,'waterReflectCount')>0n){emit('WaterReflect');return finish();}
 const mode=Number(I(context,'gameMode'));let damage=BigInt(need(args,'damage'));
 let ignore=false;
 if(mode===24&&F(p,'WorldBossEffect_DmgIgnoreChance')>0)ignore=F(p,'WorldBossEffect_DmgIgnoreChance')>f32(draw('int'));
 if(miss(F(need(context,'getters'),'Miss'))||need(p,'SkillMiss')||ignore){emit('FloatString.Miss');if(need(p,'SkillMiss')){emit('SeasonQuest.TryAddCount',17,22,1);if(mode===8)emit('UpdateHighSlayerQuestType',42,22);}return finish();}
 if(need(args,'onHitCallbackPresent')&&!miss(F(need(context,'getters'),'Resistance')))emit('onHitCallback');
 emit('Animator.Hit');emit('HitEffect');emit('Sound.BeHit');
 if(mode===0&&need(context,'CameraShake'))emit('CheckHitRandomCameraShake');
 if(!need(args,'trueDamage')){
  damage=reduce(damage,F(need(context,'getters'),'DmgReduce'));
  damage=reduce(damage,F(need(context,'getters'),'CurrentDmgReduce'));
  if(F(p,'DmgReduce_Mastery')>0)damage=reduce(damage,F(p,'DmgReduce_Mastery'));
 }
 if(mode===24&&F(p,'WorldBossEffect_DmgReduceFactor')>0){const value=nativeFloatToInteger(f32(F(p,'WorldBossEffect_DmgReduceFactor')*100),32);damage=damage*i32(100n-value)/100n;}
 if(F(p,'EtheroDmgReduceBuff')>0)damage=reduce(damage,F(p,'EtheroDmgReduceBuff'));
 if(F(p,'Demon_Ti_DmgReduceBuff')>0)damage=reduce(damage,F(p,'Demon_Ti_DmgReduceBuff'));
 if(mode===24){const enemy=need(context,'worldBossEnemySkill');if(enemy!==null){const bonus=F(enemy,'PlayerDmgIncrease');if(bonus>0)damage=damage*i32(nativeFloatToInteger(bonus,32)+100n)/100n;}}
 if(F(p,'RebornDmgIncreaseDebuff')>0)damage=damage*i32(nativeFloatToInteger(F(p,'RebornDmgIncreaseDebuff'),32)+100n)/100n;
 const shield=B(p,'Shield_Cur');
 if(shield>0n){
  if(shield<=damage){p.Hp_cur=B(p,'Hp_cur')-(damage-shield);p.Shield_Cur=0n;emit('SetHpBar_Effect_FillAmount');emit('SkillShieldOff');}
  else p.Shield_Cur=shield-damage;
 }else p.Hp_cur=B(p,'Hp_cur')-damage;
 if(!need(context,'playerHpUpdatePresent'))throw new Error('Native NullReference path: playerHpUpdate after HP/shield write');
 emit('playerHpUpdate.Invoke');emit('Hpbar_DmgEffect');emit('FloatDmgText',String(damage),1);
 if(need(p,'WorldBossEffect_LowHpAttackSpeedEnabled')&&!need(p,'_worldBossLowHpAttackSpeedApplied')&&mode===24&&B(p,'Hp_cur')>0n){
  const ratio=f32(f32(Number(B(p,'Hp_cur')))/f32(Number(B(p,'Hp_max'))));
  if(ratio<f32(.2)){p._worldBossLowHpAttackSpeedApplied=true;emit('SkillAtkSpeed.WorldBossLowHp.set',300);emit('AttackSpeedSetting');}
 }
 if(B(p,'Hp_cur')<=0n){
  if(mode===24&&need(p,'WorldBossEffect_DeathSaveAvailable')){
   p.WorldBossEffect_DeathSaveAvailable=false;p.Hp_cur=B(p,'Hp_max')/2n;
   emit('playerHpUpdate.Invoke');emit('Hpbar_DmgEffect');emit('SpawnReviveEffect');
  }else if(need(p,'SeasonSkillffect_ReBornAvailable'))emit('FakeDeath',true);
  else emit('Death');
 }
 return finish();
}
export function receivePlayerPenalty(context,damage){
 const p=need(context,'player'),effects=[],emit=(name,...args)=>effects.push({name,args});
 const finish=()=>({effects,draws:{int:0,float:0}});
 if(I(p,'state')===3n||!need(p,'isBattle'))return finish();
 p.Hp_cur=B(p,'Hp_cur')-BigInt(damage);
 if(!need(context,'playerHpUpdatePresent'))throw new Error('Native NullReference path: playerHpUpdate after HP write');
 emit('playerHpUpdate.Invoke');emit('Hpbar_DmgEffect');emit('FloatDmgText',String(damage),1);
 if(p.Hp_cur<=0n){if(need(p,'SeasonSkillffect_ReBornAvailable'))emit('FakeDeath',true);else emit('Death');}
 return finish();
}
export const SOURCE={receivePlayerDamage:'0x4ef68c4',receivePlayerPenalty:'0x4ef7d64',playerMissProbability:'0x4d23080',hpGet:'0x5016640',hpSet:'0x501668c',shieldGet:'0x4ef1f6c',shieldSet:'0x4ef1fb8'};
