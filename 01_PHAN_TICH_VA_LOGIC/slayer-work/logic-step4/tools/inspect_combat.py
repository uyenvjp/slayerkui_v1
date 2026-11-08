#!/usr/bin/env python3
"""Static ARM64 disassembly only; never loads or executes the game's library."""
from pathlib import Path
import argparse, csv, hashlib, json, os, re, sys

p=argparse.ArgumentParser(); p.add_argument('--source', required=True); p.add_argument('--out', required=True); a=p.parse_args()
root=Path(a.source).resolve(); out=Path(a.out).resolve(); (out/'asm').mkdir(parents=True,exist_ok=True)
assert hashlib.sha256((root/'libil2cpp.so').read_bytes()).hexdigest()=='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
os.environ['SLAYER_LOGIC_DIR']=str(root)
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-full'/'tools'))
from native_analysis import asm
with (root/'all-method-map.csv').open(encoding='utf-8-sig') as f: rows=list(csv.DictReader(f))
addresses=sorted({int(r['native_va'],16) for r in rows if int(r['native_va'],16)})
following=dict(zip(addresses,addresses[1:]))
labels={}
for r in rows:
    labels.setdefault(r['native_va'],[]).append(r['declaring_type_full_name']+'::'+r['name'])
selected=[]
for r in rows:
    c=r['declaring_type_full_name']; n=r['name']
    take=(c=='EnemyBase' and (n.endswith('_Cal') or n in ['GetDmg','GetDmg_PresetBattle','GetPercentTrueDamage','DmgResult','DotDmgResult','DmgStackEvent','ExecuteAbnormalAddDamage','HighHpCheck','LowHpCheck','NormalEnemyHpDecrease','NormalEnemyInstantKill','get_IsBurning']))
    take|=c=='PlayerBase' and (n in ['Atk_Cal','Hp_Cal'] or n.startswith(('get_Atk','get_Critical','get_SuperCritical')))
    take|=c=='SkillData' and n in ['Atk_Cal','AttackCountSetting','MasteryDmgFactor']
    take|=c=='UsefulManager' and n=='MissProbability'
    if not take or not int(r['native_va'],16): continue
    va=int(r['native_va'],16); end=following[va]
    code=asm(va,end-va)
    code=re.sub(r'-> (0x[0-9a-f]+)',lambda m:m[0]+' '+', '.join(labels.get(m[1],[])),code)
    file=f"{c}__{n}_{r['token']}.asm"
    (out/'asm'/file).write_text(code+'\n')
    selected.append({**r,'end_va':hex(end),'native_bytes':end-va,'asm_file':'asm/'+file})
(out/'combat-methods.json').write_text(json.dumps(selected,indent=2,ensure_ascii=False)+'\n')
print(json.dumps({'methods':len(selected),'native_bytes':sum(r['native_bytes'] for r in selected),'output':str(out)}))
