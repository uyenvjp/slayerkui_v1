/** Native level application and batching, with one explicitly registered
 * LevelUp_Callback listener. Other subscribers and UI/network sinks are
 * declared dependencies; these routines do not initialize an offline account.
 */
import {f32,i32} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step8/port/recovered-equipment-stats.mjs';
import {getUserMaxLevel} from './recovered-experience.mjs';
const word=x=>Number(i32(x)),emit=(r,name,...args)=>r.emit({name,args});
export function levelDisplay(s,r){
 const level=word(need(s,'level'));emit(r,'ExpList.Get',level);s.maxExp=BigInt(need(need(s,'expTable'),String(level)));emit(r,'MaxExp.Write',String(s.maxExp));
 emit(r,'UI.Text','level');emit(r,'UI.Text','levelMain');
}
export function levelUpCallback(s,r){levelDisplay(s,r);if(word(need(s,'level'))===20)emit(r,'DailyTimeManager.Package0_Setting');}
export function levelUpRequest(s,r){
 const count=word(need(s,'levelUpCount'));if(count<1)return;
 emit(r,'SeasonQuest.TryAddCount',9,0,count);s.levelUpCount=0;
 emit(r,'QuestManager.NoticeCheck_Achievement',0);emit(r,'QuestManager.UpdateQuestType',11);emit(r,'SkillManager.SetActiveSkillGainShortCut');
 emit(r,'LevelUpEffect.SetActive',false);emit(r,'LevelUpEffect.SetActive',true);
 if(word(need(s,'level'))>=265)emit(r,'StatManager.ForceOption_Stat_Update');
 emit(r,'Sound.Virtual1320');emit(r,'DatabaseManager.get_SyncExp');emit(r,'APIManager.LevelUp',word(s.level),need(s,'syncExpInput'));
}
export function levelUpStop(s,r){levelUpRequest(s,r);s.userLevelUpIng=false;s.isPointerDown=false;emit(r,'PlayerClassManager.CheckReddot');}
export const pointerUpLevel=levelUpStop;
export const LEVEL_HOLD_TIMING=Object.freeze({counterIncrement:f32(.1),threshold:f32(.5),wait:f32(.03),debounce:f32(.1)});
export function levelHoldStep(iterator,s,r){
 const next={...iterator},state=word(need(iterator,'state'));
 if(state!==0&&state!==1)return {iterator:next,yielded:false};
 next.state=-1;
 if(state===0){emit(r,'TimeManager.ForceSyncStagePlay');next.time=f32(0);buttonLevelUp(s,r);}
 if(need(s,'isPointerDown')&&need(s,'userLevelUpIng')){
  next.time=f32(f32(need(next,'time'))+LEVEL_HOLD_TIMING.counterIncrement);
  if(next.time>LEVEL_HOLD_TIMING.threshold)buttonLevelUp(s,r);
  // Native does not recheck flags if Button_LevelUp stopped the hold.
  next.current={waitForSeconds:LEVEL_HOLD_TIMING.wait};emit(r,'WaitForSeconds',LEVEL_HOLD_TIMING.wait);next.state=1;return {iterator:next,yielded:true};
 }
 levelUpRequest(s,r);s.isPointerDown=false;return {iterator:next,yielded:false};
}
export function levelDelayStep(iterator,s,r){
 const next={...iterator},state=word(need(iterator,'state'));
 if(state===0){next.state=-1;s.levelUpDelay=true;next.current={waitForSeconds:LEVEL_HOLD_TIMING.debounce};emit(r,'WaitForSeconds',LEVEL_HOLD_TIMING.debounce);next.state=1;return {iterator:next,yielded:true};}
 if(state===1){next.state=-1;s.levelUpDelay=false;}
 return {iterator:next,yielded:false};
}
function tutorial(s,r,type,key){emit(r,'TutorialManager.Set',type,key);pointerUpLevel(s,r);}
export function buttonLevelUp(s,r){
 if(word(need(s,'level'))>=getUserMaxLevel(s,r)){emit(r,'DatabaseManager.LogError','user-level-cap');return;}
 if(BigInt(need(s,'currentExp'))<BigInt(need(s,'maxExp'))){emit(r,'AlarmManager.MissingExp');s.isPointerDown=false;return;}
 s.currentExp=BigInt(s.currentExp)-BigInt(s.maxExp);emit(r,'CurrentExp.Write',String(s.currentExp));s.level=word(word(s.level)+1);
 s.levelUpCount=word(word(need(s,'levelUpCount'))+1);s.userStatPoint=word(word(need(s,'userStatPoint'))+3);
 emit(r,'StatManager.StatPointDisplay');emit(r,'Animator.StatPoint.SetTrigger');
 if(!need(s,'levelActionPresent'))throw new TypeError('Native null LevelUpAction');
 // OnEnable subscribes LevelUp_Callback. This corpus supplies exactly that
 // listener, not an invented default for an absent multicast delegate.
 levelUpCallback(s,r);
 emit(r,'StatManager.Fill_Update');emit(r,'UpgradeEffect');emit(r,'Sound.Virtual1448');emit(r,'MiniQuestManager.MiniQuest_Update',11);
 emit(r,'UsefulManager.AdjustEventLevel',word(s.level));emit(r,'TryCallKinesisLog',0,0);
 const actions=need(s,'levelEvents'),key=String(word(s.level));
 if(Object.hasOwn(actions,key)&&actions[key]!==null)emit(r,'LevelEvent.Invoke',word(s.level),actions[key],{level:s.level,currentExp:String(s.currentExp),maxExp:String(s.maxExp),userStatPoint:s.userStatPoint,levelUpCount:s.levelUpCount});
 const level=word(s.level);
 if(level===150){if(need(need(s,'contentsOpen'),'Skin'))tutorial(s,r,1,'skin');return;}
 if(level===200){tutorial(s,r,1,'level200');return;}
 if(level===220){tutorial(s,r,3,'plaza');emit(r,'ContentsOpenManager.ContentsOpenCheck_Plaza');emit(r,'External.0x6e4b24c');return;}
 if(level===245){tutorial(s,r,1,'cave');emit(r,'ContentsOpenManager.ContentsOpenCheck_Cave');emit(r,'Reddot.Notify',2,true);return;}
 if(level===250){tutorial(s,r,1,'slayerClass');emit(r,'SlayerClassManager.SlayerClass_OpenCheck');return;}
 if(level===265){tutorial(s,r,1,'dragonForce');emit(r,'StatManager.DragonForce_OpenCheck');emit(r,'ContentsOpenManager.ContentsOpenCheck_PunchMachine');emit(r,'Reddot.Notify',1,true);return;}
 if(level===280){if(need(need(s,'contentsOpen'),'RankingBattle')){tutorial(s,r,1,'rankingBattle');emit(r,'ContentsOpenManager.ContentsOpenCheck_RankingBattle');emit(r,'Reddot.Notify',4,true);}return;}
 if(level===400){if(need(need(s,'contentsOpen'),'Training')){tutorial(s,r,1,'training');emit(r,'TrainingManager.Training_OpenCheck');}return;}
 if(level===500)emit(r,'SkillManager.SkillDeck_AddCheck');
}
