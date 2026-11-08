/** Stronger linked baseline: api255's response gate determines whether the
 * ServerPrefs callback is invoked. Explicit queue-dispatch/RPC/Task fixtures.
 */
import {createSync,action as prefsAction} from './recovered-prefs-sync.mjs';
import {isValidCode} from './recovered-api-control.mjs';
export function createClientSync(f){return {...createSync(f),queue:[],responseMachine:null};}
export function action(s,f,a){
 let effects=[];
 const finishResponse=()=>{
  if(isValidCode(f.code,{alarmPresent:true,authPresent:true,emit:e=>effects.push(e)})){
   s.lastCallback.success=true;s.lastCallback.signal=true;
  }
  s.responseMachine={state:-2,resultPresent:true};
 };
 if(a.type==='start'){
  const result=prefsAction(s,f,a);
  for(const e of result.effects){
   if(e.name==='SetClientData'){
    s.queue.push({api:255,content:e.args[0],direct:f.directShow});
    effects.push({name:'AcquireItems',args:[]},{name:'Queue.Enqueue',args:[255,e.args[0]]});
   }else effects.push(e);
  }
 }else if(a.type==='dispatch'){
  effects.push({name:'RPC.Send',args:[s.queue[0].content]});
  if(f.rpcPending){s.responseMachine={state:0,resultPresent:false};effects.push({name:'SetClientData.Suspend',args:[]});}
  else finishResponse();
 }else if(a.type==='rpcComplete')finishResponse();
 else if(a.type==='frame'||a.type==='edit')effects=prefsAction(s,f,a).effects;
 else throw new Error('Unknown analysis action');
 return {store:s.store,machine:s.machine,lastCallback:s.lastCallback,wait:s.wait,requests:s.requests,effects,queue:s.queue,responseMachine:s.responseMachine};
}
