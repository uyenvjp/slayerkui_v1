#!/usr/bin/env python3
"""Run the JavaScript comparisons and summarize the verified scope."""

from hashlib import sha256
import json
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[1]


def verify(name, count_mapping):
    native_file = f"stage-{name}-native-report.json"
    native = json.loads((root / native_file).read_text())
    output = subprocess.run(
        ["node", str(root / "port" / f"verify-stage-{name}.mjs")],
        check=True, capture_output=True, text=True,
    )
    observed = json.loads(output.stdout)
    for actual, expected in count_mapping.items():
        assert observed[actual] == native[expected], (name, actual, observed)
    js_file = f"js-stage-{name}-report.json"
    (root / js_file).write_text(json.dumps(observed, indent=2) + "\n")
    return {
        **observed, "native_report": native_file,
        "javascript_report": js_file, "scope": native["scope"],
    }


spawn = verify("spawn", {"passed": "cases", "contracts": "contract_cases"})
cycle = verify("cycle", {
    "sequences": "connected_sequences", "actions": "sequence_actions",
    "contract_sequences": "contract_sequences", "contract_actions": "contract_actions",
})
summary = {
    "package": "com.gear2.growslayer",
    "version": "700.0.4",
    "version_code": 705,
    "native_sha256": "e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537",
    "stage_spawn": spawn,
    "stage_cycle": cycle,
    "all_client_logic_analyzed": False,
    "all_game_logic_recovered": False,
    "native_game_executed": False,
    "game_services_called": False,
    "h5_building_paused": True,
    "deployed_this_step": False,
    "new_or_substitute_assets_created": False,
    "limits": [
        "Mode 0 only. Actor activation/OnEnable, pooling, Unity transforms/scheduler and RNG internals are modeled dependencies.",
        "RewardBox death subscriber entered directly on the newly spawned box. Box hit-to-death and multicast registration are separate.",
        "Restart iterator and selected SceneChange callback are stepped explicitly. SceneChange scheduling and restartDelay construction are outside the tested scope.",
        "Theme application, image loading, StageFill rendering, player initialization callbacks, and logging are modeled dependencies.",
        "Gold/EXP drop requests and StageClear telemetry do not establish account credit or progression updates.",
    ],
    "common_native_vm_changes": [
        "FMUL .2s by scalar lane 0, MOV .16b, unsigned UMULL, UXTW shifted ADD.",
        "Previous corpora kept in place. Verification here uses the two new scoped corpora.",
    ],
    "current_port_sha256": {
        path.name: sha256(path.read_bytes()).hexdigest()
        for path in sorted((root / "port").glob("*.mjs"))
    },
}
(root / "VALIDATION_SUMMARY.json").write_text(json.dumps(summary, indent=2) + "\n")
print(json.dumps({"stage_spawn": spawn, "stage_cycle": cycle}))
