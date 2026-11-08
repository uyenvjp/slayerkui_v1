/** ServerPrefs native baseline. Dictionary/enum/parsers/JSON are explicit
 * dependencies. This preserves client preference behavior, not an account
 * initializer, save file implementation or backend replacement.
 */
import {i32} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step8/port/recovered-equipment-stats.mjs';
const word=x=>Number(i32(x));
const dictionary=s=>{const d=need(s,'store');if(d===null)throw new TypeError('Native NullReference');return d;};
function existing(s,key){const d=dictionary(s);if(key===null)throw new TypeError('Native dictionary ArgumentNull fixture');if(!Object.hasOwn(d,key))return undefined;const v=d[key];if(v===null)throw new TypeError('Native NullReference');return v;}
export function prefsKey(key,runtime){return runtime.enumToString(word(key));}
export function getInt(s,key,fallback,runtime){const v=existing(s,key);if(v===undefined)return word(fallback);const parsed=runtime.tryInt32(need(v,'value'));return parsed===null?word(fallback):word(parsed);}
export function getString(s,key,fallback){const v=existing(s,key);return v===undefined?fallback:need(v,'value');}
export function getBool(s,key,fallback,runtime){const v=existing(s,key);if(v===undefined)return !!fallback;const parsed=runtime.tryBool(need(v,'value'));return parsed===null?!!fallback:parsed;}
function replace(s,key,value,runtime){const d=dictionary(s),kind=Object.hasOwn(d,key)?'Set':'Add';d[key]={value,dirty:true};runtime.emit({name:'Dictionary.'+kind,args:[key,value,true]});}
export function setInt(s,key,value,runtime){value=word(value);const old=existing(s,key);if(old!==undefined){const parsed=runtime.tryInt32(need(old,'value'));if(parsed===null||word(parsed)===value)return;}replace(s,key,runtime.intToString(value),runtime);}
export function setString(s,key,value,runtime){const old=existing(s,key);if(old!==undefined&&need(old,'value')===value)return;replace(s,key,value,runtime);}
export function setBool(s,key,value,runtime){value=!!value;const old=existing(s,key);if(old!==undefined){const parsed=runtime.tryBool(need(old,'value'));if(parsed===null||parsed===value)return;}replace(s,key,runtime.boolToString(value),runtime);}
export function hasKey(s,key){if(key===null||key==='')return false;return Object.hasOwn(dictionary(s),key);}
export function remove(s,key,runtime){const d=dictionary(s);if(key===null)throw new TypeError('Native dictionary ArgumentNull fixture');if(Object.hasOwn(d,key)){delete d[key];runtime.emit({name:'Dictionary.Remove',args:[key]});}}
export function resetAllDirty(s){for(const value of Object.values(dictionary(s))){if(value===null)throw new TypeError('Native NullReference');value.dirty=false;}}
export function valueIsDirty(value){return !!need(value,'dirty');}
export function valueSetDirty(value){value.dirty=true;}
export function valueResetDirty(value){value.dirty=false;}
export function valueConstruct(value,text){value.value=text;value.dirty=true;}
export function loadJson(s,json,runtime){
 if(json===null||json===''){const d=dictionary(s);for(const key of Object.keys(d))delete d[key];runtime.emit({name:'Dictionary.Clear',args:[]});return;}
 s.store=runtime.deserialize(json);resetAllDirty(s);
}
export function loadAccount(s,account,runtime){if(account===null||need(account,'clientData')===null)return;loadJson(s,need(account.clientData,'json'),runtime);}
export function savePrefs(s,force,runtime){const d=need(s,'store');if((d!==null&&Object.values(d).some(v=>{if(v===null)throw new TypeError('Native NullReference');return need(v,'dirty');}))||force){const json=runtime.serialize(d);runtime.emit({name:'RequestServerSync',args:[json]});}}
export const getIntEnum=(s,k,v,r)=>getInt(s,prefsKey(k,r),v,r);
export const setIntEnum=(s,k,v,r)=>setInt(s,prefsKey(k,r),v,r);
export const getStringEnum=(s,k,v,r)=>getString(s,prefsKey(k,r),v,r);
export const setStringEnum=(s,k,v,r)=>setString(s,prefsKey(k,r),v,r);
export const getBoolEnum=(s,k,v,r)=>getBool(s,prefsKey(k,r),v,r);
export const setBoolEnum=(s,k,v,r)=>setBool(s,prefsKey(k,r),v,r);
export const hasKeyEnum=(s,k,r)=>hasKey(s,prefsKey(k,r));
export const removeEnum=(s,k,r)=>remove(s,prefsKey(k,r),r);
