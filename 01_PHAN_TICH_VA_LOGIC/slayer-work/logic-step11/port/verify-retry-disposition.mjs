import fs from 'node:fs';
import assert from 'node:assert/strict';
import {createLoop,action} from './recovered-request-loop.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../retry-disposition-native-vectors.json',import.meta.url),'utf8'));
for(const [n,seq] of data.sequences.entries()){
 const s=createLoop(seq.fixture);
 for(const [k,f] of seq.frames.entries())assert.deepEqual(action(s,seq.fixture,f.action),f.expected,`fragment ${n}, action ${k}`);
}
console.log(JSON.stringify({fragmentSequences:data.sequences.length,actions:data.sequences.reduce((n,s)=>n+s.frames.length,0),scope:'Retry-disposition fragment with reconstructed native context, not full RPC exception/unwind verification.'}));
