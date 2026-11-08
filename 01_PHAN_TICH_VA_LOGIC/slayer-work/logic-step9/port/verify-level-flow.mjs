import fs from 'node:fs';
import assert from 'node:assert/strict';
import * as flow from './recovered-level-flow.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../level-flow-native-vectors.json',import.meta.url),'utf8'));
const state=s=>({currentExp:String(s.currentExp),totalExp:String(s.totalExp),level:s.level,maxExp:String(s.maxExp),userStatPoint:s.userStatPoint,levelUpCount:s.levelUpCount,userLevelUpIng:s.userLevelUpIng,isPointerDown:s.isPointerDown,levelUpDelay:s.levelUpDelay});
for(const v of data.vectors){const s=structuredClone(v.fixture),effects=[],r={emit:e=>effects.push(e)};const result=v.method.endsWith('Step')?flow[v.method](v.fixture.iterator,s,r):flow[v.method](s,r);assert.deepEqual({state:state(s),effects,...result},v.expected,`${v.method} ${v.case}`);}
for(const [i,sequence] of data.sequences.entries()){
 const s=structuredClone(sequence.fixture);let iterator=sequence.fixture.iterator;
 for(const [n,frame] of sequence.frames.entries()){const effects=[],r={emit:e=>effects.push(e)};let result;if(frame.action.endsWith('Step')){result=flow[frame.action](iterator,s,r);iterator=result.iterator;}else flow[frame.action](s,r);assert.deepEqual({state:state(s),effects,...result},frame.expected,`sequence ${i}, action ${n}`);}
}
for(const c of data.contracts){const s=structuredClone(c.fixture),effects=[];assert.throws(()=>flow[c.method](s,{emit:e=>effects.push(e)}),/Native null LevelUpAction/);assert.deepEqual({state:state(s),effects},{state:c.state,effects:c.effects});}
console.log(JSON.stringify({passed:data.vectors.length,sequences:data.sequences.length,contracts:data.contracts.length,scope:'Native level application, actual baseline display callback and batching with declared downstream sinks.'}));
