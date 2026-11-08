/** Bounded weapon upgrade client baseline. Does not implement fusion,
 * awakening payment, Level_Value_Setting, account sync or a backend.
 */
import {i32,i64} from '../../logic-step4/port/recovered-combat.mjs';
const word=n=>Number(i32(n));
export const equipmentValue=(baseValue,levelTableValue)=>i64(i64(baseValue)*i64(levelTableValue))/100000n;
export const upgradePrice=(basePrice,levelTablePrice)=>i64(BigInt(word(basePrice))*i64(levelTablePrice))/1800n;
export const maxLevelAwakening=grade=>word(i32(grade)*50n+200n);
const need=(o,k)=>{if(o==null||!Object.hasOwn(o,k))throw new TypeError(`Missing native input: ${k}`);return o[k];};
export function tryEquipmentUpgrade(snapshot,input){
  const next={...snapshot},effects=[];
  if(need(snapshot,'locked'))return {snapshot:next,effects};
  const level=word(need(snapshot,'level')),maxLevel=maxLevelAwakening(need(input,'awakeningWeapon'));
  if(level>=maxLevel){effects.push({name:'PointerUp'});return {snapshot:next,effects};}
  const price=i64(need(snapshot,'currentPrice'));
  if(i64(need(input,'upgradeCube'))<price){effects.push({name:'AlarmText.MissingCube'},{name:'PointerUp'});return {snapshot:next,effects};}
  if(price<=0n||(price<=999n&&level>=150)){
    next.hCount=word(word(need(snapshot,'hCount'))+1);
    if(next.hCount<=5)effects.push({name:'DataCheck_H',currency:6,price:String(price)});
  }
  next.upgradeCount=word(word(need(snapshot,'upgradeCount'))+1);
  effects.push({name:'ApplyEquipment'});
  return {snapshot:next,effects};
}
export function upgradePointerUp(snapshot){
  const next={...snapshot,isHolding:false},effects=[];
  if(word(need(snapshot,'upgradeCount'))>=1){effects.push({name:'APIManager.ItemUpgrade',index:word(need(snapshot,'equipmentIndex')),equipmentType:1,count:word(snapshot.upgradeCount)});next.upgradeCount=0;effects.push({name:'Sound.Virtual1320'});}
  return {snapshot:next,effects};
}
