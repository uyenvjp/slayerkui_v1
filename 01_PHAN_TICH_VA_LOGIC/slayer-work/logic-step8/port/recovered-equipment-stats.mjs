/** EquipmentSlotManager native baseline. Explicit decrypted account/table
 * state; no fabricated inventory, account defaults, Unity UI or live IFix.
 */
import {f32,i32} from '../../logic-step4/port/recovered-combat.mjs';
import {equipmentValue} from '../../logic-step7/port/recovered-equipment-upgrade.mjs';
export const need=(o,k)=>{if(o==null||!Object.hasOwn(o,k))throw new TypeError(`Missing native input: ${k}`);return o[k];};
const word=x=>Number(i32(x));
const item=(state,index)=>need(need(state,'equipment'),String(word(index)));
const awakening=(state,grade)=>need(need(state,'awakening'),String(word(grade)));
const growth=level=>f32(f32(f32(word(level))*f32(.1))+f32(1));

export function atkValue(state,index,level){
  index=word(index);const grade=index>=24?word(need(state,'awakeningWeapon')):0;
  const base=index>=24&&grade>=1?need(awakening(state,grade),'Value'):need(item(state,index),'Value');
  return equipmentValue(base,need(need(need(state,'levels'),String(word(level))),'Value'));
}
export function havePowerCritical(state,index,level){return havePower(state,index,level,'HavePower_CriticalValue');}
export function havePowerGold(state,index,level){return havePower(state,index,level,'HavePower_GoldAmountValue');}
function havePower(state,index,level,key){
  index=word(index);let base=f32(need(item(state,index),key));
  const grade=index>=24?word(need(state,'awakeningWeapon')):0;
  if(index>=24&&grade>=1)base=f32(need(awakening(state,grade),key));
  return f32(growth(level)*base);
}
export function atkValueAwakening(state,grade){
  const current=item(state,24);grade=word(grade);
  const base=grade>=1?need(awakening(state,grade),'Value'):need(current,'Value');
  return equipmentValue(base,need(need(need(state,'levels'),String(word(need(current,'Level')))),'Value'));
}
export const havePowerCriticalAwakening=(state,grade)=>previewHavePower(state,grade,'HavePower_CriticalValue');
export const havePowerGoldAwakening=(state,grade)=>previewHavePower(state,grade,'HavePower_GoldAmountValue');
function previewHavePower(state,grade,key){
  const current=item(state,24);grade=word(grade);
  const base=grade>=1?f32(need(awakening(state,grade),key)):f32(need(current,key));
  return f32(base*growth(need(current,'Level')));
}

/** Replaces one contribution, preserving native subtraction/assignment/addition
 * order. ATK uses double; critical/gold use float32 at each arithmetic step.
 * write callbacks expose intermediate values for method-flow comparison.
 */
export function renewHavePower(kind,state,index,newValue,onWrite=()=>{}){
  index=String(word(index));const floating=kind!=='atk';
  if(!['atk','critical','gold'].includes(kind))throw new TypeError(`Unknown contribution kind ${kind}`);
  const cast=floating?f32:Number,values={...need(state,'values')};
  const old=cast(need(values,index));let total=cast(cast(need(state,'total'))-old);
  onWrite({kind:'total',value:total});values[index]=cast(newValue);onWrite({kind:'entry',index:Number(index),value:values[index]});
  total=cast(total+cast(values[index]));onWrite({kind:'total',value:total});return {total,values};
}
