#!/usr/bin/env python3
"""Nine equipment calculation/renew bodies under declared input models."""
from pathlib import Path
import argparse,copy,json,random
from equipment_vm import Program,EquipmentVM,bits,number,signed
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args();root=Path(a.out);src=Path(a.source)
P=Program(src,[root/'research/equipment-stats',root.parent/'logic-step7/research/equipment'])
ranges=[(0x4e9bea8,0x4e9cfa8),(0x4e9af74,0x4e9b0a8)]
P.instructions={pc:op for pc,op in P.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)}
base_rows=json.loads((src/'table-json/EquipmentBaseData.json').read_text());level_rows={r['Level']:r for r in json.loads((src/'table-json/EquipmentInfoBaseData.json').read_text())};awake_rows=json.loads((src/'table-json/AwakeningWeaponBaseData.json').read_text())
base={'awakeningWeapon':0,'equipment':{str(r['Id']):{'Level':0,'Value':str(r['InitValue']),'Price':r['InitPrice'],'Lock':r['Lock'],'HavePower_CriticalValue':r['HavePower_CriticalValue'],'HavePower_GoldAmountValue':r['HavePower_GoldAmountValue']} for r in base_rows},'awakening':{str(r['Id']):{'Value':str(r['InitValue']),'HavePower_CriticalValue':r['HavePower_CriticalValue'],'HavePower_GoldAmountValue':r['HavePower_GoldAmountValue']} for r in awake_rows},'levels':{},'owned':{kind:{'total':100,'values':{'0':1,'24':2}} for kind in ['atk','critical','gold']},'args':{'index':0,'level':0,'grade':0,'renewIndex':0,'renewValue':3}}
rng=random.Random(705_8);fixtures=[]
for case in range(96):
 f=copy.deepcopy(base);f['awakeningWeapon']=rng.choice([0,1,2,30]);f['args']={'index':rng.choice([0,7,8,20,23,24]),'level':rng.choice([0,1,149,150,199,200,1699,1700]),'grade':rng.choice([0,1,30]),'renewIndex':rng.choice([0,24]),'renewValue':rng.choice([0,.1,1/3,1e18,-1e18])}
 f['equipment']['24']['Level']=rng.choice([0,1,149,150,199,200,1699,1700])
 for level in {f['args']['level'],f['equipment']['24']['Level']}:f['levels'][str(level)]={'Value':str(level_rows[level]['Value']),'Price':str(level_rows[level]['Price'])}
 for kind in ['atk','critical','gold']:
  f['owned'][kind]={'total':rng.choice([0,.1,1/3,1e18,-1e18]),'values':{str(i):rng.choice([0,.1,1/3,1e18,-1e18]) for i in [0,24]}}
 if case>=80:
  f['equipment'][str(f['args']['index'])]['HavePower_CriticalValue']=rng.choice(['nan','inf','-inf',-.01])
  f['args']['renewValue']=rng.choice(['nan','inf','-inf',-0.0])
 fixtures.append(f)
# Actual table rows at each awakened grade and each weapon slot.
for index,grade in [(i,0) for i in range(25)]+[(24,g) for g in range(1,31)]:
 f=copy.deepcopy(base);f['awakeningWeapon']=grade;f['args'].update(index=index,level=200,grade=grade);f['equipment']['24']['Level']=200;f['levels']={'0':{'Value':'100000','Price':'1837'},'200':{'Value':str(level_rows[200]['Value']),'Price':str(level_rows[200]['Price'])}};fixtures.append(f)
entries=[('atkValue',0x4e9bea8),('havePowerCritical',0x4e9c0c4),('havePowerGold',0x4e9c2ec),('atkValueAwakening',0x4e9c8d4),('havePowerCriticalAwakening',0x4e9cb10),('havePowerGoldAwakening',0x4e9cd5c),('renew_atk',0x4e9c514),('renew_critical',0x4e9c654),('renew_gold',0x4e9c794)]
vectors=[];steps=0;visited=set()
for case,f in enumerate(fixtures):
 for method,entry in entries:
  v=EquipmentVM(P,f);args=f['args']
  if method.startswith('renew_'):
   kind=method[6:];v.put('w1',args['renewIndex']);v.setfp('d0' if kind=='atk' else 's0',number(args['renewValue']))
  elif method.endswith('Awakening'):v.put('w1',args['grade'])
  else:v.put('w1',args['index']);v.put('w2',args['level'])
  steps+=v.run(entry,this_ptr=v.this);visited.update(v.visited)
  result=v.owned_result(kind) if method.startswith('renew_') else str(signed(v.reg('x0'),64)) if method in ['atkValue','atkValueAwakening'] else bits(v.fp('s0'),'s')
  vectors.append({'case':case,'method':method,'fixture':f,'expected':result})
report={'cases':len(vectors),'snapshots':len(fixtures),'entries':len(entries),'instruction_steps':steps,'distinct_instructions':len(visited),'scope':'Nine native equipment scalar/renew bodies plus EquipmentValue. Original table samples and synthetic edge fixtures; decrypted wrappers, initialized managers and collection lookup/get/set explicitly modeled. No Unity, online IFix, full account or backend parity.'}
(root/'equipment-stat-native-flow-vectors.json').write_text(json.dumps(vectors,indent=2,allow_nan=False)+'\n');(root/'equipment-stat-native-flow-report.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
