import fs from 'node:fs';import assert from 'node:assert/strict';
import {receivePlayerDamage,receivePlayerPenalty} from './recovered-player-damage.mjs';
const root=new URL('../',import.meta.url),vectors=JSON.parse(fs.readFileSync(new URL('player-damage-native-flow-vectors.json',root),'utf8'));
let passed=0;
for(const v of vectors){const c=structuredClone(v.fixture),result=v.method==='PenaltyDmg'?receivePlayerPenalty(c,c.args.damage):receivePlayerDamage(c,c.args);
 const state={Hp_cur:String(c.player.Hp_cur),Shield_Cur:String(c.player.Shield_Cur),WorldBossEffect_DeathSaveAvailable:c.player.WorldBossEffect_DeathSaveAvailable,_worldBossLowHpAttackSpeedApplied:c.player._worldBossLowHpAttackSpeedApplied};
 assert.deepEqual({state,...result},v.expected,`PlayerBase.GetDmg snapshot ${v.case}`);passed++;
}
// Missing callback fails after the original HP mutation; no implicit HP clamp.
const c=structuredClone(vectors[0].fixture);c.playerHpUpdatePresent=false;c.player.Hp_cur='50';c.args.damage='100';
assert.throws(()=>receivePlayerDamage(c,c.args),/NullReference/);assert.equal(c.player.Hp_cur,-50n);
assert.deepEqual(receivePlayerDamage({player:{state:3}},{}),{effects:[],draws:{int:0,float:0}});
assert.deepEqual(receivePlayerDamage({player:{state:0,isBattle:false}},{}),{effects:[],draws:{int:0,float:0}});
const report={passed,entries:2,contract_checks:4,scope:'GetDmg/PenaltyDmg bodies under explicit downstream getter/RNG/Unity/lifecycle models. Full death/reflect callbacks and runtime remain unported.'};
fs.writeFileSync(new URL('js-player-damage-report.json',root),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
