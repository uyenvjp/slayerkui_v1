import fs from 'node:fs';
import assert from 'node:assert/strict';
import * as prefs from './recovered-server-prefs.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../prefs-native-vectors.json',import.meta.url),'utf8')),keys=JSON.parse(fs.readFileSync(new URL('../prefs-keys.json',import.meta.url),'utf8')).values;
const tryInt32=v=>{if(v===null||!/^[\t\r\n ]*[+-]?[0-9]+[\t\r\n ]*$/.test(v))return null;const n=BigInt(v.trim());return n< -2147483648n||n>2147483647n?null:Number(n);};
const tryBool=v=>v===null?null:/^[\t\r\n ]*true[\t\r\n ]*$/i.test(v)?true:/^[\t\r\n ]*false[\t\r\n ]*$/i.test(v)?false:null;
function setup(f){const s=structuredClone(f),initial=s.store===null?{}:{...s.store};return {s,initial};}
function run(f,name,ctx){
 const {s,initial}=ctx,effects=[];let value,error;
 const r={emit:e=>effects.push(e),enumToString:n=>Object.entries(keys).find(([,v])=>v===n)?.[0]??String(n),tryInt32,tryBool,intToString:String,boolToString:v=>v?'True':'False',deserialize:json=>{effects.push({name:'DeserializeObject',args:[json]});return structuredClone(s.deserialized);},serialize:d=>{effects.push({name:'SerializeObject',args:[structuredClone(d)]});return s.serialized;}};
 const key=name.endsWith('Enum')?s.enumKey:s.key;
 try{
  if(name==='savePrefs')prefs.savePrefs(s,s.force,r);
  else if(name==='loadJson')prefs.loadJson(s,s.json,r);
  else if(name==='loadAccount')prefs.loadAccount(s,s.accountPresent?{clientData:s.clientDataPresent?{json:s.json}:null}:null,r);
  else if(name==='resetAllDirty')prefs.resetAllDirty(s);
  else if(name.startsWith('value'))value=prefs[name](s.target,s.text);
  else if(name.startsWith('getInt'))value=prefs[name](s,key,s.intDefault,r);
  else if(name.startsWith('getString'))value=prefs[name](s,key,s.textDefault,r);
  else if(name.startsWith('getBool'))value=prefs[name](s,key,s.boolDefault,r);
  else if(name.startsWith('setInt'))prefs[name](s,key,s.int,r);
  else if(name.startsWith('setString'))prefs[name](s,key,s.text,r);
  else if(name.startsWith('setBool'))prefs[name](s,key,s.bool,r);
  else value=prefs[name](s,key,r);
 }catch(e){error=e.message;}
 return {state:{store:s.store,sameInitial:s.store===null?null:Object.fromEntries(Object.entries(s.store).map(([k,v])=>[k,v===initial[k]])),target:s.target},effects,...(error?{error}:value===undefined?{}:{value})};
}
for(const v of [...data.vectors,...data.contracts])assert.deepEqual(run(v.fixture,v.method,setup(v.fixture)),v.expected,`${v.method} ${v.case??'contract'}`);
for(const [i,seq] of data.sequences.entries()){
 const ctx=setup(seq.fixture);
 for(const [n,f] of seq.frames.entries()){Object.assign(ctx.s,f.args);assert.deepEqual(run(ctx.s,f.action,ctx),f.expected,`sequence ${i}, action ${n}`);}
}
console.log(JSON.stringify({passed:data.vectors.length,contracts:data.contracts.length,sequences:data.sequences.length,scope:'ServerPrefs value identity, parse gates, dirty/load/save/remove decisions under explicit BCL/JSON/network dependencies.'}));
