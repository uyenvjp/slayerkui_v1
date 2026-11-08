import fs from 'node:fs';
import assert from 'node:assert/strict';
import * as exp from '../../logic-step9/port/recovered-experience.mjs';
import {f32} from '../../logic-step4/port/recovered-combat.mjs';
import {calculateExpAdd,float32Key} from './recovered-experience-data.mjs';
const vectors=JSON.parse(fs.readFileSync(new URL('../linked-experience-native-vectors.json',import.meta.url),'utf8'));
const decode=v=>v==='nan'?NaN:v==='inf'?Infinity:v==='-inf'?-Infinity:Array.isArray(v)?v.map(decode):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,decode(x)])):v;
for(const v of vectors){
 const s=decode(v.fixture),effects=[];let rngDraws=0,value;
 Object.defineProperty(s,'expAdd',{get:()=>calculateExpAdd(s.db,x=>effects.push({name:'ExpAdd.Write',args:[float32Key(x)]})),enumerable:true});
 const runtime={emit:e=>effects.push(e),randomFloat:(lo,hi)=>{const draw=f32(s.draws[rngDraws++]);effects.push({name:'RandomFloat',args:[lo,hi,draw]});return draw;}};
 if(v.method==='addExpBuffs')value=String(exp.addExpBuffs(s,s.amount,runtime));
 else exp.receiveExp(s,s.amount,v.method.slice(11),runtime);
 const result={state:{currentExp:String(s.currentExp),totalExp:String(s.totalExp),level:s.level,maxExp:String(s.maxExp)},expAdd:float32Key(s.db.expAdd),effects,rngDraws};
 if(value!==undefined)result.value=value;
 assert.deepEqual(result,v.expected,`${v.method} ${v.case}`);
}
console.log(JSON.stringify({passed:vectors.length,scope:'Receive-EXP paths with original aggregate getter substituted for the prior scalar dependency.'}));
