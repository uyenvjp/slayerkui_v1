/** Original unpatched StatManager EXP paths. Explicit account/buff/scroll and
 * table inputs; UI, subscribers, RNG source and online services are not a game
 * runtime here. BigInt values remain arbitrary precision, as in the source.
 */
import {f32,i32} from '../../logic-step4/port/recovered-combat.mjs';
import {expCal,probability} from '../../logic-step7/port/recovered-stage-rewards.mjs';
import {need} from '../../logic-step8/port/recovered-equipment-stats.mjs';
const word=x=>Number(i32(x));
const emit=(runtime,name,...args)=>runtime.emit({name,args});

export function applyExpScroll(amount,scroll){
  amount=BigInt(amount);
  if(!need(scroll,'present'))return amount;
  const multiplier=[2n,4n,5n][word(need(scroll,'type'))];
  return multiplier===undefined?amount:amount*multiplier;
}
export function addExpBuffs(state,amount,runtime){
  amount=expCal(amount,need(state,'expAdd'));
  amount=applyExpScroll(amount,need(state,'scroll'));
  const events=need(state,'hotTime');
  const multiplier=need(events,'hot')?2n:need(events,'super')?4n:need(events,'hyper')?5n:1n;
  amount*=multiplier;
  if(word(need(state,'adExpBuffLimitTime'))>=1)amount*=3n;
  emit(runtime,'EventBuff_Active',2,!!need(state,'eventBuffActive'));
  if(state.eventBuffActive)amount=amount*BigInt(word(need(state,'eventBuffExp')))/100n;
  return amount;
}
export function receiveExp(state,rawAmount,mode,runtime){
  if(!['full','withoutSpirit','noBuff'].includes(mode))throw new TypeError('Unknown native EXP path');
  let amount=mode==='noBuff'?BigInt(rawAmount):addExpBuffs(state,rawAmount,runtime);
  if(mode==='full'){
    const chance=f32(need(state,'spiritExpChance'));emit(runtime,'SpiritSkillValue',10);
    if(chance>0){const draw=f32(runtime.randomFloat(0,100));if(probability(chance,draw))amount*=2n;}
  }
  state.currentExp=BigInt(need(state,'currentExp'))+amount;emit(runtime,'CurrentExp.Write',String(state.currentExp));
  state.totalExp=BigInt(need(state,'totalExp'))+amount;emit(runtime,'TotalExp.Write',String(state.totalExp));
  emit(runtime,'StatManager.Fill_Update');
  if(mode==='full'){
    emit(runtime,'ItemDropManager.ItemDropLog',24,String(amount));
    if(word(need(state,'gameMode'))===6)emit(runtime,'GameManager.CaveExp_Update',String(amount));
  }
}
export function getUserMaxLevel(state,runtime){
  emit(runtime,'UpdateMaxValues.Get',5);return word(need(state,'userMaxLevel'));
}
/** Predicts from local copies, subtracting EXP before the post-increment cap
 * check. Does not write account EXP or level. A table lookup is mandatory only
 * after a successful increment that remains below the configured maximum.
 */
export function checkExpAndGetUserLevel(state,runtime){
  let exp=BigInt(need(state,'currentExp')),level=word(need(state,'level')),cost=BigInt(need(state,'maxExp'));
  while(exp>=cost){
    exp-=cost;level=word(level+1);
    if(level>=getUserMaxLevel(state,runtime))break;
    emit(runtime,'ExpList.Get',level);cost=BigInt(need(need(state,'expTable'),String(level)));
  }
  return level;
}
