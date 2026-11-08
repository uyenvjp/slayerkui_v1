/** Recovered iterator bodies, not a Unity scheduler or full death/respawn port.
 * Every downstream effect is a request; Hp_Heal_Skill, Move and BattleEnd
 * still require their own implementations. No account defaults are invented.
 */
import {f32,nativeFloatToInteger} from '../../logic-step4/port/recovered-combat.mjs';
const need=(o,k)=>{if(o==null||!Object.hasOwn(o,k))throw new TypeError(`Missing native input: ${k}`);return o[k];};
const emit=(effects,name,...args)=>effects.push({name,args});
export function fakeDeathStep(iterator,input){
  const next={...iterator},effects=[];const state=need(iterator,'state');
  if(![0,1,2].includes(state))return {iterator:next,yielded:false,effects};
  next.state=-1;
  if(state===0){
    emit(effects,'Sound.Virtual1848');emit(effects,'SetState',3);emit(effects,'Rigidbody2D.set_linearVelocity',0,0);
    emit(effects,'BlackBackGround_BlackOut');emit(effects,'SkillUsing_ON');emit(effects,'SetRebornState',1);
    const seconds=f32(need(iterator,'secondToReborn'));next.current={waitForSeconds:seconds};next.state=1;
    emit(effects,'WaitForSeconds',seconds);return {iterator:next,yielded:true,effects};
  }
  if(state===2){emit(effects,'SetRebornState',3);return {iterator:next,yielded:false,effects};}
  // FCMP b.ls exits for <=0; unordered (NaN) continues the native body.
  if(f32(need(input,'battleTime'))<=0)return {iterator:next,yielded:false,effects};
  emit(effects,'SpawnRebornEffect');emit(effects,'Effect.SetParent');
  const pos=need(input,'playerPosition').map(f32);
  emit(effects,'Effect.set_position',f32(pos[0]+f32(0)),f32(pos[1]+f32(2.5)),f32(pos[2]+f32(0)));
  emit(effects,'Effect.set_localScale',3,3,1);emit(effects,'Effect.SetActive',true);
  emit(effects,'set_Hp_cur','0');emit(effects,'Hp_Heal_Skill',f32(need(iterator,'hpPercent')));
  emit(effects,'BlackBackGround_OFF');emit(effects,'SkillUsing_OFF');emit(effects,'Move.Factory');emit(effects,'StopAndGoIE_State');emit(effects,'SetRebornState',2);
  const seconds=f32(need(iterator,'buffDuration'));next.current={waitForSeconds:seconds};next.state=2;
  emit(effects,'WaitForSeconds',seconds);return {iterator:next,yielded:true,effects};
}
export function defeatStep(iterator){
  const next={...iterator},effects=[];const state=need(iterator,'state');
  if(state===0){next.state=-1;emit(effects,'GameManager.DefaultSetting');next.current={waitForSeconds:2};next.state=1;emit(effects,'WaitForSeconds',2);return {iterator:next,yielded:true,effects};}
  if(state===1){next.state=-1;emit(effects,'BattleEnd',false);}
  return {iterator:next,yielded:false,effects};
}
// Arithmetic preceding the Hp_Heal call in PlayerBase.Hp_Heal_Skill 0x4ef2724.
// Hp_Heal's cap/callback behavior is intentionally outside this helper.
export function healSkillAmount(hpMax,hpPercent){return BigInt(hpMax)*nativeFloatToInteger(f32(hpPercent),32)/100n;}
