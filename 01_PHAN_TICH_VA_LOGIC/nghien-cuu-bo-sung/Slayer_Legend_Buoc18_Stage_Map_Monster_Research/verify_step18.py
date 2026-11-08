#!/usr/bin/env python3
"""Slayer Legend 700.0.4 step 18 verifier. Read-only. Stdlib only.

Usage:
  python verify_step18.py libil2cpp.so all-method-map.csv field-map.csv \
      Slayer_Legend_Stage_3000_Dong_Verified.csv MonsterInfoBaseData_from_checkpoint.json

Inspects ARM64 instructions at exact ELF VAs and matches checkpoint data tables.
Does not run the game, patch IFix, access backend, or assign missing assets.
"""
import ast
import collections
import csv
import hashlib
import json
import struct
import sys

EXPECTED_SHA = 'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
METHODS = {
    'GameManager.Stage_Init': 0x4e425bc,
    'GameManager.Start_MakeEnemy_Stage': 0x4e479ec,
    'GameManager.MakeEnemy_Stage': 0x4e517d8,
    'GameManager.MakeEnemy_StageBoss': 0x4e51fac,
    'GameManager.get_StageMonsterIndex': 0x4e51718,
    'GameManager.set_enemyHp': 0x4e4fcf4,
    'MapManager.MapSetting_Index': 0x4ec0c88,
    'MapManager.LayerSetting': 0x4ec08bc,
    'ObjectPooler_Enemy.GetEnemy': 0x4ecb900,
    'Character.set_Hp_max': 0x50165d0,
    'Character.set_Hp_cur': 0x501668c,
    'PlayerBase.PlayerBattleStart': 0x4ef4a60,
}
FIELDS = {
    ('GameManager', 'CurrentStageInfo'): 0x208,
    ('GameManager', 'EnemyHpValue'): 0x538,
    ('DatabaseManager', 'StageCurrent'): 0x78,
    ('StageInfo', 'Index'): 0x20,
    ('StageInfo', 'monsterIndex'): 0x40,
    ('StageInfo', 'MonsterCount'): 0x48,
    ('StageInfo', 'Map'): 0x4c,
    ('StageInfo', 'Hp'): 0x58,
    ('StageInfo', 'BossHp'): 0x80,
    ('StageInfo', 'BossAtk'): 0xa8,
    ('MonsterInfo', 'Index'): 0x10,
}
BL = {
    'stageinfo_lookup': (0x4e42954, 0x8058794),
    'stage_hp_to_gamemanager': (0x4e429a8, 0x4e4fcf4),
    'stage_map_setting': (0x4e42df0, 0x4ec0c88),
    'stage_player_battle_start': (0x4e42e48, 0x4ef4a60),
    'stage_start_monsters': (0x4e43180, 0x4e479ec),
    'stage_monster_index_selection': (0x4e47c68, 0x4e51718),
    'stage_monster_spawn': (0x4e47c80, 0x4e517d8),
    'stage_get_pool_enemy': (0x4e518fc, 0x4ecb900),
    'stage_set_hp_max': (0x4e51a28, 0x50165d0),
    'stage_set_hp_cur': (0x4e51a50, 0x501668c),
    'boss_get_pool_enemy': (0x4e520f0, 0x4ecb900),
    'boss_set_hp_max': (0x4e52240, 0x50165d0),
    'boss_set_hp_cur': (0x4e52268, 0x501668c),
    'boss_attack_multiplier': (0x4e522c0, 0x917a844),
    'map_id_lookup': (0x4ec0d44, 0x8058794),
}
INSN = {
    'stage_current_load': (0x4e42918, 0x3cc78120),
    'stageinfo_store': (0x4e42960, 0xf9010660),  # str x0,[x19,#0x208]
    'stage_monster_count_read': (0x4e42db4, 0xb9404908),
    'stage_map_id_read': (0x4e42de8, 0xb9404d01),
    'monster_index_array': (0x4e51760, 0xf9402114),
    'random_three_choice': (0x4e51768, 0x52800061),
    'random_fallback_two_choice': (0x4e517a0, 0x52800041),
    'boss_hp_source': (0x4e52208, 0xad440500),
    'boss_atk_source': (0x4e52274, 0x9102a100),
    'boss_mul_four': (0x4e522a0, 0x52800080),
}

def signed26(n):
    return n - (1<<26) if n & (1<<25) else n


