import {createFullDamage,stepFullDamage} from './recovered-full-damage.mjs';
const f32=Math.fround,bits=x=>{const b=new ArrayBuffer(4);new DataView(b).setFloat32(0,x,true);return [...new Uint8Array(b)].map(x=>x.toString(16).padStart(2,'0')).join('');};
export function runStageDeath(f){
 const s=createFullDamage(f);s.game={waveCount:f.game.waveCount|0,endPositionBits:f.game.endPosition.map(bits),enemiesRemaining:f.game.listPresent?1+f.game.otherEnemies:null,enemyActive:true};
 s.applyGameDeath=(f,e,emit)=>{
  if(!f.game.listPresent)throw new TypeError('Native NullReference');
  s.game.enemiesRemaining--;emit('EnemyList.Remove',true);s.game.enemyActive=false;emit('Enemy.SetActive',false);
  if(s.game.enemiesRemaining>0)return;
  s.game.waveCount=(s.game.waveCount+1)|0;
  if(s.game.waveCount<=9){emit('Start_MakeEnemy_Stage');emit('StageBar_Update');}
  else if(s.game.waveCount===10){emit('MakeEnemy_RewardBox',...f.game.endPosition.map((x,n)=>f32(f32(x)+f32(f32(f.game.rightVector[n])*35))));emit('StageBar_Update');}
  else{emit('Stage_RestartIE');emit('Game.StartCoroutine');}
 };
 return {...stepFullDamage(s),game:s.game};
}
