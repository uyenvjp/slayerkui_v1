import fs from 'node:fs';
import assert from 'node:assert/strict';
import {addCurrencyQueue} from './recovered-acquisition-queue.mjs';
const vectors=JSON.parse(fs.readFileSync(new URL('../acquisition-native-flow-vectors.json',import.meta.url),'utf8'));
for(const v of vectors){const f=v.fixture;assert.deepEqual(addCurrencyQueue(f.snapshot,f.dropContext,f.currency,v.amount,v.big,f.bigCurrencyType),v.result,`acquisition ${v.case}/${v.big}`);}
console.log(JSON.stringify({passed:vectors.length,scope:'Two client queue method bodies with explicit downstream hooks.'}));
