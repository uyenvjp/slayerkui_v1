import fs from 'node:fs';
import assert from 'node:assert/strict';
import {expSync} from './recovered-experience-data.mjs';
import {queueSyncLevelUp,requestQueueState} from './recovered-level-request.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../level-request-native-vectors.json',import.meta.url),'utf8'));
const parse=value=>BigInt(value.trim()); // valid declared decimal fixtures only; not a BCL parser proof
function apply(s,context,action,level){
 const effects=[],r={emit:e=>effects.push(e),parseBigInteger:parse};s.level=level;
 if(action==='expSync')expSync(s,s.remote,r);else queueSyncLevelUp(s,context,r);
 return {sync:{currentExp:String(s.currentExp),totalExp:String(s.totalExp),syncExp:s.syncExp,remote:s.remote},queue:requestQueueState(s,context),effects};
}
for(const v of data.vectors){const s=structuredClone(v.fixture),context={requests:[],directShowLevelUp:s.directShowLevelUp};assert.deepEqual(apply(s,context,'queueSyncLevelUp',s.level),v.expected,`fixture ${v.case}`);}
for(const [i,seq] of data.sequences.entries()){
 const s=structuredClone(seq.fixture),context={requests:[],directShowLevelUp:s.directShowLevelUp};
 for(const [n,f] of seq.frames.entries())assert.deepEqual(apply(s,context,f.action,f.level),f.expected,`sequence ${i}, action ${n}`);
}
console.log(JSON.stringify({passed:data.vectors.length,sequences:data.sequences.length,scope:'Selected original queue construction bodies and cached EXP reference lifetime; no transport or response model.'}));
