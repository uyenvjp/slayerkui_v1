import fs from 'node:fs';
import assert from 'node:assert/strict';
import {createSync,action,callback} from './recovered-prefs-sync.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../prefs-sync-native-vectors.json',import.meta.url),'utf8'));
for(const [n,seq] of data.sequences.entries()){
 const s=createSync(seq.fixture);
 for(const [k,frame] of seq.frames.entries())assert.deepEqual(action(s,seq.fixture,frame.action),frame.expected,`sequence ${n}, frame ${k}`);
}
for(const c of data.contracts){
 const closure={success:false,waiter:c.waiterPresent?{signal:false}:null};let error;
 try{callback(closure,c.responsePresent?{code:c.code}:null);}catch(e){error=e.message;}
 assert.deepEqual({success:closure.success,signal:closure.waiter?.signal??null,...(error?{error}:{})},c.expected);
}
for(const c of data.signals){const flag=c.method==='signal';assert.equal(flag,c.expected);}
console.log(JSON.stringify({sequences:data.sequences.length,actions:data.sequences.reduce((n,s)=>n+s.frames.length,0),callbackContracts:data.contracts.length,signalCases:data.signals.length,scope:'Linked native sync/callback/signal/wait/dirty reset under explicit RPC and scheduler dependencies.'}));
