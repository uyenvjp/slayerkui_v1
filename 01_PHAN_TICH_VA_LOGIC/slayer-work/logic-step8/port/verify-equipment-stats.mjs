import fs from 'node:fs';
import assert from 'node:assert/strict';
import * as stats from './recovered-equipment-stats.mjs';
const vectors=JSON.parse(fs.readFileSync(new URL('../equipment-stat-native-flow-vectors.json',import.meta.url),'utf8'));
const decode=v=>v==='nan'?NaN:v==='inf'?Infinity:v==='-inf'?-Infinity:Array.isArray(v)?v.map(decode):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,decode(x)])):v;
const bits=(value,kind='d')=>{const b=Buffer.alloc(kind==='s'?4:8);if(kind==='s')b.writeFloatLE(value);else b.writeDoubleLE(value);return b.toString('hex');};
for(const v of vectors){
 const f=decode(v.fixture),a=f.args;let result;
 if(v.method.startsWith('renew_')){
  const kind=v.method.slice(6),type=kind==='atk'?'d':'s',writes=[];
  const state=stats.renewHavePower(kind,f.owned[kind],a.renewIndex,a.renewValue,e=>writes.push({...e,valueBits:bits(e.value,type)}));
  for(const e of writes)delete e.value;
  result={totalBits:bits(state.total,type),valuesBits:Object.fromEntries(Object.entries(state.values).map(([k,n])=>[k,bits(n,type)])),writes};
 }else{
  const value=v.method.endsWith('Awakening')?stats[v.method](f,a.grade):stats[v.method](f,a.index,a.level);
  result=typeof value==='bigint'?String(value):bits(value,'s');
 }
 assert.deepEqual(result,v.expected,`${v.method} fixture ${v.case}`);
}
const f=decode(vectors[0].fixture);delete f.awakeningWeapon;stats.atkValue(f,0,0);stats.havePowerCritical(f,0,0);
assert.throws(()=>stats.renewHavePower('atk',{total:1,values:{}},0,3),/Missing native input/);
console.log(JSON.stringify({passed:vectors.length,contracts:3,scope:'Nine equipment scalar/renew method bodies, ordered writes and numeric widths under explicit dependencies.'}));
