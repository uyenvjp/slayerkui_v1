import fs from 'node:fs';
import assert from 'node:assert/strict';
import {createDatabaseRuntime,spiritCheck,spiritValue,seasonSkillDamage,demonAltarSkillDamage} from './recovered-database-buffs.mjs';
const root=new URL('../',import.meta.url);
const vectors=JSON.parse(fs.readFileSync(new URL('db-native-flow-vectors.json',root),'utf8'));
const floatHex=value=>{const b=Buffer.alloc(4);b.writeFloatLE(value);return b.toString('hex');};
let passed=0;
for(const v of vectors){
 const context=structuredClone(v.fixture);
 context.wishOptionValue=id=>context.wishValues[String(id)];
 const runtime=createDatabaseRuntime(context);
 const actual=v.method==='SpiritSkillValue'?runtime.spiritValue(v.index):v.method==='SpiritSkillCheck'?runtime.spiritCheck(v.index):runtime.databaseGetters(v.method.replace(/^get_/,''));
 const encoded=v.encoding==='f32-little-endian-hex'?floatHex(actual):v.encoding==='integer'?String(actual):actual;
 assert.equal(encoded,v.expected,`${v.method}, snapshot ${v.case}, index ${v.index}`);
 passed++;
}
let contracts=0;
const f=structuredClone(vectors[0].fixture);f.wishOptionValue=id=>f.wishValues[String(id)];
f.db.SpiritSkillTypes=null;assert.throws(()=>spiritCheck(f,1),/NullReference/);contracts++;
f.db.SpiritSkill_Ban=true;delete f.db.SpiritSkill_BossAddSkillDmg;assert.equal(spiritValue(f,4),0);contracts++;
f.demon=null;assert.throws(()=>demonAltarSkillDamage(f),/NullReference/);contracts++;
f.demon={Altar:null};assert.throws(()=>demonAltarSkillDamage(f),/NullReference/);contracts++;
f.statics.FireSkillDmgBuff=null;assert.throws(()=>seasonSkillDamage(f,'Fire'),/NullReference/);contracts++;
assert.throws(()=>createDatabaseRuntime(f).databaseGetters('UnknownBuff'),/Unrecovered input/);contracts++;
const report={passed,native_method_bodies:16,contracts,scope:'Native getter flow with explicit external dependencies; no Unity/gameplay parity claim.'};
fs.writeFileSync(new URL('js-database-flow-report.json',root),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
