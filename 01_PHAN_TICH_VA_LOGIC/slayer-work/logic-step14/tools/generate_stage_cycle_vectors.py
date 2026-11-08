#!/usr/bin/env python3
"""Generate a connected wave 9 -> box callback -> restart coroutine corpus."""

import argparse
from copy import deepcopy
from itertools import product
import json
from pathlib import Path

from stage_cycle_vm import StageCycleVM, make_cycle_program


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--limit", type=int)
    args = parser.parse_args()
    root = args.out
    program = make_cycle_program(args.source, root)
    source_vectors = json.loads((root / "stage-spawn-native-vectors.json").read_text())["vectors"]
    baseline = next(case["fixture"] for case in source_vectors
                    if case["entry"] == "death" and case["fixture"]["game"]["waveCount"] == 9
                    and case["fixture"]["game"]["otherEnemies"] == 0)
    baseline = deepcopy(baseline)
    baseline["spawn"].update(poolEntries={}, monsterCount=3)
    baseline["reward"]["stage"]["Index"] = 7
    baseline["restart"] = {
        "waitPresent": True, "playerTransformPresent": True,
        "fillImagePresent": True, "positionCallbackPresent": True,
        "playerPosition": [1.125, -2.25, 7.5],
    }
    actions = ["killNormal", "boxDeadEvent"] + ["restartMoveNext"] * 3 + ["sceneCallback"]
    visited = set()

    def run(fixture, calls):
        vm = StageCycleVM(program, deepcopy(fixture))
        frames = [vm.step(call) for call in calls]
        visited.update(vm.visited)
        return {"fixture": fixture, "actions": calls, "expected": frames}

    fixtures = []
    for usable, theme_type, wait, gold_and_exp in product(
        [False, True], [0, 2], [False, True],
        [("14", 15), ("1" + "0" * 40, "-9223372036854775808")],
    ):
        fixture = deepcopy(baseline)
        fixture["spawn"]["theme"] = {"usable": usable, "type": theme_type}
        fixture["restart"]["waitPresent"] = wait
        gold, exp = gold_and_exp
        fixture["reward"]["stageGold"] = gold
        fixture["reward"]["stage"]["Exp"] = exp
        fixtures.append(fixture)
    if args.limit:
        fixtures = fixtures[:args.limit]
    vectors = [run(fixture, actions) for fixture in fixtures]
    contracts = []
    if not args.limit:
        for field in ["fillImagePresent", "playerTransformPresent", "positionCallbackPresent"]:
            fixture = deepcopy(baseline)
            fixture["restart"][field] = False
            contracts.append(run(fixture, actions))
    for case in vectors:
        assert [frame["returned"] for frame in case["expected"][2:5]] == [True, False, False]
        assert case["expected"][-1]["game"]["waveCount"] == 0
        assert case["expected"][-1]["game"]["enemiesRemaining"] == 3
        assert not any(frame["error"] for frame in case["expected"])
    for case in contracts:
        assert case["expected"][-1]["error"] == "Native NullReference"
    report = {
        "connected_sequences": len(vectors),
        "sequence_actions": len(vectors) * len(actions),
        "contract_sequences": len(contracts),
        "contract_actions": len(contracts) * len(actions),
        "distinct_instructions": len(visited),
        "scope": (
            "Lethal hit on warm EnemyNormal -> mode0 reward box spawn -> direct EnemyBox.DeadEvent "
            "on that object -> ItemDrop -> restart factory/ctor/MoveNext -> Stage_Reset -> "
            "explicit SceneChange callback -> Stage_Restart and wave spawn. Timing and callback "
            "delivery are externally stepped. Reward effects do not credit the account."
        ),
    }
    filename = "stage-cycle-smoke.json" if args.limit else "stage-cycle-native-vectors.json"
    (root / filename).write_text(json.dumps({"vectors": vectors, "contracts": contracts}, indent=2) + "\n")
    if not args.limit:
        (root / "stage-cycle-native-report.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report))


if __name__ == "__main__":
    main()
