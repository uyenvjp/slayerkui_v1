import fs from 'node:fs';
import assert from 'node:assert/strict';
import { runStageSpawn } from './recovered-stage-spawn.mjs';

const file = process.argv[2] || new URL('../stage-spawn-native-vectors.json', import.meta.url);
const { vectors, contracts } = JSON.parse(fs.readFileSync(file, 'utf8'));
for (const [index, { entry, fixture, expected }] of [...vectors, ...contracts].entries()) {
  assert.deepStrictEqual(runStageSpawn(entry, fixture), expected, `case ${index}, ${entry}`);
}
console.log(JSON.stringify({ passed: vectors.length, contracts: contracts.length }));
