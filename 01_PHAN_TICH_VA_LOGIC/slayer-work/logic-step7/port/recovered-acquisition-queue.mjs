/** DropObject.AddCurrency (long / BigInteger) native client baseline.
 * In-memory representation for analysis. GainCurrency and AcquireItems are
 * effects supplied by the caller, not replacements for server behavior.
 */
import {i32,i64} from '../../logic-step4/port/recovered-combat.mjs';
const need=(o,k)=>{if(o==null||!Object.hasOwn(o,k))throw new TypeError(`Missing native input: ${k}`);return o[k];};
export function addCurrencyQueue(snapshot,dropContext,currency,amount,big=false,bigCurrencyType){
  const context={...need(snapshot,'context')};
  const queues={currencies:structuredClone(need(snapshot,'currencies')),bigCurrencies:structuredClone(need(snapshot,'bigCurrencies')),equipment:structuredClone(need(snapshot,'equipment'))};
  const effects=[];const same=['dungeonType','mainIndex','subIndex'].every(k=>Number(i32(need(context,k)))===Number(i32(need(dropContext,k))));
  if(!same){
    effects.push({name:'AcquireItems',context:{...context},...structuredClone(queues)});
    // Clearing queues here models successful completion of the analyzed
    // synchronous flush body, not confirmation from the remote service.
    for(const k of Object.keys(queues))queues[k]=[];
  }
  for(const k of ['dungeonType','mainIndex','subIndex'])context[k]=Number(i32(need(dropContext,k)));
  currency=Number(i32(currency));const value=big?BigInt(amount):i64(amount);
  effects.push({name:'GainCurrency',currency,amount:String(value),overload:big?'BigInteger':'Int64'});
  if(big){if(bigCurrencyType===undefined)throw new TypeError('Missing native input: BigIntegerCurrency.ToBigCurrencyTypes');queues.bigCurrencies.push({currency:Number(i32(bigCurrencyType)),amount:String(value)});}
  else queues.currencies.push({currency,amount:String(value)});
  return {context,...queues,effects};
}
