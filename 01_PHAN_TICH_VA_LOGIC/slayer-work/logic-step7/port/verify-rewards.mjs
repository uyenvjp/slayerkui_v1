import fs from 'node:fs';
import assert from 'node:assert/strict';
import {stageItemDrop,stageGoldAmount,goldAmountNobuff,goldCal,expCal,goldGet,soulDivision,equipmentDropCurrency,stageMonsterIndex,probability} from './recovered-stage-rewards.mjs';
const vectors=JSON.parse(fs.readFileSync(new URL('../reward-native-flow-vectors.json',import.meta.url),'utf8'));
let cases=0;
for(const v of vectors){
  let result,trace=[];
  if(v.method==='soulDivision'){assert.equal(soulDivision(v.currency,v.alternate),v.result);cases++;continue;}
  if(v.method==='probability'){const percent=v.percent==='inf'?Infinity:v.percent==='-inf'?-Infinity:v.percent==='nan'?NaN:v.percent;assert.equal(probability(percent,v.draw),v.result);cases++;continue;}
  const fixture=v.fixture;let cursor=0;
  const random=(kind,min,max)=>{
    const call=v.trace.filter(x=>x.kind==='RandomFloat'||x.kind==='RandomInt')[cursor++];
    assert.ok(call,`Missing RNG call ${v.case} ${v.method}`);assert.equal(call.kind,kind);assert.equal(min,call.min);assert.equal(max,call.max);trace.push(call);return call.value;
  };
  const runtime={randomFloat:(a,b)=>random('RandomFloat',a,b),randomInt:(a,b)=>random('RandomInt',a,b),
    eventBuffActive:code=>{const result=fixture.eventBuffActive[String(code)];trace.push({kind:'EventBuff_Active',code,result});return result;},
    getStageGoldAmount:()=>stageGoldAmount(fixture.stageGold,random('RandomInt',90,111)),effect:event=>trace.push(event)};
  if(v.method==='stageItemDrop'){
    result=stageItemDrop(fixture,runtime);assert.deepEqual(trace,v.trace,`Trace mismatch: stage drop ${v.case}`);
  }else if(v.method==='stageGoldAmount'){
    result=String(runtime.getStageGoldAmount());assert.equal(result,v.result);assert.deepEqual(trace,v.trace);
  }else if(v.method==='goldAmountNobuff'){
    result=String(goldAmountNobuff(v.arg,fixture.goldAmountAdd));assert.equal(result,v.result);
  }else if(v.method==='goldCal'){
    result=String(goldCal(v.arg,fixture.goldAmountAdd));assert.equal(result,v.result);
  }else if(v.method==='expCal'){
    result=String(expCal(v.arg,fixture.expAdd));assert.equal(result,v.result);
  }else if(v.method==='stageMonsterIndex'){
    result=stageMonsterIndex(fixture.monsterIndices,runtime.randomInt);assert.equal(result,v.result);assert.deepEqual(trace,v.trace);
  }else if(v.method==='goldGet'){
    result=goldGet(fixture.goldState,v.arg);for(const k of ['UserGold','preGold','minusGold','TotalGoldGet'])result[k]=String(result[k]);assert.deepEqual(result,v.result);
  }else throw Error(`Unexpected method ${v.method}`);
  cases++;
}
for(let index=0;index<10000;index++)assert.equal(equipmentDropCurrency(index),(index+1)%5===0?101:100);
assert.throws(()=>stageItemDrop({},{}),/Missing native input/);
console.log(JSON.stringify({passed:cases,extraChecks:10001,scope:'Bounded native method-flow fixtures; no Android, live patch or acquisition/backend parity.'}));
