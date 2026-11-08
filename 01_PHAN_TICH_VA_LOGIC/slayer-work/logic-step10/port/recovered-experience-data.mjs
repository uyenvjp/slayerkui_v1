/** DatabaseManager unpatched EXP getters and synchronization bodies.
 * Raw decrypted account fields are mandatory; parser/wrappers remain explicit.
 * No account defaults, backend response or replacement game logic is created.
 */
import {f32,i32} from '../../logic-step4/port/recovered-combat.mjs';
import {need} from '../../logic-step8/port/recovered-equipment-stats.mjs';
const word=x=>Number(i32(x)),F=(db,key)=>f32(need(db,key)),I=(db,key)=>word(need(db,key));
export function float32Key(value){if(Number.isNaN(value))return 'nan';const b=new DataView(new ArrayBuffer(4));b.setFloat32(0,value,true);return [...new Uint8Array(b.buffer)].map(x=>x.toString(16).padStart(2,'0')).join('');}
export function calculateExpAdd(db,onWrite=()=>{}){
 const write=value=>{db.expAdd=f32(value);onWrite(db.expAdd);};
 let value=f32(word(I(db,'PlayerOption_ExpAdd')+100));
 value=f32(value+F(db,'FriendOption_ExpAdd'));value=f32(value+F(db,'Accessory_HavePower_Exp'));
 value=f32(value+f32(I(db,'SkinOption_ExpAdd')));value=f32(value+f32(I(db,'SkillMasteryOption_ExpAdd')));write(value);
 const spirit=Number(need(db,'Spirit_ExpAdd'));
 if(spirit>0)write(f32(f32(db.expAdd*f32(f32(spirit)+f32(100)))/f32(100)));
 let factor=f32(F(db,'FriendPassive_ExpAdd')+f32(100));
 factor=f32(factor+f32(I(db,'ImmortalTreeSubNodeOption_TotalExpAdd')));factor=f32(factor+f32(I(db,'StarNodeOption_TotalExpAdd')));
 write(f32(f32(db.expAdd*factor)/f32(100)));
 factor=f32(word(word(I(db,'ImmortalTreeSubNodeOption_ExpAdd')+I(db,'StarNodeOption_ExpAdd'))+100));
 write(f32(f32(db.expAdd*factor)/f32(100)));
 factor=f32(word(I(db,'ThemeDungeonBuff_ExpAdd')+100));write(f32(f32(db.expAdd*factor)/f32(100)));
 return db.expAdd;
}
export function setExpAdd(db,value,onWrite=()=>{}){db.expAdd=f32(value);onWrite(db.expAdd);}
export function spiritExpAddCal(db){
 const values=need(db,'SpiritAbility_ExpAdd');if(values===null)throw new TypeError('Native null SpiritAbility_ExpAdd');
 if(!Array.isArray(values))throw new TypeError('Unrecovered double array input');
 let sum=0;for(const value of values)sum+=Number(value);return sum;
}
export function getSyncExp(db,runtime){
 const target=need(db,'syncExp'),value=String(BigInt(need(db,'currentExp')));
 if(target===null)throw new TypeError('Native null syncExp');
 target.value=value;runtime.emit({name:'SyncExp.Value.Write',args:[value]});
 target.totalValue=String(BigInt(need(db,'totalExp')));runtime.emit({name:'SyncExp.TotalValue.Write',args:[target.totalValue]});
 return target;
}
export function expSync(db,remote,runtime){
 if(remote===null)throw new TypeError('Native null remote UserExp');
 const parse=need(runtime,'parseBigInteger');db.currentExp=parse(need(remote,'value'));runtime.emit({name:'CurrentExp.Write',args:[String(db.currentExp)]});
 db.totalExp=parse(need(remote,'totalValue'));runtime.emit({name:'TotalExp.Write',args:[String(db.totalExp)]});
}
