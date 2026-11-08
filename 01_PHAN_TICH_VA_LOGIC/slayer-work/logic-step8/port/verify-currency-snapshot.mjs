import fs from 'node:fs';
import assert from 'node:assert/strict';
import * as currency from './recovered-currency-snapshot.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../currency-native-flow-vectors.json',import.meta.url),'utf8'));
function run(method,f){
 if(method==='getCurrency'||method==='getTotalGetValue'||method==='getTotalUsedValue')return currency[method](f.requestedType,()=>f.record);
 if(method==='checkCurrencySnapshot')return currency[method](f.api,f.remote,f.snapshot);
 return currency[method](f.api,f.remote,f.snapshot.amount,f.snapshot.totalGet,f.snapshot.totalUsed);
}
const normalize=v=>typeof v==='bigint'?String(v):Array.isArray(v)?v.map(normalize):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,normalize(x)])):v;
for(const v of data.vectors)assert.deepEqual(normalize(run(v.method,v.fixture)),v.expected,`${v.method} ${v.case}`);
for(const c of data.contracts)assert.throws(()=>run(c.method,c.fixture),/Native null/);
console.log(JSON.stringify({passed:data.vectors.length,contracts:data.contracts.length,scope:'Currency snapshot and compare bodies; dependency getters/logging explicit.'}));
