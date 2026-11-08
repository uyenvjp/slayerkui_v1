/** Unpatched APIManager controls and Network.Request result-code dispatch.
 * Explicit warm statics, UTC tick provider and UI/log dependencies; no network
 * request or account authentication is performed by this analysis module.
 */
import {i32,i64} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step8/port/recovered-equipment-stats.mjs';
const word=x=>Number(i32(x)),emit=(r,name,...args)=>r.emit({name,args});
const fields={RetryCount:'retryCount',FailCount:'failCount',CurrentSequence:'currentSequence',KickOut:'kickOut'};
export function getProcessing(s,r){
 let busy=!!need(s,'processingRaw');
 if(!busy){const count=need(s,'queueCount');if(count===null)throw new TypeError('Native NullReference');busy=word(count)>=1;}
 if(busy)emit(r,'DatabaseManager.LogError','api-processing');return busy;
}
export function setProcessing(s,value){s.processingRaw=!!(word(value)&1);}
export function getControl(s,name){const value=need(s,need(fields,name));return name==='CurrentSequence'?i64(value):name==='KickOut'?!!value:word(value);}
export function setControl(s,name,value){s[need(fields,name)]=name==='CurrentSequence'?i64(value):name==='KickOut'?!!(word(value)&1):word(value);}
const times=s=>{const d=need(s,'lastRequestTimes');if(d===null)throw new TypeError('Native NullReference');return d;};
export function setLastRequestTime(s,api,r){const now=r.utcNowTicks();times(s)[String(word(api))]=BigInt(now);emit(r,'LastRequestTime.Set',word(api),String(now));}
export function removeLastRequestTime(s,api,r){const d=times(s),key=String(word(api));const existed=Object.hasOwn(d,key);if(existed)delete d[key];emit(r,'LastRequestTime.Remove',word(api),existed);}
export function canRequest(s,api,seconds,r){const d=times(s),key=String(word(api));if(!Object.hasOwn(d,key))return true;const deadline=BigInt(d[key])+BigInt(word(seconds))*10000000n;return deadline<BigInt(r.utcNowTicks());}
function manager(r,name){if(!need(r,name+'Present'))throw new TypeError('Native NullReference');}
export function isValidCode(code,r){
 code=word(code);if(code===1)return true;
 if([3,12,15,16,20].includes(code)){manager(r,'alarm');emit(r,'AlarmManager.AlarmText',({3:'ALARM_TEXT_089',12:'ALARM_TEXT_089',15:'ALARM_TEXT_031',16:'ALARM_TEXT_018',20:'ALARM_TEXT_152'})[code]);}
 else if(code===13){manager(r,'alarm');emit(r,'AlarmManager.MaintenanceBreak_Alarm');}
 else if(code===14){manager(r,'alarm');emit(r,'AlarmManager.PopUp_UpdateAlarm');}
 else if(code===22){manager(r,'auth');emit(r,'AuthManager.Popup_DuplicateLogin');}
 else if(code===4||code===17){emit(r,'StackTrace.Create');emit(r,'StackTrace.ToString');manager(r,'alarm');emit(r,code===4?'AlarmManager.AbnormalError_Popup':'AlarmManager.PhysicalFail_Popup','stacktrace-fixture');}
 emit(r,'StackTrace.Create');emit(r,'Unity.Debug.LogError','invalid-response-code',code);return false;
}
