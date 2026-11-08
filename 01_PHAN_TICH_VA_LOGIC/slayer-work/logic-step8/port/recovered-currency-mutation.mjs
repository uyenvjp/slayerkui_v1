/** CurrencyData.Gain/Use instance bodies. Signed int64 wrap is intentional.
 * The callback observes both updated fields. No balance clamp or sufficient-
 * funds gate occurs in these method bodies; callers own eligibility checks.
 */
import {i64} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from './recovered-equipment-stats.mjs';
export function mutateCurrency(kind,record,amount,onEvent=null){
  if(!['gain','use'].includes(kind))throw new TypeError(`Unknown currency operation ${kind}`);
  amount=i64(amount);record.amount=i64(i64(need(record,'amount'))+(kind==='gain'?amount:-amount));
  const key=kind==='gain'?'totalGet':'totalUsed';record[key]=i64(i64(need(record,key))+amount);
  if(onEvent!==null)onEvent(record);
  return record;
}
