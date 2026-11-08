/** EnemyBase.<Attack_Coroutine>d__43.MoveNext 0x50be5dc.
 * Virtual get_AttackSpeed/SetState/AttackReady and GameDeltaTime are supplied.
 * This step models iterator state and requests, not Unity animation dispatch.
 */
import {f32} from '../../logic-step4/port/recovered-combat.mjs';
const need=(o,k)=>{if(o==null||!Object.hasOwn(o,k))throw new TypeError(`Missing native input: ${k}`);return o[k];};
export function enemyAttackStep(iterator,input){
  const next={state:need(iterator,'state'),waitTime:f32(need(iterator,'waitTime')),current:need(iterator,'current')};
  const effects=[];
  if(next.state!==0&&next.state!==1)return {iterator:next,yielded:false,effects};
  next.state=-1;
  if(iterator.state===0){effects.push({kind:'SetState',state:1});next.waitTime=f32(0);}
  const attackSpeed=f32(need(input,'attackSpeed'));
  // ARM FCMP b.ls: equality remains in the waiting branch.
  if(!Number.isNaN(next.waitTime)&&!Number.isNaN(attackSpeed)&&next.waitTime<=attackSpeed){
    next.waitTime=f32(next.waitTime+f32(need(input,'gameDeltaTime')));next.current=null;next.state=1;
    return {iterator:next,yielded:true,effects};
  }
  const distance=f32(f32(need(input,'enemyX'))-f32(need(input,'playerX')));
  if(distance<f32(need(input,'attackRange')))effects.push({kind:'SetState',state:10});
  else effects.push({kind:'AttackReady'});
  return {iterator:next,yielded:false,effects};
}