def verification(lib, methods, fields, stage_csv, monster_json):
    checks=[]
    def success(name, detail=None):
        checks.append({'check':name, **(detail or {})})
    with open(lib, 'rb') as f:
        sha=hashlib.file_digest(f,'sha256').hexdigest()
    assert sha==EXPECTED_SHA, f'wrong libil2cpp sha {sha}'
    success('lib_sha256', {'sha256':sha})
    seen={}
    with open(methods,encoding='utf-8-sig',newline='') as f:
        for r in csv.DictReader(f):
            name=r['declaring_type_full_name']+'.'+r['name']
            if name in METHODS:
                seen.setdefault(name,set()).add(int(r['native_va'],16))
    for name,expected in METHODS.items():
        assert expected in seen.get(name,set()), (name,hex(expected),seen.get(name))
        success('method:'+name, {'va':hex(expected)})
    seen={}
    with open(fields,encoding='utf-8-sig',newline='') as f:
        for r in csv.DictReader(f):
            key=(r['declaring_type'],r['name'])
            if key in FIELDS and r['is_static']=='False':
                seen.setdefault(key,set()).add(int(r['native_field_offset']))
    for key,expected in FIELDS.items():
        assert expected in seen.get(key,set()), (key,hex(expected),seen.get(key))
        success('field:'+key[0]+'.'+key[1], {'offset':hex(expected)})
    with open(lib,'rb') as f:
        h=f.read(64)
        assert h[:6]==b'\x7fELF\x02\x01'
        pho=struct.unpack_from('<Q',h,32)[0]
        ent=struct.unpack_from('<H',h,54)[0]
        cnt=struct.unpack_from('<H',h,56)[0]
        segments=[]
        for i in range(cnt):
            f.seek(pho+i*ent)
            ty,flag,foff,va,_,size,_,_=struct.unpack('<IIQQQQQQ',f.read(56))
            if ty==1 and flag&1: segments.append((va,va+size,foff))
        def op_at(va):
            for lo,hi,foff in segments:
                if lo<=va and va+4<=hi:
                    f.seek(foff+va-lo)
                    return struct.unpack('<I',f.read(4))[0]
            raise ValueError(hex(va))
        for name,(va,expected) in INSN.items():
            op=op_at(va)
            assert op==expected, (name,hex(op),hex(expected))
            success('opcode:'+name,{'va':hex(va),'opcode':hex(op)})
        for name,(va,expected) in BL.items():
            op=op_at(va)
            assert op & 0xfc000000==0x94000000, (name,'not BL',hex(op))
            target=va+4*signed26(op&0x03ffffff)
            assert target==expected,(name,hex(target),hex(expected))
            success('call:'+name,{'va':hex(va),'target':hex(target)})
    with open(stage_csv,encoding='utf-8-sig',newline='') as f:
        stages=list(csv.DictReader(f))
    with open(monster_json,encoding='utf-8') as f:
        monsters=json.load(f)
    assert len(stages)==3000
    assert [int(r['Id']) for r in stages]==list(range(3000))
    success('stage_ids_sequential_0_2999')
    ids={int(r['Id']) for r in monsters}
    assert len(monsters)==952
    success('monster_table_952_records')
    used=set(); nonzero=[]; zero=[]; third_nonzero=[]
    for s in stages:
        arr=ast.literal_eval(s['Monster'])
        assert isinstance(arr,list) and len(arr)==3 and all(isinstance(k,int) for k in arr)
        index=int(s['Id'])
        used.update(v for v in arr if v!=0)
        (nonzero if any(arr) else zero).append(index)
        if arr[2]!=0: third_nonzero.append(index)
    assert nonzero==list(range(1920))
    success('monster_indices_present_stage_0_1919')
    assert zero==list(range(1920,3000))
    success('no_monster_ids_stage_1920_2999')
    assert used.issubset(ids) and len(used)==575
    success('575_nonzero_monster_ids_match_monster_info')
    assert len(third_nonzero)==60
    success('60_stage_records_have_third_monster_option')
    res={
        'status':'passed', 'source':'XAPK-derived libil2cpp checkpoint and extracted stage/monster tables',
        'sha256_libil2cpp':sha,'checks_passed':len(checks),
        'stage_count':len(stages),'stage_monster_id_present':len(nonzero),
        'stage_all_monster_ids_zero':len(zero), 'monsters_table_count':len(monsters),
        'distinct_used_monster_ids':len(used), 'nonzero_third_monster_option_stage_count':len(third_nonzero),
        'evidence':checks,
        'limitations':[
            'Static ARM64 only; IFix may replace method behavior',
            'Stage 1920-2999 zero monster IDs do not prove unreleased content',
            'No runtime game, server response, map texture extraction or spawn-validation',
            'Monster data values and stage data do not by themselves establish combat formulas',
        ]
    }
    return res

if __name__=='__main__':
    if len(sys.argv)!=6:raise SystemExit(__doc__)
    print(json.dumps(verification(*sys.argv[1:]),ensure_ascii=False,indent=2))
