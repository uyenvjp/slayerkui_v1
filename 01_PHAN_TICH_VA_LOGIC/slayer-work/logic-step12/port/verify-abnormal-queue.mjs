import fs from 'node:fs';
import assert from 'node:assert/strict';
import {createQueue,action,WAIT_THRESHOLD} from './recovered-abnormal-queue.mjs';
const d=JSON.parse(fs.readFileSync(new URL('../abnormal-queue-native-vectors.json',import.meta.url),'utf8')),report=JSON.parse(fs.readFileSync(new URL('../abnormal-queue-native-report.json',import.meta.url),'utf8'));
assert.equal(WAIT_THRESHOLD,report.wait_threshold);
for(const [n,v] of d.vectors.entries())assert.deepEqual(action(createQueue(v.fixture),v.action),v.expected,`case ${n}`);
for(const [n,seq] of d.sequences.entries()){
 const s=createQueue(seq.fixture);
 for(const [k,f] of seq.frames.entries())assert.deepEqual(action(s,f.action),f.expected,`sequence ${n} action ${k}`);
}
console.log(JSON.stringify({passed:d.vectors.length,sequences:d.sequences.length,actions:d.sequences.reduce((n,s)=>n+s.frames.length,0),scope:'Original abnormal scheduling and queue iterator with explicit Unity ticks/getters/executor dependencies.'}));
