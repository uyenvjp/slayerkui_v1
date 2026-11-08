/** Static translation of unpatched client methods. This is analysis code,
 * not an offline account, backend implementation, or a playable game.
 * Input getters, decrypted wrappers, RNG and effect sinks are explicit.
 */
import {f32,i32 as word32,i64,nativeFloatToInteger} from '../../logic-step4/port/recovered-combat.mjs';
const i32=n=>Number(word32(n));

const own=(o,k)=>{if(o==null||!Object.hasOwn(o,k))throw new TypeError(`Missing native input: ${k}`);return o[k];};
const int=(o,k)=>i32(own(o,k));

// UsefulManager.Probability 0x4d18120; comparison is strict and NaN is false.
export function probability(percent,draw0to100){return f32(draw0to100)<f32(percent);}

// GameManager.get_StageGoldAmount 0x4e513b4. Integer Range(90,111).
export function stageGoldAmount(baseGold,integerPercent){
  return BigInt(baseGold)*BigInt(i32(integerPercent))/100n;
}
// GameManager.GoldAmount_Nobuff 0x4e514d8 still calls get_GoldAmountAdd.
export function goldAmountNobuff(rawAmount,goldAmountAdd){return BigInt(rawAmount)*i64(goldAmountAdd)/100n;}
// DatabaseManager.Gold_Cal 0x4d4d544 has the same bounded arithmetic.
export const goldCal=goldAmountNobuff;
// DatabaseManager.Exp_Cal 0x4d4da60. Promote decoded float32 to double
// before multiplying by 1000, convert to signed long, then BigInteger math.
export function expCal(rawAmount,expAdd){return BigInt(rawAmount)*nativeFloatToInteger(f32(expAdd)*1000,64)/100000n;}

// GameManager.get_StageMonsterIndex 0x4e51718. The fallback is one draw,
// not a loop, so zero may still be returned if source slot 0/1 contains zero.
export function stageMonsterIndex(indices,randomInt){
  if(indices==null)throw new TypeError('Native null monster array');
  const at=n=>{if(n<0||n>=indices.length)throw new RangeError('Native array bounds');return i32(indices[n]);};
  const value=at(randomInt(0,3));return value===0?at(randomInt(0,2)):value;
}

// EnemyNormal.SoulDivision 0x50fab10; enum source is CurrencyTypes.
export function soulDivision(currency,alternate){
  currency=i32(currency);const second=!!alternate;
  if(currency===13)return second?15:14;
  if(currency===14)return second?13:15;
  return second?14:13;
}
export function equipmentDropCurrency(stageIndex){
  const value=(Math.imul(i32(stageIndex),0xcccccccd)+0xe6666666)>>>0;
  return value<0x33333333?101:100;
}
function soulAmount(base,ratio){
  const value=Math.ceil(Number(i64(base))*f32(ratio));
  if(!Number.isFinite(value)||value<=1)return 1n;
  return nativeFloatToInteger(value,64);
}

/** EnemyNormal.StageItemDrop 0x50f9804, successful object/dependency paths.
 * Returns ordered requests made to the Unity pool / logging sinks. It does
 * not treat visual spawns as immediate resource acquisition. Native null,
 * dictionary failure and pool lifetime errors belong to the runtime layer.
 */
export function stageItemDrop(input,runtime){
  const stage=own(input,'stage'),db=own(input,'db'),events=[];
  const add=(kind,data)=>{const event={kind,...data};events.push(event);runtime.effect?.(event);};
  const rangeFloat=(a,b)=>f32(runtime.randomFloat(a,b));
  const test=p=>probability(p,rangeFloat(0,100));
  const main=int(stage,'Index');
  const drop=(currency,amount,dropType=0)=>add('DropEffect',{dropType,currency,amount:String(amount),dungeonType:5,mainIndex:main,subIndex:0});
  // This draw is present in the native method even though its result is unused.
  rangeFloat(0,100);
  const theme=!!own(input,'themeUsable')&&int(own(input,'theme'),'DungeonType')===2;
  const repeats=theme?10:1;
  for(let n=0;n<repeats;n++){
    add('CoinEffect',{dropType:theme?4:0,amount:String(runtime.getStageGoldAmount())});
    drop(24,i64(own(stage,'Exp')),theme?4:0);
  }
  if(test(.5))drop(4,int(stage,'Dice'));
  let cube=int(stage,'Cube');
  if(test(10)){
    if(int(db,'AD_CubeDropBuff_LimitTime')>=1)cube=i32(cube*3);
    if(runtime.eventBuffActive(3))cube=i32(BigInt(i32(BigInt(cube)*BigInt(int(input,'eventBuffUpgradeCube'))))/100n);
    drop(6,cube);
  }
  let equipmentProbability=f32(own(stage,'EquipmentProb'));
  if(int(db,'AD_EquipmentDropBuff_LimitTime')>=1)equipmentProbability=f32(equipmentProbability+equipmentProbability);
  if(test(equipmentProbability)){
    const index=int(stage,'EquipmentIndex');
    drop(equipmentDropCurrency(main),index);
    if(equipmentProbability>=10){add('HackerCount',{code:8});add('Post_WarningLog',{code:6,value:equipmentProbability,stageMainNumber:int(stage,'MainNumber')});}
    if(index>=20){add('HackerCount',{code:8});add('Post_WarningLog',{code:5,value:f32(index),stageMainNumber:int(stage,'MainNumber')});}
  }
  if(test(own(stage,'StoneProb'))){
    const amount=i32(runtime.randomInt(1,11)),kind=i32(runtime.randomInt(0,4));
    drop([5,11,3,12][kind]??12,amount);
  }
  if(own(input,'soulEnabled')){
    const soul=own(input,'soul');
    if(int(soul,'SoulType')!==0&&test(own(soul,'SoulProb'))){
      let amount=soulAmount(own(soul,'SoulAmount'),rangeFloat(f32(.9),f32(1.1)));
      if(runtime.eventBuffActive(5))amount=i64(amount*BigInt(int(input,'eventBuffSoul')))/100n;
      let currency=int(soul,'SoulType');const choice=i32(runtime.randomInt(0,8));
      if(choice>=6)currency=soulDivision(currency,choice!==6);
      drop(currency,amount);
      if(f32(own(soul,'SoulProb'))>=5){add('HackerCount',{code:10});add('Post_WarningLog',{code:4,value:f32(own(soul,'SoulProb')),stageMainNumber:int(stage,'MainNumber')});}
    }
  }
  return events;
}

// DatabaseManager.Gold_Get 0x4d46f04, before GoldSafeCheck/UI callbacks.
export function goldGet(state,amount){
  amount=BigInt(amount);
  return {UserGold:BigInt(own(state,'UserGold'))+amount,preGold:BigInt(own(state,'preGold'))+amount,
    minusGold:BigInt(own(state,'minusGold'))-amount,TotalGoldGet:BigInt(own(state,'TotalGoldGet'))+amount,
    effects:['GoldSafeCheck','GoodsDisplayManager.GoldUpdate']};
}
