import fs from 'node:fs';
import assert from 'node:assert/strict';
import { runStageCycle } from './recovered-stage-spawn.mjs';

const file = process.argv[2] || new URL('../stage-cycle-native-vectors.json', import.meta.url);
const { vectors, contracts } = JSON.parse(fs.readFileSync(file, 'utf8'));
for (const [index, { fixture, actions, expected }] of [...vectors, ...contracts].entries()) {
  const actual = runStageCycle(fixture, actions);
  for (const [step, frame] of actual.entries()) {
    assert.deepStrictEqual(frame, expected[step], `sequence ${index}, ${step} ${frame.action}`);
  }
}
const actions = cases => cases.reduce((sum, entry) => sum + entry.actions.length, 0);
console.log(JSON.stringify({
  sequences: vectors.length, actions: actions(vectors),
  contract_sequences: contracts.length, contract_actions: actions(contracts),
}));
