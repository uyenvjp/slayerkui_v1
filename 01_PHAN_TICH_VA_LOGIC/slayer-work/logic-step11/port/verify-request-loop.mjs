import fs from 'node:fs';
import assert from 'node:assert/strict';
import {createLoop,action} from './recovered-request-loop.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../request-loop-native-vectors.json',import.meta.url),'utf8'));
for(const [n,seq] of data.sequences.entries()){
 const s=createLoop(seq.fixture);
 for(const [k,f] of seq.frames.entries())assert.deepEqual(action(s,seq.fixture,f.action),f.expected,`sequence ${n}, action ${k}`);
}
for(const c of data.contracts)assert.deepEqual(action(createLoop(c.fixture),c.fixture,{type:'start'}),c.expected,c.name);
console.log(JSON.stringify({sequences:data.sequences.length,actions:data.sequences.reduce((n,s)=>n+s.frames.length,0),contracts:data.contracts.length,scope:'RequestLoop normal/immediate/pending/empty branches under explicit scheduler, transport, collections and UI fixtures.'}));
