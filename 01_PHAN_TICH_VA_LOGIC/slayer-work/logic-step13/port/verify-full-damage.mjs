import fs from 'node:fs';
import assert from 'node:assert/strict';
import {createFullDamage,stepFullDamage} from './recovered-full-damage.mjs';
const smoke=process.argv.includes('--smoke'),name=smoke?'full-damage-smoke':'full-damage-native';
const d=JSON.parse(fs.readFileSync(new URL('../'+name+'-vectors.json',import.meta.url),'utf8'));
for(const v of d.vectors)assert.deepEqual(stepFullDamage(createFullDamage(v.fixture)),v.expected,`case ${v.case}`);
console.log(JSON.stringify({passed:d.vectors.length,scope:'Stronger linked native modifiers/hit/HP/death/normal-loot chain, with explicit upstream stat/getter/Unity/downstream dependencies.'}));
