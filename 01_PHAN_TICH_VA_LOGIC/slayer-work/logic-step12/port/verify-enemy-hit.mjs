import fs from 'node:fs';
import assert from 'node:assert/strict';
import {receiveEnemyHit} from './recovered-enemy-hit.mjs';
const d=JSON.parse(fs.readFileSync(new URL('../enemy-hit-native-vectors.json',import.meta.url),'utf8'));
for(const v of [...d.vectors,...d.contracts])assert.deepEqual(receiveEnemyHit(v.fixture),v.expected,`${v.case??v.name}`);
console.log(JSON.stringify({passed:d.vectors.length,contracts:d.contracts.length,scope:'Whole GetDmg orchestration and selected status/math bodies, with explicit monster-modifier/result/Unity/account dependencies.'}));
