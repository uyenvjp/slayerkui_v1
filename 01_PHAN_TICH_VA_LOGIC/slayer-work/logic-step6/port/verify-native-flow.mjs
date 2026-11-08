import assert from 'node:assert/strict';
import {readFileSync,writeFileSync} from 'node:fs';
import {calculateAttackState,calculateHpState,applyHpState} from './recovered-player-aggregation.mjs';
const rows=JSON.parse(readFileSync(new URL('../native-flow-vectors.json',import.meta.url)));
let manual=0;const counts={};
for(const row of rows){
 const f=row.fixture;
 const context={...f,
  componentGetters:Object.fromEntries(Object.entries(f.components).map(([key,value])=>[key,()=>key==='criticalProbability'?Number(value):BigInt(value)])),
  databaseGetters:name=>{assert.ok(name in f.databaseGetters,name);return f.databaseGetters[name];},
  spiritValue:id=>{assert.ok(String(id) in f.spiritValues);return f.spiritValues[String(id)];}};
 const result=row.kind==='attack'?calculateAttackState(context):calculateHpState(context);
 for(const [key,value]of Object.entries(row.expected)){
  if(key==='BestDmg'&&f.presetStat!==null){assert.equal(value,f.player.BestDmg);assert.ok(!('BestDmg'in result));continue;}
  if(key==='effects')assert.deepEqual(result[key],value);
  else assert.equal(result[key].toString(),value,`case ${row.case} ${row.kind} ${key}`);
 }
 counts[row.kind]=(counts[row.kind]??0)+1;
 if(row.kind==='hp'){
  const order=[];context.player.Hp_cur=7n;
  applyHpState(context,result,{playerHpUpdate(){order.push('playerHpUpdate.Invoke');assert.equal(context.player.Hp_max,result.Hp_max);assert.equal(context.player.Heal,result.Heal);},
   SetHpBar_Effect_FillAmount(){order.push('SetHpBar_Effect_FillAmount');}});
  assert.deepEqual(order,row.expected.effects);assert.equal(context.player.Hp_cur,7n);manual++;
 }
}
const report={status:'PASS',nativeFlowCases:rows.length,casesByKind:counts,hpCommitCallbackOrderAndCurrentHpChecks:manual,
 scope:'Four complete method-body instruction paths under explicit getter/decrypted-field/object/init/callback models. Dependency implementations, Unity/Android and IFix remain outside this comparison.'};
writeFileSync(new URL('../js-native-flow-report.json',import.meta.url),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
