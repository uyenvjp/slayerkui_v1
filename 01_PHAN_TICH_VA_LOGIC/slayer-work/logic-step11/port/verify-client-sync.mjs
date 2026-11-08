import fs from 'node:fs';
import assert from 'node:assert/strict';
import {createClientSync,action} from './recovered-client-sync.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../client-sync-native-vectors.json',import.meta.url),'utf8'));
for(const [n,seq] of data.sequences.entries()){
 const s=createClientSync(seq.fixture);
 for(const [k,f] of seq.frames.entries())assert.deepEqual(action(s,seq.fixture,f.action),f.expected,`linked client sync ${n}, action ${k}`);
}
console.log(JSON.stringify({sequences:data.sequences.length,actions:data.sequences.reduce((n,s)=>n+s.frames.length,0),scope:'Stronger api255 response/callback/signal/dirty-reset link; explicit queue dispatch, RPC, Task and scheduler fixtures.'}));
