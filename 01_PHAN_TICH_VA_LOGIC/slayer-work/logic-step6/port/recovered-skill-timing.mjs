/** Native SkillData timing rules from XAPK 705, unpatched baseline.
 * State uses decrypted native field names; dependencies supply original account
 * data. Effects are ordered calls for the host, not Unity/DOM implementations.
 */
import {f32,i32,nativeFloatToInteger} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step5/port/recovered-player-stats.mjs';
const F=(o,k)=>f32(need(o,k));
const I=(o,k)=>i32(need(o,k));
const data=c=>need(c,'data');
const skill=c=>{const s=need(data(c),'skill');if(s===null)throw new Error('Native NullReference path: SkillData.skill');return s;};
const active=c=>Number(I(skill(c),'activeType'));
const dmgType=c=>Number(I(skill(c),'dmgType'));
const effect=(effects,name,...args)=>effects.push({name,args});
// ARM64 FCMP sets C=1,Z=0 for unordered operands, so HI also accepts NaN.
const highZero=value=>value>0||Number.isNaN(value);
export const skillBanCheck=c=>Boolean(need(data(c),'SkillBan')||need(data(c),'SkillSpecialBan'));
export function cooltimeReduceFactor(c){const d=data(c),floor=f32(F(d,'skilleffectCooltimeReduceFactor')+1),candidate=F(d,'cooltimeReduceFactor');return candidate<floor?floor:candidate;}
export const cooltimeAddValue=c=>f32(cooltimeReduceFactor(c)*F(data(c),'CooltimeIncreaseFactor'));
export function setCooltimeReduceAmount(c,value){const d=data(c);d.cooltimeReduceFactor=need(d,'SkillCoolTimeReduceBuff')?f32(value):f32(1);}
export function invalidateMaxCooltime(c){data(c)._cooltimeDirty=true;}
const hunt=c=>{const h=need(c,'dragonHunt');if(h===null)throw new Error('Native NullReference path: DragonValleyManager.Hunt');return h;};
function stone(c,name,type){const dic=need(need(c,'statics'),name);if(dic===null)throw new Error('Native NullReference path: skill stone dictionary');if(dic instanceof Map){if(!dic.has(type))throw new Error('Native KeyNotFound path: skill stone');return f32(dic.get(type));}return f32(need(dic,String(type)));}
function grinding(c,name){const g=need(c,'grinding');if(g===null)return f32(0);return F(g,name);}
export function setMaxCooltimePlus(c){
 const d=data(c);if(!need(d,'_cooltimeDirty'))return;
 d._cooltimeDirty=false;const base=F(d,'maxCooltime'),type=dmgType(c);
 if(type!==0){
  const reduction=f32(grinding(c,'SkillCoolTimePercent')*f32(.01));
  const percent=f32(stone(c,'SkillStoneOption_SkillCoolTimePercent',type)+F(hunt(c),'SkillCoolTimePercent'));
  let result=f32(base+f32(base*f32(percent*f32(.01))));
  result=f32(result-f32(reduction*result));
  d._maxCooltimePlus=highZero(result)?result:f32(.1);
 }else{
  const percent=F(hunt(c),'SkillCoolTimePercent');const result=f32(base+f32(base*f32(percent*f32(.01))));
  d._maxCooltimePlusNone=highZero(result)?result:f32(.1);
 }
}
export function maxCooltimePlus(c){const d=data(c);if(need(d,'_cooltimeDirty'))setMaxCooltimePlus(c);return F(d,dmgType(c)===0?'_maxCooltimePlusNone':'_maxCooltimePlus');}
function roundEvenDouble(value){if(!Number.isFinite(value))return value;const whole=Math.trunc(value),frac=value-whole;if(Math.abs(frac)===.5)return whole%2===0?whole:whole+Math.sign(value);return value<0?Math.ceil(value-.5):Math.floor(value+.5);}
export function maxAttackCountResult(c){
 const d=data(c),type=dmgType(c),base=F(d,'maxAttackCount');
 if(type===0||active(c)===8){d._maxAttackCountResult=base;return base;}
 const grind=grinding(c,'AttackCountPercent'),stonePercent=stone(c,'SkillStoneOption_AttackCountPercent',type),h=hunt(c);
 let result=f32(base+f32(f32(base*stonePercent)*f32(.01)));
 result=f32(result-f32(f32(result*grind)*f32(.01)));
 result=f32(result+f32(f32(result*F(h,'Cook_CountSkillReduce'))*f32(-.01)));
 if(type===3)result=f32(result+f32(f32(result*F(h,'WindSkillCountDecrease'))*f32(-.01)));
 const rounded=roundEvenDouble(result),integer=nativeFloatToInteger(rounded,32);
 const count=rounded===Infinity?1n:integer>1n?integer:1n;
 d._maxAttackCountResult=f32(Number(count));return d._maxAttackCountResult;
}
export function attackCountUpdate(c){
 const d=data(c),effects=[];
 // Native compares the sign bit of an int32 subtraction here (b.pl).
 const max=()=>maxAttackCountResult(c);
 if(i32(nativeFloatToInteger(max(),32)-nativeFloatToInteger(F(d,'curAttackCount'),32))<0n)d.curAttackCount=max();
 effect(effects,'attackCount.fillAmount',f32(1-f32(F(d,'curAttackCount')/max())));
 effect(effects,'attackCount.text',String(i32(nativeFloatToInteger(max(),32)-nativeFloatToInteger(F(d,'curAttackCount'),32))));
 if(!highZero(F(d,'curAttackCount'))&&!need(d,'SkillUsePossible')){effect(effects,'attackCount.SetActive',false);d.SkillUsePossible=true;effect(effects,'SkillUsingCheck');}
 return effects;
}
export function attackCountSetting(c){const d=data(c),effects=[];d.SkillUsePossible=false;effect(effects,'SkillUsingCheck');d.curAttackCount=maxAttackCountResult(c);effect(effects,'attackCount.SetActive',true);return effects.concat(attackCountUpdate(c));}
export function attackCountStart(c){return [{name:'attackCount.SetActive',args:[true]},...attackCountUpdate(c)];}
export function attackCounting(c){const d=data(c);if(need(d,'SkillUsePossible')||skillBanCheck(c))return [];d.curAttackCount=f32(F(d,'curAttackCount')-1);return attackCountUpdate(c);}
export function skillCoolTimeSetting(c){
 const d=data(c),effects=[];invalidateMaxCooltime(c);
 if(active(c)===11){d.SkillUsePossible=I(d,'useStackCount')>0n;effect(effects,'stack.SetActive',true);effect(effects,'stack.text',String(I(d,'useStackCount')));}
 else{d.SkillUsePossible=false;d.curCooltime=maxCooltimePlus(c);}
 effect(effects,'SkillUsingCheck');effect(effects,'cooltime.SetActive',true);effect(effects,'coroutine.replace','normal');return effects;
}
export function skillCoolTimeStart(c,delay){invalidateMaxCooltime(c);return [{name:'cooltime.SetActive',args:[true]},{name:'coroutine.replace',args:[delay?'delay':'normal']}];}
export function cooltimeCharge(c,amount,{timeSkill=false}={}){
 const d=data(c),effects=[],stack=active(c)===11;amount=f32(amount);
 if(stack){if(I(d,'useStackCount')>=I(d,'_maxUseStackCount'))return effects;}
 else if(need(d,'SkillUsePossible'))return effects;
 if(!timeSkill&&I(skill(c),'Index')===1006n)return effects;
 if(need(d,'SkillBan')&&I(d,'currentSkillBanState')===8n)return effects;
 if(F(d,'curCooltime')>0){let result=f32(F(d,'curCooltime')+f32(f32(maxCooltimePlus(c)*amount)*f32(-.01)));d.curCooltime=highZero(result)?result:0;}
 else if(!timeSkill&&F(d,'curAttackCount')>0){
  const step=nativeFloatToInteger(f32(f32(maxAttackCountResult(c)*amount)*f32(.01)),32);
  const result=f32(F(d,'curAttackCount')-f32(Number(step)));d.curAttackCount=highZero(result)?result:0;effects.push(...attackCountUpdate(c));
 }
 return effects;
}
export function skillCooltimeReset(c){const d=data(c),effects=[];if(need(d,'SkillUsePossible'))return effects;if(F(d,'curAttackCount')>0){d.curAttackCount=maxAttackCountResult(c);effects.push(...attackCountUpdate(c));}if(F(d,'curCooltime')>0)d.curCooltime=maxCooltimePlus(c);return effects;}
export function skillCooltimeResetAncient(c){const type=active(c);return type===2?skillCoolTimeSetting(c):[4,10].includes(type)?attackCountSetting(c):[];}
/** One MoveNext call. A tick crossing zero yields; completion is next MoveNext. */
export function moveCooltime(c,coroutine,{delay=false}={}){
 const d=data(c),effects=[];const state=Number(i32(need(coroutine,'state')));
 if(state!==0&&state!==1)return {yielded:false,effects};
 coroutine.state=-1;
 if(F(d,'curCooltime')>0){
  const max=delay?F(d,'maxCooltime'):maxCooltimePlus(c);
  if(f32(max-F(d,'curCooltime'))<0)d.curCooltime=max;
  if(!skillBanCheck(c)&&need(c,'isBattle')){
   const dt=f32(need(c,'gameDeltaTime'));d.curCooltime=f32(F(d,'curCooltime')-(delay?dt:f32(dt*cooltimeAddValue(c))));
  }
  effect(effects,'cooltime.fillAmount',f32(1-f32(F(d,'curCooltime')/max)));
  const scaled=f32(f32(max-F(d,'curCooltime'))*10);
  effect(effects,'cooltime.elapsed',f32(f32(Number(nativeFloatToInteger(scaled,32)))*f32(.1)));
  coroutine.state=1;coroutine.current=null;return {yielded:true,effects};
 }
 effect(effects,'cooltime.SetActive',false);d.SkillUsePossible=true;effect(effects,'SkillUsingCheck');
 if(!delay&&active(c)===11){
  d.useStackCount=i32(I(d,'useStackCount')+1n);
  if(d.useStackCount<I(d,'_maxUseStackCount')){d.curCooltime=maxCooltimePlus(c);effects.push(...skillCoolTimeSetting(c));}
  else d.useStackCount=I(d,'_maxUseStackCount');
  effect(effects,'stack.text',String(I(d,'useStackCount')));
 }
 return {yielded:false,effects};
}
export const SOURCE={cooltimeReduceFactor:'0x5305a90',cooltimeAddValue:'0x5305af0',setMaxCooltimePlus:'0x5305b90',maxAttackCountResult:'0x53061e8',cooltimeCharge:'0x530a30c',cooltimeChargeTimeSkill:'0x530a5f0',normalMoveNext:'0x530da34',delayMoveNext:'0x530dd6c'};
