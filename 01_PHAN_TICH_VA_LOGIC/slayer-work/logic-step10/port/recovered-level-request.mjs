/** APIManager.LevelUp -> AddRequest -> RequestData.Create selected path.
 * AcquireItems, allocation/delegate lifetime and queue storage are modeled
 * dependencies. No request is sent; original shared UserExp identity is kept.
 */
import {i32} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step8/port/recovered-equipment-stats.mjs';
import {getSyncExp} from './recovered-experience-data.mjs';
export function queueLevelUp(level,userExp,context,runtime){
 const api=13;level=Number(i32(level));runtime.emit({name:'APIManager.AcquireItems',args:[]});
 const directShow=!!need(context,'directShowLevelUp');runtime.emit({name:'DirectShowLoadingTargetSet.Contains',args:[api,directShow]});
 const request={api,level,exp:userExp,directShow};need(context,'requests').push(request);
 runtime.emit({name:'Queue.Enqueue',args:[api,level,userExp===null?null:{value:need(userExp,'value'),totalValue:need(userExp,'totalValue')},directShow]});
}
export function queueSyncLevelUp(state,context,runtime){queueLevelUp(need(state,'level'),getSyncExp(state,runtime),context,runtime);}
export function requestQueueState(state,context){return need(context,'requests').map(q=>({api:q.api,level:q.level,exp:q.exp===null?null:{value:q.exp.value,totalValue:q.exp.totalValue},sameSync:q.exp===need(state,'syncExp'),directShow:q.directShow}));}
