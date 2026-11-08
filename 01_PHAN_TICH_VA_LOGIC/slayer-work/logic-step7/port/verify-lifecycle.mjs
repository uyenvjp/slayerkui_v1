import fs from 'node:fs';
import assert from 'node:assert/strict';
import {fakeDeathStep,defeatStep} from './recovered-player-lifecycle.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../lifecycle-native-flow-vectors.json',import.meta.url),'utf8'));
const decode=x=>x==='nan'?NaN:x==='inf'?Infinity:x==='-inf'?-Infinity:x;
const norm=x=>typeof x==='number'&&!Number.isFinite(x)?Number.isNaN(x)?'nan':x>0?'inf':'-inf':Array.isArray(x)?x.map(norm):x&&typeof x==='object'?Object.fromEntries(Object.entries(x).map(([k,v])=>[k,norm(v)])):x;
for(const v of data.vectors){
  if(v.method==='setRebornState'){
    // Isolated native setter fixture confirms write-before-callback contract;
    // no separate JavaScript delegate container is claimed here.
    assert.equal(v.result.state,v.state);assert.deepEqual(v.result.effects,v.callbackPresent?[{name:'ReBornAction.Invoke',args:[v.state,v.state]}]:[]);continue;
  }
  const input={...v.fixture.input,battleTime:decode(v.fixture.input.battleTime)};
  const result=v.method==='fakeDeathStep'?fakeDeathStep(v.fixture.iterator,input):defeatStep(v.fixture.iterator);
  assert.deepEqual(norm(result),v.result,`${v.method} ${v.case}`);
}
let iterator=data.sequence.fixture.iterator;
for(const [phase,expected] of data.sequence.phases.entries()){const result=fakeDeathStep(iterator,data.sequence.fixture.input);assert.deepEqual(norm(result),expected,`resumed phase ${phase}`);iterator=result.iterator;}
console.log(JSON.stringify({passed:data.vectors.length,continuedPhases:data.sequence.phases.length,scope:'Two coroutine bodies plus native setter contract; downstream lifecycle calls explicitly modeled.'}));
