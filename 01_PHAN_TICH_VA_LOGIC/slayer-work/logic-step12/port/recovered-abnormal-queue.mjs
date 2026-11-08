/** Abnormal hit scheduling/iterator. Executor and Unity scheduler are explicit
 * dependencies; crit flags are snapshots of Player getters when enqueued.
 */
const f32=Math.fround;
export const WAIT_THRESHOLD=f32(0.1);
const bits=n=>{const b=new ArrayBuffer(4);new DataView(b).setFloat32(0,n,true);return [...new Uint8Array(b)].map(x=>x.toString(16).padStart(2,'0')).join('');};
export function createQueue(f){return {fixture:structuredClone(f),queue:[...f.queue],handlePresent:f.handlePresent,iterator:{state:f.iterator.state,wait:f32(Number(f.iterator.wait)),currentNull:true}};}
export function action(s,a){
 const effects=[],emit=(name,...args)=>effects.push({name,args});let yielded;
 const {fixture:f,iterator:i}=s;
 if(a.type==='schedule'){
  const packed=(f.critical&1)|((f.superCritical&1)<<8);s.queue.push(packed);emit('Queue.Enqueue',!!(packed&1),!!((packed>>8)&1));
  if(!s.handlePresent&&f.active){s.iterator={state:0,wait:0,currentNull:true};s.handlePresent=true;emit('StartCoroutine');}
 }else if(a.type==='set')Object.assign(f,a.values);
 else if(a.type==='tick'){
  if(i.state!==0&&i.state!==1)yielded=false;
  else{
   const resume=i.state===1;i.state=-1;
   if(resume&&!(i.wait<WAIT_THRESHOLD)){
    if(f.dead||!f.active){s.queue.length=0;emit('Queue.Clear');}
    else if(s.queue.length>0){const packed=s.queue.shift();emit('Queue.Dequeue',!!(packed&1),!!((packed>>8)&1));emit('ExecuteAbnormalAddDamage',!!(packed&1),!!((packed>>8)&1));}
    if(s.queue.length===0){s.handlePresent=false;yielded=false;}
    else{i.wait=0;i.wait=f32(i.wait+f32(Number(f.delta)));i.currentNull=true;i.state=1;yielded=true;}
   }else if(!resume&&s.queue.length===0){s.handlePresent=false;yielded=false;}
   else{i.wait=f32((resume?i.wait:0)+f32(Number(f.delta)));i.currentNull=true;i.state=1;yielded=true;}
  }
 }else throw new Error('Unknown analysis action');
 return {queue:s.queue,handlePresent:s.handlePresent,iterator:{state:s.iterator.state,waitBits:bits(s.iterator.wait),currentNull:s.iterator.currentNull},effects,...(yielded===undefined?{}:{yielded})};
}
