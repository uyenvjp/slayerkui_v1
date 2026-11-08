import fs from 'node:fs';
import assert from 'node:assert/strict';
import * as api from './recovered-api-control.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../api-control-native-vectors.json',import.meta.url),'utf8'));
const state=s=>({...s,currentSequence:String(s.currentSequence),lastRequestTimes:s.lastRequestTimes===null?null:Object.fromEntries(Object.entries(s.lastRequestTimes).map(([k,v])=>[k,String(v)]))});
function run(f,name,ctx){
 const s=ctx.s,effects=[];let value,error;
 const r={emit:e=>effects.push(e),alarmPresent:f.alarmPresent,authPresent:f.authPresent,utcNowTicks:()=>{effects.push({name:'TimeApp.UtcNow',args:[f.nowTicks]});return BigInt(f.nowTicks);}};
 try{if(name.startsWith('get_'))value=api.getControl(s,name.slice(4));else if(name.startsWith('set_'))api.setControl(s,name.slice(4),f.value);else if(name==='getProcessing')value=api.getProcessing(s,r);else if(name==='setProcessing')api.setProcessing(s,f.value);else if(name==='canRequest')value=api.canRequest(s,f.api,f.seconds,r);else if(name==='isValidCode')value=api.isValidCode(f.code,r);else api[name](s,f.api,r);}catch(e){error=e.message;}
 return {state:state(s),effects,...(error?{error}:value===undefined?{}:{value:typeof value==='bigint'?String(value):value})};
}
for(const v of [...data.vectors,...data.contracts])assert.deepEqual(run(v.fixture,v.method,{s:structuredClone(v.fixture.state)}),v.expected,`${v.method} ${v.case??'contract'}`);
for(const [i,seq] of data.sequences.entries()){
 const f=structuredClone(seq.fixture),ctx={s:structuredClone(f.state)};
 for(const [n,item] of seq.frames.entries()){Object.assign(f,item.args);assert.deepEqual(run(f,item.action,ctx),item.expected,`sequence ${i}, action ${n}`);}
}
console.log(JSON.stringify({passed:data.vectors.length,contracts:data.contracts.length,sequences:data.sequences.length,scope:'API warm controls, strict time boundary, result-code branches and effect order under explicit dependencies.'}));
