#!/usr/bin/env python3
"""Read-only verification of serialized boss component defaults from original XAPK.
No runtime claims and no metadata decryption. Usage:
python xuat_default_boss.py <game.xapk> <folder-output>
"""
import io,json,sys,zipfile
from pathlib import Path
from parse_unityfs import parse_unityfs
from catalog_unity import serialized_bundle_head
from read_serial_values import serialized_type_table,read_one

SELECT={28:'WorldDemonBoss',42:'WorldRagnabloodBoss',54:'WorldDarkBoss',60:'WorldBlackBoss',72:'WorldInfinentBoss',76:'EnemyNormalInfinent',82:'WorldBlueBoss',89:'WorldEtherBoss'}
FIELDS=['characterType','state','atkSpeed','miss','accuracy','dmgReduce','MonsterType',
        'AttackRange','SpecialAttack_Cooltime','SpecialAttack_Prob',
        'AttackPossible','isDead','ShieldState','SkillAttackCount','SkillBanListIndex']

def run(xapk,out):
    with zipfile.ZipFile(xapk) as z:
        with zipfile.ZipFile(io.BytesIO(z.read('monster.apk'))) as apk:
            payload=apk.read('assets/assetpack/monster')
    block=serialized_bundle_head(payload,parse_unityfs(payload))
    types,objects,base=serialized_type_table(block)
    results=[]
    for tid,klass in SELECT.items():
        subset=[obj for obj in objects if obj[3]==tid]
        for pid,off,size,idx in subset:
            bio=io.BytesIO(block[base+off:base+off+size])
            data=read_one(bio,types[tid][1])
            if bio.tell()!=size:
                raise ValueError(f'Declared size mismatch in {klass}, pathid {pid}: {bio.tell()} vs {size}')
            results.append({'bundle':'monster','class_name':klass,'type_index':tid,'type_hash':types[tid][2],
                            'path_id':str(pid),'object_offset':off,'declared_size':size,
                            'consumed_size':bio.tell(),
                            'serialized_values':{k:data[k] for k in FIELDS if k in data},
                            'interpretation':'Serialized default; runtime value and attack behavior NOT verified'})
    output=Path(out)/'Boss_va_Enemy_Serialized_Defaults.json'
    output.write_text(json.dumps(results,ensure_ascii=False,indent=2),encoding='utf-8')
    for item in results:
        print(item['class_name'],'cooldown=',item['serialized_values'].get('SpecialAttack_Cooltime'),
              'verified bytes=',item['consumed_size'],'/',item['declared_size'])
    print('output:',output)

if __name__=='__main__':
    run(sys.argv[1],sys.argv[2])
