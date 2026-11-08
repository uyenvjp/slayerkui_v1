/** Connected client equipment bodies. useCurrency is an explicit runtime
 * dependency, paired with recovered-currency-mutation in the verifier and
 * original CurrencyData/DatabaseManager instruction bodies in its corpus.
 * UI/localization, quest, telemetry, sound, Player.Atk_Cal and API remain sinks.
 * This is analysis code, not a playable game or server emulator.
 */
import {f32,i32,i64} from '../../logic-step4/port/recovered-combat.mjs';
import {upgradePrice,maxLevelAwakening,tryEquipmentUpgrade} from '../../logic-step7/port/recovered-equipment-upgrade.mjs';
import {need,atkValue,havePowerCritical,havePowerGold,renewHavePower} from './recovered-equipment-stats.mjs';
const word=x=>Number(i32(x));
const getItem=(s,i)=>need(need(s,'equipment'),String(word(i)));
const manager=s=>need(s,'manager'),db=s=>need(s,'db');
const bits=(x,kind)=>{const view=new DataView(new ArrayBuffer(kind==='atk'?8:4));kind==='atk'?view.setFloat64(0,x,true):view.setFloat32(0,x,true);return [...new Uint8Array(view.buffer)].map(n=>n.toString(16).padStart(2,'0')).join('');};
const event=(runtime,name,...args)=>runtime.emit({name,args});
export const HOLD_TIMING={initial:f32(.2),repeat:f32(.03),debounce:f32(.1)};
function renew(s,kind,index,value,runtime){
  const out=renewHavePower(kind,need(need(s,'owned'),kind),index,value,w=>event(runtime,'Owned.Write',kind,w.kind,w.index??null,bits(w.value,kind)));
  s.owned[kind]=out;
}
function text(runtime,field){event(runtime,'UI.Text',field);}
export function pointerUp(s,runtime){
  const m=manager(s);m.isHolding=false;
  if(word(need(m,'upgradeCount'))>=1){event(runtime,'APIManager.ItemUpgrade',word(need(m,'currentIndex')),1,word(m.upgradeCount));m.upgradeCount=0;event(runtime,'Sound.Virtual1320');}
}
export function levelValueSetting(s,index,applyHavePower,runtime){
  const item=getItem(s,index),m=manager(s),level=word(need(item,'Level'));index=word(index);
  m.currentValue=atkValue(s,index,level);
  m.currentPrice=upgradePrice(need(item,'Price'),need(need(need(s,'levels'),String(level)),'Price'));
  const max=maxLevelAwakening(need(s,'awakeningWeapon'));
  if(level<max){
    // Preview calculations really execute even though text formatting is opaque.
    atkValue(s,index,word(level+1));text(runtime,'atk');
    event(runtime,'UI.ButtonEnabled',true);event(runtime,'UI.ButtonColor',1,1,1,1);text(runtime,'price');text(runtime,'ownedAtk');
    if(applyHavePower)renew(s,'atk',index,Number(m.currentValue)*.3,runtime);
    if(f32(need(item,'HavePower_CriticalValue'))!==0){
      const value=havePowerCritical(s,index,level);havePowerCritical(s,index,word(level+1));text(runtime,'critical');if(applyHavePower)renew(s,'critical',index,value,runtime);
    }
    if(f32(need(item,'HavePower_GoldAmountValue'))!==0){
      const value=havePowerGold(s,index,level);havePowerGold(s,index,word(level+1));text(runtime,'gold');if(applyHavePower)renew(s,'gold',index,value,runtime);
    }
  }else{
    text(runtime,'atk');event(runtime,'UI.ButtonEnabled',false);event(runtime,'UI.ButtonColor',.5,.5,.5,1);pointerUp(s,runtime);text(runtime,'price');text(runtime,'ownedAtk');
    if(applyHavePower)renew(s,'atk',index,Number(m.currentValue)*.3,runtime);
    if(f32(need(item,'HavePower_CriticalValue'))!==0){const value=havePowerCritical(s,index,level);text(runtime,'critical');if(applyHavePower)renew(s,'critical',index,value,runtime);}
    if(f32(need(item,'HavePower_GoldAmountValue'))!==0){const value=havePowerGold(s,index,level);text(runtime,'gold');if(applyHavePower)renew(s,'gold',index,value,runtime);}
  }
  event(runtime,'EquipmentDisplay.LevelSetting',index,level);event(runtime,'EquipmentSlot.LevelRenew',index);
}
export function applyEquipment(s,index,runtime){
  const m=manager(s),item=getItem(s,index),account=db(s);
  runtime.useCurrency(6,i64(need(m,'currentPrice')),s);
  event(runtime,'GoodsDisplayManager.UpgradeCubeUpdate');item.Level=word(word(need(item,'Level'))+1);
  levelValueSetting(s,index,true,runtime);
  m.countValueCheck=word(word(need(m,'countValueCheck'))+1);account.equipmentUpgradeCount=i64(i64(need(account,'equipmentUpgradeCount'))+1n);
  event(runtime,'TryCallKinesisLog',1,0);event(runtime,'NoticeCheck_Achievement',1);event(runtime,'UpgradeEffect');event(runtime,'Sound.Virtual1400');event(runtime,'TrySendKinesisLog',word(index));
}
export function upgradeStatApply(s,runtime){
  const account=db(s),m=manager(s);
  if(word(need(account,'equippedIndex'))===word(need(m,'currentIndex'))){account.equipmentAtk=i64(need(m,'currentValue'));event(runtime,'EquipmentAtk.Write',String(account.equipmentAtk));event(runtime,'PlayerBase.Atk_Cal');}
}
export function upgradeFunc(s,runtime){
  const m=manager(s),item=getItem(s,need(m,'currentIndex'));
  const result=tryEquipmentUpgrade({level:need(item,'Level'),locked:need(item,'Lock'),currentPrice:need(m,'currentPrice'),hCount:need(m,'hCount'),upgradeCount:need(m,'upgradeCount')},{awakeningWeapon:need(s,'awakeningWeapon'),upgradeCube:need(db(s),'upgradeCube')});
  m.hCount=result.snapshot.hCount;m.upgradeCount=result.snapshot.upgradeCount;
  for(const effect of result.effects){
    if(effect.name==='PointerUp')pointerUp(s,runtime);
    else if(effect.name==='ApplyEquipment')applyEquipment(s,m.currentIndex,runtime);
    else if(effect.name==='DataCheck_H')event(runtime,'DataCheck_H',6,effect.price);
    else event(runtime,effect.name);
  }
}
export function upgradeHoldStep(iterator,s,runtime){
  const next={...iterator},m=manager(s);const state=word(need(iterator,'state'));
  if(state===0){next.state=-1;m.upgradeCount=0;upgradeFunc(s,runtime);next.current={waitForSeconds:HOLD_TIMING.initial};event(runtime,'WaitForSeconds',HOLD_TIMING.initial);next.state=1;return {iterator:next,yielded:true};}
  if(state!==1&&state!==2)return {iterator:next,yielded:false};
  next.state=-1;
  if(need(m,'isHolding')){upgradeFunc(s,runtime);next.current={waitForSeconds:HOLD_TIMING.repeat};event(runtime,'WaitForSeconds',HOLD_TIMING.repeat);next.state=2;return {iterator:next,yielded:true};}
  upgradeStatApply(s,runtime);
  if(word(need(m,'upgradeCount'))>=1){m.upgradeCount=0;event(runtime,'Sound.Virtual1320');}
  return {iterator:next,yielded:false};
}
export function upgradeDelayStep(iterator,s,runtime){
  const next={...iterator},m=manager(s);const state=word(need(iterator,'state'));
  if(state===0){next.state=-1;m.delayBusy=true;next.current={waitForSeconds:f32(.1)};event(runtime,'WaitForSeconds',f32(.1));next.state=1;return {iterator:next,yielded:true};}
  if(state===1){next.state=-1;m.delayBusy=false;}
  return {iterator:next,yielded:false};
}
