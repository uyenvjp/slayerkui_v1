import fs from 'node:fs';
import assert from 'node:assert/strict';
import {equipmentValue,upgradePrice,maxLevelAwakening,tryEquipmentUpgrade,upgradePointerUp} from './recovered-equipment-upgrade.mjs';
const vectors=JSON.parse(fs.readFileSync(new URL('../upgrade-native-flow-vectors.json',import.meta.url),'utf8'));
for(const v of vectors){
 const f=v.fixture;let result;
 if(v.method==='equipmentValue')result=String(equipmentValue(f.baseValue,f.levelTableValue));
 else if(v.method==='upgradePrice')result=String(upgradePrice(f.basePrice,f.levelTablePrice));
 else if(v.method==='maxLevelAwakening'||v.method==='weaponMaxLevel')result=maxLevelAwakening(f.input.awakeningWeapon);
 else if(v.method==='tryEquipmentUpgrade')result=tryEquipmentUpgrade(f.snapshot,f.input);
 else if(v.method==='upgradePointerUp')result=upgradePointerUp(f.snapshot);
 else throw Error(v.method);
 assert.deepEqual(result,v.result,`${v.method} ${v.case}`);
}
console.log(JSON.stringify({passed:vectors.length,scope:'Six bounded equipment entry bodies, including 1701 original table levels; modeled dependencies.'}));
