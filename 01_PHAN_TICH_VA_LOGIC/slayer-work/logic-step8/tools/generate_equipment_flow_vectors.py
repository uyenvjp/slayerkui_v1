#!/usr/bin/env python3
"""Connected upgrade bodies and resumed coroutine phases, no game execution."""
from pathlib import Path
import argparse,copy,json,random
from equipment_flow_vm import NativeCurrencyEquipmentFlowVM as EquipmentFlowVM
from equipment_vm import Program,float_json
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out);src=Path(a.source)
P=Program(src,[root/'research/equipment-stats',root/'research/upgrade-hold',root/'research/upgrade-delay',root/'research/upgrade-sync',root/'research/currency-data',root/'research/currency-db',root.parent/'logic-step7/research/equipment',root.parent/'logic-step7/research/equipment-upgrade',root.parent/'logic-step7/research/equipment-batch'])
ranges=[(0x4e9af74,0x4e9cfa8),(0x4e98704,0x4e98838),(0x4e996b4,0x4e99798),(0x4e9d270,0x4e9d8d4),(0x4e9db80,0x4e9dcac),(0x4ea3ebc,0x4ea3f78),(0x4ea3fc4,0x4ea4114),(0x4d40850,0x4d40910),(0x4d462a0,0x4d4644c),(0x501b168,0x501b26c),(0x501b5f4,0x501b6c0),(0x501ba70,0x501bb38),(0x501bda4,0x501be74)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
base_rows=json.loads((src/'table-json/EquipmentBaseData.json').read_text());level_rows={r['Level']:r for r in json.loads((src/'table-json/EquipmentInfoBaseData.json').read_text())};awake_rows=json.loads((src/'table-json/AwakeningWeaponBaseData.json').read_text())
base={'awakeningWeapon':0,'equipment':{str(r['Id']):{'Level':0,'Value':str(r['InitValue']),'Price':r['InitPrice'],'Lock':r['Lock'],'HavePower_CriticalValue':r['HavePower_CriticalValue'],'HavePower_GoldAmountValue':r['HavePower_GoldAmountValue']} for r in base_rows},'awakening':{str(r['Id']):{'Value':str(r['InitValue']),'HavePower_CriticalValue':r['HavePower_CriticalValue'],'HavePower_GoldAmountValue':r['HavePower_GoldAmountValue']} for r in awake_rows},'levels':{},'owned':{kind:{'total':100,'values':{str(i):1 for i in range(25)}} for kind in ['atk','critical','gold']},'manager':{'currentIndex':0,'currentValue':'100','currentPrice':'1','countValueCheck':0,'hCount':0,'upgradeCount':0,'delayBusy':False,'isHolding':True},'db':{'upgradeCube':'1000000000000000000','equipmentUpgradeCount':'0','equippedIndex':0,'equipmentAtk':'100'},'iterator':{'state':0,'current':None}}
def prepare(f):
 f.setdefault('currencyEventPresent',False);f.setdefault('eventShopCurrency',200);f['db'].setdefault('currencyTotalGet','1000000000000000000');f['db'].setdefault('currencyTotalUsed','0')
 for item in f['equipment'].values():
  for level in range(item['Level'],min(1700,item['Level']+4)+1):f['levels'][str(level)]={'Value':str(level_rows[level]['Value']),'Price':str(level_rows[level]['Price'])}
 return f
rng=random.Random(705_81);fixtures=[]
for case in range(72):
 f=copy.deepcopy(base);index=rng.choice([0,8,20,24]);grade=rng.choice([0,1,30]);cap=200+grade*50
 level=rng.choice([0,1,149,150,cap-1,cap]);f['awakeningWeapon']=grade;f['equipment'][str(index)]['Level']=level;f['equipment'][str(index)]['Lock']=case%11==0
 f['manager'].update(currentIndex=index,currentValue=str(rng.choice([0,1,10**17,-10**17])),currentPrice=str(rng.choice([0,1,999,1000,10**15])),countValueCheck=rng.choice([0,2147483647]),hCount=case%7,upgradeCount=rng.choice([0,1,5]),isHolding=case%3!=0,delayBusy=case%2==0)
 f['db'].update(upgradeCube=str(rng.choice([0,1,1000,10**18])),equippedIndex=index if case%2 else (index+1)%25,equipmentUpgradeCount=str(rng.choice([0,1,9223372036854775807])))
 for kind in ['atk','critical','gold']:f['owned'][kind]['total']=rng.choice([0,.1,1/3,1e18]);f['owned'][kind]['values'][str(index)]=rng.choice([0,.1,1/3,1e18])
 f['iterator']={'state':rng.choice([0,1,2,-1,3]),'current':None if case%2 else 'old'};fixtures.append(prepare(f))
 f['currencyEventPresent']=case%4==0;f['eventShopCurrency']=6 if case%5==0 else 200
entries=[('levelValueSetting',0x4e9b1e0),('upgradeFunc',0x4e9d270),('upgradeStatApply',0x4e9db80),('upgradeHoldStep',0x4ea3fc4),('upgradeDelayStep',0x4ea3ebc)]
vectors=[];steps=0;visited=set()
def run(f,method,entry,apply=True):
 global steps
 v=EquipmentFlowVM(P,f)
 if method=='levelValueSetting':v.put('x1',v.items[f['manager']['currentIndex']]);v.put('w2',int(apply))
 target=v.iterator if method in ['upgradeHoldStep','upgradeDelayStep'] else v.this
 steps+=v.run(entry,this_ptr=target);visited.update(v.visited)
 result={'state':v.state_result(),'effects':v.effects}
 if method in ['upgradeHoldStep','upgradeDelayStep']:result.update(v.iterator_result())
 return result
for case,f in enumerate(fixtures):
 for method,entry in entries:
  result=run(f,method,entry,case%2==0);vectors.append({'case':case,'method':method,'applyHavePower':case%2==0,'fixture':f,'expected':result})
 # ApplyEquipment itself has no max/lock gate; use a legal caller state for
 # this corpus so native preview/table accesses remain inside original rows.
 if f['equipment'][str(f['manager']['currentIndex'])]['Level']<200+f['awakeningWeapon']*50:
  v=EquipmentFlowVM(P,f);v.put('x1',v.items[f['manager']['currentIndex']]);steps+=v.run(0x4e9d64c,this_ptr=v.this);visited.update(v.visited)
  vectors.append({'case':case,'method':'applyEquipment','fixture':f,'expected':{'state':v.state_result(),'effects':v.effects}})
# Cap reached on the second upgrade: request flush occurs inside Level_Value_Setting.
sequences=[]
for index,level,actions in [(0,198,['hold','hold','hold']),(24,10,['hold','hold','pointerUp','hold']),(8,10,['delay','delay'])]:
 f=copy.deepcopy(base);f['equipment'][str(index)].update(Level=level,Lock=False);f['manager'].update(currentIndex=index,currentPrice='1');f['db']['equippedIndex']=index;prepare(f);v=EquipmentFlowVM(P,f);frames=[]
 for action in actions:
  v.put('x30',v.RETURN);v.effects=[]
  entry=0x4e996b4 if action=='pointerUp' else 0x4ea3ebc if action=='delay' else 0x4ea3fc4
  steps+=v.run(entry,this_ptr=v.this if action=='pointerUp' else v.iterator);visited.update(v.visited)
  result={'state':v.state_result(),'effects':v.effects}
  if action!='pointerUp':result.update(v.iterator_result())
  frames.append({'action':action,'expected':result})
 sequences.append({'fixture':f,'frames':frames})
report={'cases':len(vectors),'snapshots':len(fixtures),'connected_sequences':len(sequences),'sequence_actions':sum(len(x['frames']) for x in sequences),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Connected upgrade/state/iterator bodies with original native DatabaseManager.UseCurrency/get_UpgradeCube and CurrencyData.Get/Use/getters plus stat/math helpers. Secure wrappers, collections, currency callback observer, event shop selector, UI/formatting, telemetry/quest/audio, Player.Atk_Cal and API sinks are explicitly modeled; not Unity/live IFix/backend parity.'}
(root/'equipment-flow-native-vectors.json').write_text(json.dumps({'vectors':vectors,'sequences':sequences},indent=2,allow_nan=False)+'\n');(root/'equipment-flow-native-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
