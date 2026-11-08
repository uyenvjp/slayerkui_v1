import fs from 'node:fs';
import assert from 'node:assert/strict';
import {mutateCurrency} from './recovered-currency-mutation.mjs';
const vectors=JSON.parse(fs.readFileSync(new URL('../currency-mutation-native-vectors.json',import.meta.url),'utf8'));
const normalize=record=>Object.fromEntries(Object.entries(record).map(([k,v])=>[k,typeof v==='bigint'?String(v):v]));
for(const v of vectors){
 const record=structuredClone(v.fixture.record),events=[];
 mutateCurrency(v.method.toLowerCase().includes('gain')?'gain':'use',record,v.fixture.amount,v.fixture.eventPresent?r=>events.push(normalize(r)):null);
 assert.deepEqual({record:normalize(record),events},v.expected,`${v.method} ${v.case}`);
}
console.log(JSON.stringify({passed:vectors.length,scope:'CurrencyData integer updates and callback observation; modeled containers/decryption.'}));
