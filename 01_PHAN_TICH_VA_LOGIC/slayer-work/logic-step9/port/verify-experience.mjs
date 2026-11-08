import fs from 'node:fs';
import assert from 'node:assert/strict';
import * as exp from './recovered-experience.mjs';
import {f32} from '../../logic-step4/port/recovered-combat.mjs';
const vectors=JSON.parse(fs.readFileSync(new URL('../experience-native-vectors.json',import.meta.url),'utf8'));
const decode=v=>v==='nan'?NaN:v==='inf'?Infinity:v==='-inf'?-Infinity:Array.isArray(v)?v.map(decode):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,decode(x)])):v;
for(const v of vectors){
 const s=decode(v.fixture),effects=[];let rngDraws=0,value;
 const runtime={emit:e=>effects.push(e),randomFloat:(lo,hi)=>{const value=f32(s.draws[rngDraws++]);effects.push({name:'RandomFloat',args:[lo,hi,value]});return value;}};
 if(v.method==='applyExpScroll')value=String(exp.applyExpScroll(s.amount,s.scroll));
 else if(v.method==='addExpBuffs')value=String(exp.addExpBuffs(s,s.amount,runtime));
 else if(v.method.startsWith('receiveExp_'))exp.receiveExp(s,s.amount,v.method.slice(11),runtime);
 else value=exp[v.method](s,runtime);
 const result={state:{currentExp:String(s.currentExp),totalExp:String(s.totalExp),level:s.level,maxExp:String(s.maxExp)},effects,rngDraws};
 if(value!==undefined)result.value=value;
 assert.deepEqual(result,v.expected,`${v.method} fixture ${v.case}`);
}
assert.throws(()=>exp.checkExpAndGetUserLevel({currentExp:1,level:0,maxExp:1,userMaxLevel:100,expTable:{}},{emit:()=>{}}),/Missing native input/);
assert.equal(exp.applyExpScroll(10,{present:false}),10n);
console.log(JSON.stringify({passed:vectors.length,contracts:2,scope:'Exact EXP BigInt updates, buff order, conditional RNG, local level prediction under explicit dependencies.'}));
