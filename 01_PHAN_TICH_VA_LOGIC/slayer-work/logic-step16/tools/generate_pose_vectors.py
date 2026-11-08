#!/usr/bin/env python3
"""Interpret bounded PlayerBase pose callbacks with original costume/body array access."""

import argparse
import json
from pathlib import Path
import re
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "logic-step6/tools"))
from native_flow_vm import Program, VM, signed

ENTRIES = {
    "Animation_Atk_SpriteSetting": 0x4EFDBC8,
    "Animation_Walk_SpriteSetting": 0x4EFE090,
    "Animation_Dead_SpriteSetting": 0x4EFE158,
    "Animation_Stop_SpriteSetting": 0x4EFE1E0,
    "Animation_Pause_SpriteSetting": 0x4EFE264,
    "Animation_Idle_SpriteSetting_Number": 0x4EFE2E8,
}
RANGES = [
    (0x4EFDBC8, 0x4EFDD34), (0x4EFDD34, 0x4EFDE14), (0x4EFE090, 0x4EFE3AC),
]
LAYERS = {0x4EFDAC4: "cloak", 0x4EFDE14: "head", 0x4EFDE9C: "face", 0x4EFDF88: "hair"}
FIXTURE = {
    "db": {}, "player": {}, "dragon": None, "demon": None,
    "presetStat": None, "playerHpUpdatePresent": False,
}


class PoseVM(VM):
    def __init__(self, program, case):
        super().__init__(program, FIXTURE)
        self.case = case
        self.write(self.db + 1384, 4, case["character_number"])
        costume = self.alloc(120)
        self.write(self.db + 1544, 8, costume)
        self.write(costume + 105, 1, case["same_sprites"])
        self.drawn = []
        self.sprites = {}
        self.renderers = {}
        for layer, list_off, renderer_off in [("costume", 2864, 2720), ("body", 2856, 2712)]:
            length = case[layer + "_length"]
            array = 0 if length is None else self.alloc(32 + length * 8)
            self.write(self.player + list_off, 8, array)
            if array:
                self.write(array + 24, 8, length)
                for index in range(length):
                    pointer = self.alloc(16)
                    self.sprites[pointer] = (layer, index)
                    self.write(array + 32 + index * 8, 8, pointer)
            renderer = self.alloc(32) if case[layer + "_present"] else 0
            self.write(self.player + renderer_off, 8, renderer)
            if renderer:
                self.renderers[renderer] = layer
        self.put("w1", case["frame"])

    def address(self, operand):
        match = re.fullmatch(r"\[(x\d+), (w\d+), uxtw #(\d+)\]", operand)
        if match:
            return self.reg(match[1]) + (self.reg(match[2]) << int(match[3])), match[1]
        return super().address(operand)

    def hook(self, target):
        if target in LAYERS:
            args = [signed(self.reg("w1"), 32)]
            if target in (0x4EFDAC4, 0x4EFDF88):
                args.append(signed(self.reg("w2"), 32))
            self.drawn.append([LAYERS[target], *args])
        elif target == 0x99B2138:
            layer, index = self.sprites[self.reg("x1")]
            assert self.renderers[self.reg("x0")] == layer
            self.drawn.append(["sprite", layer, index])
        elif target == 0x9A006B0:
            assert self.renderers[self.reg("x0")] == "body"
        elif target == 0x9A03C98:
            assert self.renderers[self.reg("x0")] == "body"
            self.put("w0", int(self.case["body_active"]))
        elif target == 0x4590D14:
            raise ValueError("Native ArrayBounds")
        else:
            super().hook(target)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    root = args.out
    program = Program(args.source, root / "research/player-render")
    program.instructions = {
        pc: op for pc, op in program.instructions.items() if any(a <= pc < b for a, b in RANGES)
    }
    walk_cloak = struct.unpack("<6i", program.elf.bytes(0x1F7469C, 24))
    assert walk_cloak == (1, 2, 3, 1, 2, 3)
    events = {
        (event["function"], event["int_parameter"])
        for row in json.loads((root / "battle-animation-evidence.json").read_text())["overrides"]
        for event in row["override"].get("events", [])
        if event["function"] in ENTRIES
    }
    events.update({("Animation_Stop_SpriteSetting", 0), ("Animation_Pause_SpriteSetting", 0)})
    events.update({
        (name, frame)
        for name in ("Animation_Atk_SpriteSetting", "Animation_Walk_SpriteSetting")
        for frame in [-2, -1, 6, 17]
    })
    default = {
        "costume_length": 64, "body_length": 64, "body_present": True, "costume_present": True,
    }
    cases = [
        {**default, "event": name, "frame": frame, "body_active": body,
         "same_sprites": shared, "character_number": character}
        for name, frame in sorted(events)
        for body, shared, character in [(False, False, 0), (True, False, 1), (True, True, 1)]
    ]
    contract_base = {
        **default, "event": "Animation_Idle_SpriteSetting_Number", "frame": 0,
        "body_active": True, "same_sprites": True, "character_number": 1,
    }
    for change in [
        {"costume_length": 31}, {"costume_length": None}, {"costume_present": False},
        {"body_present": False}, {"body_length": 31}, {"body_length": None},
    ]:
        cases.append({**contract_base, **change})

    vectors, visited = [], set()
    steps = 0
    for case in cases:
        vm = PoseVM(program, case)
        error = None
        try:
            steps += vm.run(ENTRIES[case["event"]], max_steps=500)
        except RuntimeError as exc:
            error = next((s for s in ("Native ArrayBounds", "Native NullReference") if s in str(exc)), None)
            if error is None:
                raise
        visited.update(vm.visited)
        vectors.append({"case": case, "expected": {"drawn": vm.drawn, "error": error}})
    report = {
        "cases": len(vectors),
        "partial_or_error_cases": sum(v["expected"]["error"] is not None for v in vectors),
        "distinct_native_instructions": len(visited),
        "completed_native_steps": steps,
        "walk_cloak_indices": walk_cloak,
        "scope": (
            "Six PlayerBase pose callbacks and Costume_Display on unpatched ARM64. "
            "Verified array indexing and ordered costume/body writes. "
            "Unity object access and cloak/head/face/hair operations are explicit sinks."
        ),
    }
    (root / "player-pose-native-vectors.json").write_text(json.dumps(vectors, indent=2) + "\n")
    (root / "player-pose-native-report.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report))


if __name__ == "__main__":
    main()
