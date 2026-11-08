import fs from 'node:fs';
import assert from 'node:assert/strict';
import {f32,i64} from '../../logic-step4/port/recovered-combat.mjs';
import * as flow from './recovered-equipment-flow.mjs';
import {mutateCurrency} from './recovered-currency-mutation.mjs';
const data=JSON.parse(fs.readFileSync(new URL('../equipment-flow-native-vectors.json',import.meta.url),'utf8'));
const bits=(value,type)=>{const b=Buffer.alloc(type==='atk'?8:4);type==='atk'?b.writeDoubleLE(value):b.writeFloatLE(value);return b.toString('hex');};
function fixture(value){const s=structuredClone(value);for(const k of ['critical','gold']){s.owned[k].total=f32(s.owned[k].total);s.owned[k].values=Object.fromEntries(Object.entries(s.owned[k].values).map(([i,v])=>[i,f32(v)]));}return s;}
function state(s){const m=s.manager;return {itemLevels:Object.fromEntries(Object.entries(s.equipment).map(([i,x])=>[i,x.Level])),currentValue:String(m.currentValue),currentPrice:String(m.currentPrice),countValueCheck:m.countValueCheck,hCount:m.hCount,upgradeCount:m.upgradeCount,delayBusy:m.delayBusy,isHolding:m.isHolding,upgradeCube:String(s.db.upgradeCube),currencyTotalGet:String(s.db.currencyTotalGet),currencyTotalUsed:String(s.db.currencyTotalUsed),equipmentUpgradeCount:String(s.db.equipmentUpgradeCount),equipmentAtk:String(s.db.equipmentAtk),owned:Object.fromEntries(['atk','critical','gold'].map(k=>[k,{totalBits:bits(s.owned[k].total,k),valuesBits:Object.fromEntries(Object.entries(s.owned[k].values).map(([i,v])=>[i,bits(v,k)]))}]))};}
function runtime(effects){return {emit:e=>effects.push(e),useCurrency:(currency,amount,s)=>{
 assert.equal(currency,6);effects.push({name:'UseCurrency',args:[currency,String(amount)]});
 const record={amount:s.db.upgradeCube,totalGet:s.db.currencyTotalGet,totalUsed:s.db.currencyTotalUsed};
 mutateCurrency('use',record,amount,s.currencyEventPresent?r=>effects.push({name:'CurrencyData.Event',args:[6,String(r.amount),String(r.totalGet),String(r.totalUsed)]}):null);
 s.db.upgradeCube=record.amount;s.db.currencyTotalGet=record.totalGet;s.db.currencyTotalUsed=record.totalUsed;
 effects.push({name:'GoodsDisplayManager.UpdateCurrency',args:[6]});if(s.eventShopCurrency===6)effects.push({name:'PopupEventPass.CheckRedDot',args:[]});
 }};}
for(const v of data.vectors){
 const s=fixture(v.fixture),effects=[],r=runtime(effects),index=s.manager.currentIndex;let result;
 if(v.method==='levelValueSetting')flow.levelValueSetting(s,index,v.applyHavePower,r);
 else if(v.method==='applyEquipment')flow.applyEquipment(s,index,r);
 else if(v.method==='upgradeHoldStep'||v.method==='upgradeDelayStep')result=flow[v.method](v.fixture.iterator,s,r);
 else flow[v.method](s,r);
 assert.deepEqual({state:state(s),effects,...result},v.expected,`${v.method} fixture ${v.case}`);
}
for(const [number,sequence] of data.sequences.entries()){
 const s=fixture(sequence.fixture);let iterator=sequence.fixture.iterator;
 for(const [frame,item] of sequence.frames.entries()){
  const effects=[],r=runtime(effects);let result;
  if(item.action==='pointerUp')flow.pointerUp(s,r);
  else{result=(item.action==='delay'?flow.upgradeDelayStep:flow.upgradeHoldStep)(iterator,s,r);iterator=result.iterator;}
  assert.deepEqual({state:state(s),effects,...result},item.expected,`sequence ${number}, action ${frame}`);
 }
}
console.log(JSON.stringify({passed:data.vectors.length,sequences:data.sequences.length,scope:'Connected equipment client state/effect order with explicit downstream fixtures.'}));
