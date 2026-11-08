#!/usr/bin/env python3
"""Recreate selected step-5 source evidence from step-3 decoded output."""
from pathlib import Path
import argparse,csv,hashlib,json,os,re,sys
p=argparse.ArgumentParser();p.add_argument('--source',required=True);p.add_argument('--out',required=True);a=p.parse_args()
root=Path(a.source).resolve();out=Path(a.out).resolve();(out/'asm').mkdir(parents=True,exist_ok=True);(out/'data').mkdir(exist_ok=True)
assert hashlib.sha256((root/'libil2cpp.so').read_bytes()).hexdigest()=='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
os.environ['SLAYER_LOGIC_DIR']=str(root);sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-full'/'tools'))
from native_analysis import asm
with (root/'all-method-map.csv').open(encoding='utf-8-sig') as f:all_rows=list(csv.DictReader(f))
addresses=sorted({int(r['native_va'],16) for r in all_rows if int(r['native_va'],16)});ends=dict(zip(addresses,addresses[1:]));labels={}
for r in all_rows:labels.setdefault(r['native_va'],[]).append(r['declaring_type_full_name']+'::'+r['name'])
player={'get_HpBase','get_HpAccessory','get_HpAdd','get_HpClass','get_HealBase','get_HealAdd','get_AbnormalSkillValue','CalculateSkillDmg','CalculateSkillDmg_PresetBattle','IsElementDmgType','GetSeasonSkillDmgBuff','Atk_Cal_PresetBattle','Hp_Cal_PresetBattle'}
selected=[]
for old in (out/'asm').glob('*.asm'):old.unlink()
for r in all_rows:
    c,n=r['declaring_type_full_name'],r['name']
    take=c=='PlayerBase' and (n in player or n.startswith(('get_Atk','get_Critical','get_SuperCritical')))
    take|=c=='SkillData' and n in ['Atk_Cal','MasteryDmgFactor','Player_SkillDmg_Cal','get_MasteryLevel']
    take|=c=='GuildManager_Quest_FieldEffect' and n in ['ApplyActiveSkillDamageBuff','ApplySkillValue']
    take|=c=='WorldBossManager_Battle_FieldEffect' and n=='ApplyActiveSkillDamagePenalty'
    take|=c=='PresetBattleStat' and n=='GetElementDmg'
    take|=c=='PresetBattle_SkillMastery' and n=='IsAncientAwakenSkill'
    take|=c=='DragonValleyManager' and n=='get_IsDragonValleyBattleMode'
    if not take or not int(r['native_va'],16):continue
    va=int(r['native_va'],16);end=ends[va];code=asm(va,end-va)
    code=re.sub(r'-> (0x[0-9a-f]+)',lambda m:m[0]+' '+', '.join(labels.get(m[1],[])),code)
    r={**r,'end_va':hex(end),'asm_file':'asm/'+c+'__'+n+'_'+r['token']+'.asm'}
    (out/r['asm_file']).write_text(code+'\n');selected.append(r)
(out/'selected-methods.json').write_text(json.dumps(selected,ensure_ascii=False,indent=2)+'\n')
tables=['SkillMasteryAttackSkillFactorData']
for name in tables:(out/'data'/(name+'.json')).write_bytes((root/'table-json'/(name+'.json')).read_bytes())
print(json.dumps({'methods':len(selected),'native_bytes':sum(int(r['end_va'],16)-int(r['native_va'],16) for r in selected)}))
