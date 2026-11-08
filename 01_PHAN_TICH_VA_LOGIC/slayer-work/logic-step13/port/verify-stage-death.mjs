import fs from 'node:fs';
import assert from 'node:assert/strict';
import {runStageDeath} from './recovered-stage-death.mjs';
const d=JSON.parse(fs.readFileSync(new URL('../stage-death-native-vectors.json',import.meta.url),'utf8'));
for(const [n,v] of [...d.vectors,...d.contracts].entries())assert.deepEqual(runStageDeath(v.fixture),v.expected,`case ${n}`);
console.log(JSON.stringify({passed:d.vectors.length,contracts:d.contracts.length,scope:'Native mode0 EnemyRemove/Enemy_Dead after linked HP/death/normal-loot, with explicit list/Unity/spawn/coroutine dependencies.'}));
