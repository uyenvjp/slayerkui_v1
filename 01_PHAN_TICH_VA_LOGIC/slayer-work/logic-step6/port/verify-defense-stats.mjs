import fs from 'node:fs';import assert from 'node:assert/strict';import * as defense from './recovered-defense-stats.mjs';
const root=new URL('../',import.meta.url);const vectors=JSON.parse(fs.readFileSync(new URL('defense-native-flow-vectors.json',root),'utf8'));
const hex=value=>{const b=Buffer.alloc(4);b.writeFloatLE(value);return b.toString('hex');};let passed=0;
const caches={playerMiss:'miss',playerResistance:'resistance',playerDamageReduce:'dmgReduce'};
for(const v of vectors){const c=structuredClone(v.fixture),value=defense[v.method](c);assert.equal(hex(value),v.expected,`${v.method} snapshot ${v.case}`);assert.equal(hex(c.player[caches[v.method]]),v.expected);passed++;}
const c=structuredClone(vectors[0].fixture);c.dragon=null;assert.throws(()=>defense.playerMiss(c),/NullReference/);
c.presetStat={Miss:12.5};assert.equal(defense.playerMiss(c),12.5);assert.equal(defense.playerDamageReduce(c),0);
const report={passed,entries:3,contract_checks:3,scope:'Three getter bodies and cache writes; decrypted account/manager state explicitly provided.'};fs.writeFileSync(new URL('js-defense-stats-report.json',root),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
