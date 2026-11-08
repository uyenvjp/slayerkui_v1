/** APIValidator currency snapshot/check bodies. Log requests are returned;
 * no server response is fabricated or forced successful, and PostLog's own
 * implementation is outside this module. CurrencyData getters are explicit.
 */
import {i32,i64} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from './recovered-equipment-stats.mjs';
const word=x=>Number(i32(x));
export function getCurrency(requestedType,lookup){
  const record=lookup(word(requestedType));
  if(record===null)return null;
  return {currency:word(need(record,'currency')),amount:i64(need(record,'amount')),totalGet:i64(need(record,'totalGet')),totalUsed:i64(need(record,'totalUsed'))};
}
export function getTotalGetValue(requestedType,lookup){const record=lookup(word(requestedType));if(record===null)throw new TypeError('Native null CurrencyData');return i64(need(record,'totalGet'));}
export function getTotalUsedValue(requestedType,lookup){const record=lookup(word(requestedType));if(record===null)throw new TypeError('Native null CurrencyData');return i64(need(record,'totalUsed'));}
export function checkCurrencyValues(api,remote,expectedAmount,expectedGet,expectedUsed){
  if(remote===null)throw new TypeError('Native null remote currency');
  const events=[];const expected={amount:i64(expectedAmount),totalGet:i64(expectedGet),totalUsed:i64(expectedUsed)};
  for(const field of ['amount','totalGet','totalUsed']){
    const actual=i64(need(remote,field));
    if(actual!==expected[field])events.push({name:'PostLog',field,api:word(api),currency:word(need(remote,'currency')),expected:String(expected[field]),actual:String(actual)});
  }
  return events;
}
export function checkCurrencySnapshot(api,remote,snapshot){
  if(snapshot===null)throw new TypeError('Native null snapshot');
  return checkCurrencyValues(api,remote,need(snapshot,'amount'),need(snapshot,'totalGet'),need(snapshot,'totalUsed'));
}
