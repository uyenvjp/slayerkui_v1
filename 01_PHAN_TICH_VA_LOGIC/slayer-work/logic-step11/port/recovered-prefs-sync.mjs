/** Analysis state machine. Original bodies' normal branches with explicit
 * scheduler/RPC fixtures; not a network implementation or save format.
 */
import {resetAllDirty,setString} from './recovered-server-prefs.mjs';
export function callback(closure,response){
 if(response===null)throw new TypeError('Native NullReference');
 closure.success=(response.code|0)===1;
 if(closure.waiter===null)throw new TypeError('Native NullReference');
 closure.waiter.signal=true;
}
export function createSync(f){return {store:structuredClone(f.store),machine:{state:-1,count:0,closurePresent:false},lastCallback:null,wait:null,requests:0,pendingCallback:false};}
function finish(s,r){s.machine.state=-2;s.machine.closurePresent=false;r.emit('Sync.Complete');}
function afterWait(s,f,r){
 if(s.lastCallback.success){resetAllDirty(s);finish(s,r);return;}
 sendNext(s,f,r);
}
function beginWait(s,f,r){
 s.wait={state:-1,frames:0};
 if(s.lastCallback.signal){s.lastCallback.signal=false;s.wait.state=-2;afterWait(s,f,r);return;}
 s.wait.state=0;s.wait.frames++;r.emit('DelayFrame',1,8);r.emit('Wait.Suspend');
 s.machine.state=0;r.emit('Sync.Suspend');
}
function deliver(s,code,r){
 if(!s.pendingCallback)throw new Error('No outstanding callback fixture');
 s.pendingCallback=false;r.emit('Callback',code|0,(code|0)===1);
 s.lastCallback.success=(code|0)===1;s.lastCallback.signal=true;
}
function sendNext(s,f,r){
 const old=s.machine.count++;
 if(old>=3){finish(s,r);return;}
 const n=s.requests++;s.pendingCallback=true;r.emit('SetClientData',f.json);
 if(!f.pending[n])deliver(s,f.codes[n],r);
 beginWait(s,f,r);
}
export function action(s,f,a){
 const effects=[],r={emit:(name,...args)=>effects.push({name,args})};
 if(a.type==='start'){
  s.machine.closurePresent=true;s.machine.count=0;s.lastCallback={success:false,signal:false};sendNext(s,f,r);
 }else if(a.type==='deliver')deliver(s,a.code,r);
 else if(a.type==='frame'){
  if(s.wait===null||s.wait.state!==0)throw new Error('No wait fixture');
  s.wait.state=-1;
  if(s.lastCallback.signal){s.lastCallback.signal=false;s.wait.state=-2;s.machine.state=-1;afterWait(s,f,r);}
  else{s.wait.state=0;s.wait.frames++;r.emit('DelayFrame',1,8);r.emit('Wait.Suspend');}
 }else if(a.type==='edit')setString(s,a.key,a.text,{emit:e=>effects.push(e)});
 else throw new Error('Unknown analysis action');
 return {store:s.store,machine:s.machine,lastCallback:s.lastCallback,wait:s.wait,requests:s.requests,pendingCallback:s.pendingCallback,effects};
}
