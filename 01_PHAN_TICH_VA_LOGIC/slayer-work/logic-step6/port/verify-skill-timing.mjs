import fs from 'node:fs';import assert from 'node:assert/strict';
import * as timing from './recovered-skill-timing.mjs';
import {f32} from '../../logic-step4/port/recovered-combat.mjs';
const root=new URL('../',import.meta.url),vectors=JSON.parse(fs.readFileSync(new URL('timing-native-flow-vectors.json',root),'utf8'),(_,v)=>v&&v.$float64?Buffer.from(v.$float64,'hex').readDoubleLE():v);
const fields=['curCooltime','curAttackCount','SkillUsePossible','_cooltimeDirty','_maxCooltimePlus','_maxCooltimePlusNone','_maxAttackCountResult','cooltimeReduceFactor','useStackCount'];
const clean=value=>typeof value==='bigint'?String(value):Array.isArray(value)?value.map(clean):value&&typeof value==='object'?Object.fromEntries(Object.entries(value).map(([k,v])=>[k,clean(v)])):value;
let passed=0;
for(const v of vectors){const c=structuredClone(v.fixture);let value,effects=[];const name=v.method;
 if(name==='cooltimeChargeTimeSkill')effects=timing.cooltimeCharge(c,c.amount,{timeSkill:true});
 else if(name==='cooltimeCharge')effects=timing.cooltimeCharge(c,c.amount);
 else if(name==='setCooltimeReduceAmount')timing[name](c,c.amount);
 else if(name==='skillCoolTimeStart')effects=timing[name](c,c.delay);
 else if(name.startsWith('moveCooltime')){const result=timing.moveCooltime(c,c.coroutine,{delay:name==='moveCooltimeDelay'});value=result.yielded;effects=result.effects;}
 else {const result=timing[name](c);if(Array.isArray(result))effects=result;else value=result;}
 const state={};for(const key of fields){const item=c.data[key];state[key]=key==='useStackCount'?String(item):typeof item==='number'?f32(item):item;}
 const actual={state,effects};if(Object.hasOwn(v.expected,'value'))actual.value=value;if(Object.hasOwn(v.expected,'coroutineState'))actual.coroutineState=c.coroutine.state;
 assert.deepEqual(clean(actual),v.expected,`${v.method}, snapshot ${v.case}`);passed++;
}
// Multi-frame behavior: crossing zero yields, the next resume marks ready.
const c=structuredClone(vectors[0].fixture);c.data.curCooltime=f32(.005);c.gameDeltaTime=f32(.016666667);
assert.equal(timing.moveCooltime(c,c.coroutine).yielded,true);assert.equal(c.data.SkillUsePossible,false);
assert.equal(timing.moveCooltime(c,c.coroutine).yielded,false);assert.equal(c.data.SkillUsePossible,true);
const report={passed,entries:20,transition_checks:4,scope:'Selected method bodies and normalized ordered effects under explicit dependencies; not full Unity/gameplay validation.'};
fs.writeFileSync(new URL('js-skill-timing-report.json',root),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
