#!/usr/bin/env python3
"""Create expected states and call order by interpreting scoped ARM64 bodies."""

import argparse
from copy import deepcopy
from hashlib import sha256
from itertools import product
import json
from pathlib import Path
import struct

from stage_spawn_vm import ENTRIES, StageSpawnVM, make_spawn_program


def digest(path):
    return sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--limit", type=int)
    args = parser.parse_args()
    root = args.out
    program = make_spawn_program(args.source, root)
    constants = {
        "forwardEpsilon": program.elf.bytes(0x1F2991C, 4).hex(),
        "normalAttackSpeed": program.elf.bytes(0x1F29944, 4).hex(),
    }
    assert constants == {"forwardEpsilon": "17b7d138", "normalAttackSpeed": "3333333f"}

    tables = args.source / "table-json"
    table_files = [tables / (name + ".json") for name in (
        "StageInfoBaseData", "MonsterDistanceInfoBaseData", "MonsterInfoBaseData",
    )]
    stage_table, distance_table, monster_table = [
        json.loads(path.read_text()) for path in table_files
    ]
    patterns = {
        str(row["Id"]): [row[f"m{slot}"] for slot in range(1, 11)]
        for row in distance_table if row["Id"] in range(5)
    }
    assert set(patterns) == set(map(str, range(5)))
    monsters = {
        str(row["Id"]): {"index": row["Id"], "scaleSize": row["scaleSize"], "height": row["Height"]}
        for row in monster_table
    }
    base_vectors = json.loads((root.parent / "logic-step13/stage-death-native-vectors.json").read_text())
    baseline = deepcopy(base_vectors["vectors"][0]["fixture"])
    baseline["reward"]["themeUsable"] = False
    baseline["game"].update(waveCount=8, otherEnemies=0, listPresent=True)
    baseline["spawn"] = {
        "monsterCount": 1,
        "enemyHp": "123456789012345678901234567890",
        "stage": {"scale": 1, "miss": 1, "accuracy": 60, "indices": [6, 6, 0]},
        "distancePatterns": patterns,
        "monsterRows": {},
        "oneVector": [1, 1, 1],
        "forwardVector": [0, 0, 1],
        "poolPresent": True,
        "poolEntries": {},
        "listCapacity": 4,
        "theme": {"usable": False, "type": 0},
        "draws": [0] * 45,
        "boxPosition": [0.125, -4.5, 0.25],
    }

    def use_stage(fixture, row):
        monster_ids = set(row["Monster"])
        fixture["spawn"].update(
            stage={"scale": row["Scale"], "miss": row["Miss"],
                   "accuracy": row["Accuracy"], "indices": row["Monster"]},
            monsterCount=row["MonsterCount"],
            monsterRows={str(key): monsters[str(key)] for key in monster_ids if str(key) in monsters},
            enemyHp=row["Hp"],
        )
        fixture["stageTableId"] = row["Id"]

    use_stage(baseline, stage_table[0])
    cases = []
    contracts = []
    # Source rows with a zero fallback slot and rows with three real IDs.
    group_stage = next(row for row in stage_table if all(row["Monster"]) and row["MonsterCount"] >= 3)
    stage_rows = [
        stage_table[0],
        group_stage,
        next(row for row in stage_table if row["Id"] != group_stage["Id"]
             and row["Scale"] != 1 and all(row["Monster"])),
    ]
    assert len({row["Id"] for row in stage_rows}) == len(stage_rows)
    for row, pattern, count, rotated in product(stage_rows, range(5), [0, 1, 3, 12], [False, True]):
        fixture = deepcopy(baseline)
        use_stage(fixture, row)
        spawn = fixture["spawn"]
        spawn["monsterCount"] = count
        # Choose an explicit, legal RNG result for each original Range call.
        # The first choice after the pattern is slot 2, then slot 1 if fallback is needed.
        cycle = [2, 1, 0, 0, 1, 0] if not rotated else [0, 1, 2, 0, 1, 1]
        spawn["draws"] = [pattern] + cycle * 8
        if rotated:
            fixture["game"].update(endPosition=[100000, -1.0 / 3, 7],
                                   rightVector=[-1, 0.5, 0.25])
            spawn.update(forwardVector=[0.25, -0.5, 1], listCapacity=0,
                         oneVector=[0.75, 1.25, -1])
        cases.append(("wave", fixture))

    for hp, capacity, theme_type, status in product(
        ["0", "9223372036854775808", "1" + "0" * 50],
        [0, 8], [1, 2], ["ok", "missing", "destroyed"],
    ):
        fixture = deepcopy(baseline)
        fixture["spawn"].update(enemyHp=hp, listCapacity=capacity,
                                theme={"usable": True, "type": theme_type},
                                poolEntries={"0": status})
        cases.append(("box", fixture))

    for wave, others, count, status in product(
        [7, 8, 9, 10], [0, 1], [1, 3], ["ok", "missing"],
    ):
        fixture = deepcopy(baseline)
        fixture["game"].update(waveCount=wave, otherEnemies=others)
        fixture["spawn"].update(monsterCount=count, poolEntries={"0": status})
        cases.append(("death", fixture))

    for mode, status, ordinal in [
        ("wave", "noTransform", 0), ("wave", "noSpriteScaler", 1),
        ("wave", "noScaler", 0), ("wave", "noGameObject", 1),
        ("box", "noRenderer", 0), ("box", "noGameObject", 0),
        ("death", "noGameObject", 0), ("death", "noScaler", 0),
    ]:
        fixture = deepcopy(baseline)
        fixture["spawn"].update(monsterCount=3, poolEntries={str(ordinal): status})
        contracts.append((mode, fixture))
    for mode, key, value in [
        ("wave", "poolPresent", False), ("box", "poolPresent", False),
        ("wave", "stage", None), ("box", "stage", None),
        ("wave", "distancePatterns", None), ("wave", "distancePatterns", {}),
        ("wave", "distancePatterns", {"0": [0]}), ("wave", "distancePatterns", {"0": None}),
        ("wave", "monsterRows", {}), ("wave", "monsterRows", {"6": None}),
        ("wave", "theme", None), ("box", "theme", None),
    ]:
        fixture = deepcopy(baseline)
        fixture["spawn"].update(monsterCount=3)
        fixture["spawn"][key] = value
        contracts.append((mode, fixture))
    for values in [[], [6], None]:
        fixture = deepcopy(baseline)
        fixture["spawn"]["stage"]["indices"] = values
        fixture["spawn"]["draws"] = [0, 2, 1, 0]
        contracts.append(("wave", fixture))
    for mode in ("wave", "box", "death"):
        fixture = deepcopy(baseline)
        fixture["game"]["listPresent"] = False
        contracts.append((mode, fixture))

    total_steps = 0
    visited = set()
    branch_hits = set()

    def run(mode, fixture):
        nonlocal total_steps
        vm = StageSpawnVM(program, deepcopy(fixture))
        ptr = vm.game
        if mode == "box":
            for axis, value in enumerate(fixture["spawn"]["boxPosition"]):
                vm.setfp(f"s{axis}", value)
        elif mode == "death":
            ptr = vm.enemy
            hit = fixture["args"]
            vm.pair("x1", "x2", int(hit["damage"]))
            vm.put("w3", hit["criticalType"])
            vm.put("w4", hit["attackElement"])
            vm.put("w5", hit["skillDamage"])
            vm.put("w6", hit["trueDamage"])
            vm.put("x7", vm.tag)
            vm.write(vm.sp, 4, hit["damageType"])
        error = None
        try:
            total_steps += vm.run(ENTRIES[mode], max_steps=50000, this_ptr=ptr)
        except RuntimeError as exc:
            error = next((name for name in (
                "Native NullReference", "Native ArrayBounds", "Native KeyNotFound",
            ) if name in str(exc)), None)
            if not error:
                raise
        total_steps += vm.nested_steps
        visited.update(vm.visited)
        branch_hits.update(vm.branches)
        state = vm.snapshot()
        if mode != "death":
            state = {"effects": state["effects"], "game": state["game"]}
        return {"entry": mode, "fixture": fixture, "expected": {
            **state, "spawn": vm.spawn_snapshot(), **({"error": error} if error else {}),
        }}

    if args.limit:
        cases = cases[:args.limit]
        contracts = []
    vectors = [run(*case) for case in cases]
    contract_vectors = [run(*case) for case in contracts]
    assert not any("error" in case["expected"] for case in vectors)
    assert all("error" in case["expected"] for case in contract_vectors)
    if not args.limit:
        assert {0x4E479EC, 0x4E47D28, 0x4E47D80, 0x4E51610, 0x4E51718, 0x4E517D8,
                0x4E47BBC, 0x4E51CE0, 0x4E51CC8, 0x501678C, 0x5016830, 0x50168D4} <= visited
    report = {
        "cases": len(vectors),
        "entry_cases": {entry: sum(x["entry"] == entry for x in vectors) for entry in ENTRIES},
        "stage_table_rows": sorted({v["fixture"]["stageTableId"] for v in vectors}),
        "contract_cases": len(contract_vectors),
        "instruction_steps_on_completed_runs": total_steps,
        "distinct_instructions": len(visited),
        "distinct_branch_outcomes": len(branch_hits),
        "input_table_sha256": {path.name: digest(path) for path in table_files},
        "float_constants_le": constants,
        "scope": (
            "Original mode0 death continuation, Start_MakeEnemy_Stage, MakeEnemy_Stage, "
            "StageMonsterIndex, get_enemyHp, MakeEnemy_RewardBox, StageBar_Update and Character setters. "
            "Explicit input values, pool, RNG results, Unity, image/theme setup, "
            "List.Remove/AddWithResize, and coroutine dependencies."
        ),
    }
    vectors_file = "stage-spawn-smoke.json" if args.limit else "stage-spawn-native-vectors.json"
    (root / vectors_file).write_text(json.dumps({
        "vectors": vectors, "contracts": contract_vectors,
    }, indent=2, allow_nan=False) + "\n")
    if not args.limit:
        (root / "stage-spawn-native-report.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report))


if __name__ == "__main__":
    main()
