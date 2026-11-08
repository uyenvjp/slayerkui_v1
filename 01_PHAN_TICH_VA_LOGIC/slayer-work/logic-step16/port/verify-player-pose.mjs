import assert from 'node:assert/strict';
import fs from 'node:fs';
import { recoverPlayerPose } from './recovered-player-pose.mjs';

const vectors = JSON.parse(fs.readFileSync(new URL('../player-pose-native-vectors.json', import.meta.url)));
for (const { case: input, expected } of vectors) {
  assert.deepEqual(recoverPlayerPose(input), expected, JSON.stringify(input));
}
console.log(JSON.stringify({ passed: vectors.length, source: 'bounded native instruction traces' }));
