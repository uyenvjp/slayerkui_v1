import fs from 'node:fs';
import assert from 'node:assert/strict';
import {createLifecycle,stepLifecycle} from './recovered-enemy-lifecycle.mjs';
const smoke=process.argv.includes('--smoke'),name=smoke?'enemy-lifecycle-smoke':'enemy-lifecycle-native';
const d=JSON.parse(fs.readFileSync(new URL('../'+name+'-vectors.json',import.meta.url),'utf8'));
for(const v of [...d.vectors,...d.contracts])assert.deepEqual(stepLifecycle(createLifecycle(v.fixture)),v.expected,`${v.case??v.name}`);
for(const [n,sq] of d.sequences.entries()){
 const s=createLifecycle(sq.fixture);
 for(const [k,f] of sq.frames.entries())assert.deepEqual(stepLifecycle(s,f.args),f.expected,`sequence ${n} action ${k}`);
}
console.log(JSON.stringify({passed:d.vectors.length,contracts:d.contracts.length,sequences:d.sequences.length,actions:d.sequences.reduce((n,s)=>n+s.frames.length,0),scope:'Linked hit/HP/instant-kill/death/normal-loot; explicit multicast, modifiers, getters, RNG/Unity/downstream dependencies.'}));
