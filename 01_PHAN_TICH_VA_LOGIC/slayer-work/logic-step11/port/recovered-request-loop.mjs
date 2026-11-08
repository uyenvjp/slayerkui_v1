/** RequestLoop's normal/await branches under explicit transport/task fixtures.
 * A code != 1 is still a completed response here. RPC exceptions are outside
 * this port's scope; no offline server behavior is invented.
 */
import {isValidCode} from './recovered-api-control.mjs';
export function createLoop(f){return {api:structuredClone(f.state),machine:{state:-1,current:null},queue:f.items.map(x=>x.id),records:Object.fromEntries(f.items.map(x=>[x.id,structuredClone(x)])),packets:Object.fromEntries(f.items.map(x=>[x.id,x.packetSequence])),invocations:[]};}
const requireObject=x=>{if(!x)throw new TypeError('Native NullReference');};
const seq=x=>BigInt.asIntN(64,BigInt(x)).toString();
function consume(s,r){
 const item=s.records[s.machine.current];requireObject(item.responsePresent);
 if((item.code|0)===17)r.emit('Post_DataLog','code-17',item.api,seq(s.api.currentSequence));
 s.api.currentSequence=seq(item.responseSequence);requireObject(r.f.logBuilderPresent);r.emit('MarkUserPropertiesDirty');
 const id=s.queue.shift();r.emit('Queue.Dequeue',id);s.api.failCount=0;s.api.retryCount=0;s.machine.current=null;
}
function loop(s,r){
 while(true){
  if(s.queue.length===0){
   if(r.f.alarmPresent)r.emit('LoadingUI_Delay_ON',false,0.5);
   s.api.processingRaw=false;r.emit('NextFrame');s.machine.state=0;r.emit('Loop.Suspend','frame');return;
  }
  s.api.processingRaw=true;s.machine.current=s.queue[0];const item=s.records[s.machine.current];requireObject(r.f.alarmPresent);
  r.emit('LoadingUI_Delay_ON',true,item.direct||s.queue.length>5?0:2);
  if(s.api.kickOut){s.machine.state=-2;r.emit('Loop.Complete');return;}
  requireObject(item.packetPresent);s.packets[item.id]=seq(s.api.currentSequence);r.emit('Request.Sequence',item.id,s.packets[item.id]);
  requireObject(r.f.logBuilderPresent);r.emit('MarkUserPropertiesDirty');requireObject(item.delegatePresent);
  s.invocations.push({id:item.id,sequence:s.packets[item.id]});r.emit('Request.Invoke',item.id,s.packets[item.id]);
  if(item.pending){s.machine.state=1;r.emit('Loop.Suspend','request');return;}
  consume(s,r);
 }
}
export function action(s,f,a){
 const effects=[],r={f,emit:(name,...args)=>effects.push({name,args})};let error;
 try{
  if(a.type==='start')loop(s,r);
  else if(a.type==='retryDisposition'){
   s.machine.current=s.queue[0];
   if((s.api.retryCount|0)<6){
    s.api.retryCount=(s.api.retryCount+1)|0;r.emit('Delay',2000,false,8);
    if(f.delayPending){s.machine.state=2;r.emit('Loop.Suspend','delay');}
    else{s.machine.current=null;loop(s,r);}
   }else{
    const code=(s.api.failCount|0)<3?17:4;
    s.api.failCount=code===17?(s.api.failCount+1)|0:0;s.api.retryCount=0;
    isValidCode(code,{alarmPresent:f.alarmPresent,authPresent:f.authPresent,emit:e=>effects.push(e)});
    s.machine.state=-2;r.emit('Loop.Complete');
   }
  }
  else if(a.type==='delay'){s.machine.state=-1;s.machine.current=null;loop(s,r);}
  else if(a.type==='frame'){s.machine.state=-1;loop(s,r);}
  else if(a.type==='complete'){s.machine.state=-1;consume(s,r);loop(s,r);}
  else if(a.type==='kick')s.api.kickOut=!!a.value;
  else if(a.type==='enqueue'){s.records[a.item.id]=structuredClone(a.item);s.queue.push(a.item.id);s.packets[a.item.id]=a.item.packetSequence;}
  else throw new Error('Unknown analysis action');
 }catch(e){if(e.message!=='Native NullReference')throw e;error=e.message;}
 return {api:{...s.api,queueCount:s.queue.length},machine:s.machine,queue:s.queue,packets:s.packets,invocations:s.invocations,effects,...(error?{error}:{})};
}
