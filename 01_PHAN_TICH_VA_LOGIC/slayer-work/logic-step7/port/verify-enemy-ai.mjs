import fs from 'node:fs';
import assert from 'node:assert/strict';
import {enemyAttackStep} from './recovered-enemy-ai.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../ai-native-flow-vectors.json',import.meta.url),'utf8'));
const decode=x=>x==='nan'?NaN:x==='inf'?Infinity:x==='-inf'?-Infinity:x;
const decodeObject=o=>Object.fromEntries(Object.entries(o).map(([k,v])=>[k,decode(v)]));
function normalized(result){const b=Buffer.alloc(4);b.writeFloatLE(result.iterator.waitTime);return {state:result.iterator.state,waitTimeBits:b.toString('hex'),current:result.iterator.current,yielded:result.yielded,effects:result.effects};}
for(const v of data.vectors)assert.deepEqual(normalized(enemyAttackStep(decodeObject(v.fixture.iterator),decodeObject(v.fixture.input))),v.result,`AI ${v.case}`);
let iterator=data.sequence.fixture.iterator;
for(const [frame,expected] of data.sequence.frames.entries()){const result=enemyAttackStep(iterator,data.sequence.fixture.input);assert.deepEqual(normalized(result),expected,`continued frame ${frame}`);iterator=result.iterator;}
console.log(JSON.stringify({passed:data.vectors.length,continuedFrames:data.sequence.frames.length,scope:'Native attack iterator, modeled virtual/Unity inputs.'}));
