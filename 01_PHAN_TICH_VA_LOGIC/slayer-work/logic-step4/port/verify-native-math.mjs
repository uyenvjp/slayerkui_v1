import assert from 'node:assert/strict';
import {readFileSync, writeFileSync} from 'node:fs';
import * as r from './recovered-combat.mjs';

const vectors=JSON.parse(readFileSync(new URL('../native-math-vectors.json',import.meta.url)));
const counts={};
for (const v of vectors) {
  let result;
  switch(v.block) {
    case 'spiritNormal': case 'spiritBoss': case 'highHp': case 'beastBoss': result=r.percentFloat32(v.input,v.bonus);break;
    case 'blackOrbNormal': case 'blackOrbBoss': case 'themeNormal': case 'themeBoss': result=r.percentIntegerWord(v.input,v.bonus);break;
    case 'lowHp': result=r.lowHpArithmetic(v.input,v.bonus);break;
    case 'abnormal': result=r.abnormalArithmetic(v.input,v.bonus);break;
    case 'freeze': result=r.freezeArithmetic(v.input,v.bonus,v.mastery);break;
    case 'burn': result=r.burnArithmetic(v.input,v.bonus);break;
    case 'masteryNormal': case 'masteryBoss': result=r.masteryArithmetic(v.input);break;
    case 'hpDecrease': result=r.hpDecreaseArithmetic(v.input,v.bonus);break;
    case 'miss': result=r.misses({...v,trueDamage:false});break;
    case 'highHpCheck': result=r.isHighHp(v.hpCurrent,v.hpMax);break;
    case 'lowHpCheck': result=r.isLowHp(v.hpCurrent,v.hpMax,v.threshold);break;
    default: throw new Error('Unverified block '+v.block);
  }
  assert.equal(result.toString(),v.expected.toString(),JSON.stringify(v));
  counts[v.block]=(counts[v.block]??0)+1;
}

let branchChecks=0;
const eq=(a,b)=>{assert.deepEqual(a,b);branchChecks++;};
eq(r.isHighHp(7,10),false);eq(r.isHighHp(8,10),true);
eq(r.isLowHp(3,10,30),true);eq(r.isLowHp(4,10,30),false);
eq(r.elementalDamage(7,2,1),4n);eq(r.elementalDamage(7,4,1),14n);
eq(r.elementalDamage(7,0,100),4n);eq(r.elementalDamage(7,4,0),7n);
eq(r.misses({accuracy:60,miss:1,userLevel:1,trueDamage:true,randomUnit:0}),false);
eq(r.misses({accuracy:60,miss:1,userLevel:1,trueDamage:false,randomUnit:0}),true);

const valueCalls=[],checkCalls=[];
const context={skillDamage:true,attackElement:1,
  spiritValue(id){valueCalls.push(id);return id===11?50:id===8?100:0;},
  spiritCheck(id){checkCalls.push(id);return true;},
  blackOrbNormal:0n,blackOrbBoss:0n,themeNormal:0,themeBoss:0,beastBoss:0,lowHpThreshold:0,lowHpBonus:0};
const enemy={hpCurrent:10n,hpMax:10n,characterDmgType:4,dmgStackState:true};
const normal=r.monsterModifiers(7n,enemy,context);
eq(normal.hpCurrent,5n);eq(normal.damage,14n);
eq(normal.events.map(e=>e.method),['DmgStackEvent','SpiritSkillEffect_EnemyTarget','DmgStackEvent']);
eq(checkCalls.includes(8),false);eq(valueCalls.includes(5),true);
eq(enemy.hpCurrent,10n); // result contains state changes, caller owns committing them.
valueCalls.length=0;checkCalls.length=0;
const boss=r.monsterModifiers(7n,enemy,context,true);
eq(boss.hpCurrent,10n);eq(boss.damage,28n);
eq(boss.events[0],{field:'DatabaseManager.BossHitCount',increment:1});
eq(valueCalls.includes(4),true);eq(valueCalls.includes(6),false);
assert.throws(()=>r.monsterModifiers(7n,enemy,{}),/Unrecovered input/);branchChecks++;
// Integer division happens at each modifier stage, not once at the end.
eq(r.percentIntegerWord(r.percentFloat32(1n,50),50),1n);
const report={nativeArithmeticCases:vectors.length,blocks:counts,manualBranchChecks:branchChecks,
  status:'PASS',scope:'Selected scalar arithmetic and manual branch/order checks only. No Android/H5 gameplay parity test.'};
writeFileSync(new URL('../js-verification-report.json',import.meta.url),JSON.stringify(report,null,2)+'\n');
console.log(JSON.stringify(report));
