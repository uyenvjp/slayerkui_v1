import fs from 'node:fs';
import assert from 'node:assert/strict';
import * as data from './recovered-experience-data.mjs';
import {f32} from '../../logic-step4/port/recovered-combat.mjs';
const corpus=JSON.parse(fs.readFileSync(new URL('../experience-data-native-vectors.json',import.meta.url),'utf8'));
const decode=v=>v==='nan'?NaN:v==='inf'?Infinity:v==='-inf'?-Infinity:Array.isArray(v)?v.map(decode):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,decode(x)])):v;
const doubleKey=v=>{if(Number.isNaN(v))return 'nan';const b=Buffer.alloc(8);b.writeDoubleLE(v);return b.toString('hex');};
export function parseDecimalFixture(value){if(value===null)throw new TypeError('Native Parse ArgumentNull fixture');if(!/^[\t\n\r ]*[+-]?[0-9]+[\t\n\r ]*$/.test(value))throw new TypeError('Native Parse FormatException fixture');return BigInt(value.trim());}
function run(v){
 const f=decode(v.fixture),db={...f.db,currentExp:f.currentExp,totalExp:f.totalExp,syncExp:f.syncExp},effects=[],runtime={emit:e=>effects.push(e),parseBigInteger:parseDecimalFixture};let value,sameObject,error;
 const write=x=>effects.push({name:'ExpAdd.Write',args:[data.float32Key(x)]});
 try{
  if(v.method==='calculateExpAdd')value=data.float32Key(data.calculateExpAdd(db,write));
  else if(v.method==='setExpAdd')data.setExpAdd(db,f.setExpAdd,write);
  else if(v.method==='spiritExpAddCal')value=doubleKey(data.spiritExpAddCal(db));
  else if(v.method==='getSyncExp')sameObject=data.getSyncExp(db,runtime)===db.syncExp;
  else data.expSync(db,f.remote,runtime);
 }catch(e){error=e.message.includes('Native null')?'Native NullReference':e.message;}
 return {expAdd:data.float32Key(f32(db.expAdd)),sync:{currentExp:String(db.currentExp),totalExp:String(db.totalExp),syncExp:db.syncExp,remote:f.remote},effects,...(error?{error}:value!==undefined?{value}:sameObject!==undefined?{sameObject}:{} )};
}
for(const v of [...corpus.vectors,...corpus.contracts])assert.deepEqual(run(v),v.expected,`${v.method} ${v.case??'contract'}`);
console.log(JSON.stringify({passed:corpus.vectors.length,contracts:corpus.contracts.length,scope:'EXP aggregation precision/order, double array sum, cached object identity and sync partial failure under modeled dependencies.'}));
