#!/usr/bin/env python3
"""Verify opening evidence against IL2CPP metadata, ELF words, tables and scene pointers."""

import argparse
from collections import defaultdict
import csv
from hashlib import sha256
import json
from pathlib import Path
import re
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "logic-full/tools"))
from elf_reader import ELF

NATIVE_SHA = "e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537"


def read_json(path):
    return json.loads(path.read_text())


def branch_target(elf, address):
    word = int.from_bytes(elf.bytes(address, 4), "little")
    assert word & 0x7C000000 == 0x14000000, hex(address)
    displacement = word & 0x03FFFFFF
    if displacement & 0x02000000:
        displacement -= 0x04000000
    return address + 4 * displacement


def usage(elf, address, expected_kind):
    cell = elf.u64(address)
    value = elf.u64(cell)
    assert value >> 29 == expected_kind and value & 1
    return (value >> 1) & 0x0FFFFFFF


def literal(elf, metadata, address):
    literal_table, table_size, _, literal_data, data_size, _ = struct.unpack_from("<6I", metadata, 8)
    index = usage(elf, address, 5)
    assert (index + 2) * 4 <= table_size
    start, end = struct.unpack_from("<II", metadata, literal_table + index * 4)
    assert 0 <= start <= end <= data_size
    return metadata[literal_data + start:literal_data + end].decode("utf-8")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    source, out = args.source, args.out
    native = (source / "libil2cpp.so").read_bytes()
    assert sha256(native).hexdigest() == NATIVE_SHA
    elf = ELF(native)
    metadata = (source / "global-metadata.decoded.dat").read_bytes()
    with (source / "all-method-map.csv").open(encoding="utf-8-sig") as stream:
        methods = list(csv.DictReader(stream))
    with (source / "field-map.csv").open(encoding="utf-8-sig") as stream:
        fields = {
            (r["declaring_type"], r["name"]): int(r["native_field_offset"])
            for r in csv.DictReader(stream)
            if r["native_field_offset"].lstrip("-").isdigit()
        }

    expected_fields = {
        ("OpeningManager", "PlayerObject"): 48,
        ("OpeningManager", "CharacterNumber"): 72,
        ("DatabaseManager", "CharacterNumber"): 1384,
        ("SignManager", "SelectedCharacterNumber"): 216,
        ("SignManager", "CharacterChangeSlot_Man"): 232,
        ("SignManager", "CharacterChangeSlot_Woman"): 240,
        ("SignManager", "isNewbie"): 352,
        ("GrowSlayer.SignUpV2Request", "characterId_"): 56,
        ("UsefulManager", "sceneName_Main"): 104,
        ("UsefulManager", "sceneName_Start"): 128,
        ("UnityEngine.Vector3", "leftVector"): 48,
        ("DatabaseManager", "StageCurrent"): 120,
        ("GameManager", "CurrentStageInfo"): 520,
    }
    for key, offset in expected_fields.items():
        assert fields[key] == offset, key

    expected_literals = {
        0xA3EFD40: "state",
        0xA4176D8: "Off",
        0xA41F8D8: "GearMain_RPG",
        0xA421038: "startscene",
    }
    literals = {}
    for address, expected in expected_literals.items():
        value = literal(elf, metadata, address)
        assert value == expected
        literals[hex(address)] = value

    expected_callbacks = {
        0xA43B978: "OpeningDialogue",
        0xA43B988: "LeftSelect_Tutorial0",
        0xA43B990: "RightSelect_Tutorial0",
        0xA43B998: "<LeftSelect_Tutorial0>b__12_0",
        0xA43B9A0: "<RightSelect_Tutorial0>b__13_0",
    }
    callbacks = {}
    for address, expected in expected_callbacks.items():
        row = methods[usage(elf, address, 3)]
        assert row["name"] == expected and row["declaring_type_full_name"].startswith("OpeningManager")
        callbacks[hex(address)] = {"method": row["name"], "va": row["native_va"]}

    words = {
        0x5241620: 0xB9456908,  # Read DatabaseManager.CharacterNumber.
        0x5241628: 0xB9004A68,  # Cache it on OpeningManager.
        0x5241648: 0x52800022, 0x5241638: 0x52800142,  # state = 1 / 10
        0x5241D50: 0x52800042, 0x5241D44: 0x52800282,  # state = 2 / 20
        0x5241F80: 0x52800062, 0x5241F74: 0x528003C2,  # state = 3 / 30
        0x524232C: 0x1E2E1000, 0x52420A8: 0x1E2E1000,  # Wait 1 second.
        0x5241F58: 0x1E201000, 0x5241DD0: 0x1E211000,  # Wait 2 / 3 seconds.
        0x52A42C4: 0x12800008, 0x52A42C8: 0xB900DA68,  # Selected = -1.
        0x52A45F8: 0x3100051F, 0x52A45FC: 0x540001E0,  # Require a selection.
        0x52A9020: 0xB940DA88, 0x52A9028: 0xB9003AA8,  # SignUpV2Request.characterId_.
        0x52A3B90: 0x39458269,  # Read isNewbie.
        0x52A3BBC: 0xF9404101, 0x52A3BD8: 0xF9403501,  # sceneName_Start / Main.
        0x5242200: 0xF9403501, 0x52A59F8: 0xF9404101, 0x52A5A84: 0xF9403501,
        0x4D27B9C: 0xF8068C01, 0x4D27BF0: 0xF8080C01,  # UsefulManager .cctor stores.
    }
    for address, expected in words.items():
        assert int.from_bytes(elf.bytes(address, 4), "little") == expected, hex(address)

    branches = {
        0x5242304: 0x5241734, 0x5241840: 0x4CD4BA4,
        0x52418C0: 0x99A12A8, 0x5242080: 0x52419B4,
        0x5241AFC: 0x4CD4BA4, 0x5241BE0: 0x4CD4BA4, 0x5241D30: 0x4CD4BA4,
        0x5241F60: 0x5241DE0, 0x5241DD8: 0x5241DE0,
        0x52421B8: 0x4CD44D8, 0x5242204: 0x4D0981C,
        0x52A5A00: 0x4D0981C, 0x52A5A8C: 0x4D0981C, 0x52A3BE8: 0x4D0981C,
        0x52A946C: 0x5226E14, 0x4D0AFE0: 0x9A1C01C,
    }
    for address, target in branches.items():
        assert branch_target(elf, address) == target, hex(address)

    table_dir = source / "table-json"
    companions = defaultdict(set)
    for row in read_json(table_dir / "FriendClassBaseData.json"):
        companions[row["FriendIndex"]].add(re.sub(r"_\d+$", "", row["SkinName"]))
    companion_index = {str(index): sorted(names) for index, names in sorted(companions.items())}
    assert companion_index == {
        "0": ["FRIEND_ARCHER"], "1": ["FRIEND_WARRIOR"],
        "2": ["FRIEND_NINJA"], "3": ["FRIEND_MAGE"],
    }
    stories = {
        row["Id"]: row for row in read_json(table_dir / "DialogueStoryBaseData.json")
        if row["StoryType"] == 0 and row["Id"].startswith("Tutorial")
    }
    assert set(stories) == {"Tutorial0", "Tutorial1", "Tutorial2", "Tutorial3"}
    assert [(row["TypeIndex"], row["first"], row["last"], row["Select"]) for row in stories.values()] == [
        (0, 0, 3, False), (1, 10, 12, True), (2, 20, 21, False), (3, 30, 30, False),
    ]
    dialogue_ids = {i for row in stories.values() for i in range(row["first"], row["last"] + 1)}
    dialogue = [
        row for row in read_json(table_dir / "DialogueBaseData.json") if row["Id"] in dialogue_ids
    ]
    assert len(dialogue) == len(dialogue_ids)

    scenes = read_json(out / "opening-scene-evidence.json")
    opening, = scenes["opening_managers"]
    actor = opening["player_object"]
    controller = actor["controller"]
    assert opening["file"] == "level2" and opening["fields"]["PlayerObject"]["path_id"] == "61"
    assert actor["name"] == "Player" and controller["name"] == "startscenePlayer"
    clips = {clip["name"]: clip for clip in controller["clips"]}
    expected_sprites = {
        "startscenePlayer": ("01", {12, 13}),
        "OpeningPlayer_walk": ("01", set(range(6, 12))),
        "startscenePlayer_Death": ("01", {16, 17}),
        "startscenePlayer_Idle_W": ("02", {12, 13}),
        "OpeningPlayer_walk_W": ("02", set(range(6, 12))),
        "startscenePlayer_Death_W": ("02", {16, 17}),
    }
    assert set(clips) == set(expected_sprites)
    for name, (variant, indices) in expected_sprites.items():
        assert {ref["name"] for ref in clips[name]["sprite_binding_refs"]} == {
            f"slayer_{variant}_{index}" for index in indices
        }
    battle, = [actor for actor in scenes["scene_actors"] if actor["script"] == "PlayerBase"]
    assert battle["scene"] == "level1" and battle["animators"][0]["controller"]["name"] == "Animator_Players_Costume"

    evidence = {
        "package": "com.gear2.growslayer", "version": "700.0.4", "version_code": 705,
        "native_sha256": NATIVE_SHA,
        "checks": {
            "native_words": len(words), "direct_branches": len(branches),
            "field_offsets": len(expected_fields), "resolved_literals": len(literals),
            "resolved_callbacks": len(callbacks), "opening_animation_clips": len(clips),
            "validated_sign_buttons": len(scenes["sign_buttons"]),
        },
        "resolved_literals": literals, "resolved_callbacks": callbacks,
        "companion_index": companion_index, "stories": stories, "dialogue_key_rows": dialogue,
        "character_creation": {
            "man_character_id": 0, "woman_character_id": 1, "no_selection_sentinel": -1,
            "sign_up_request_field": "GrowSlayer.SignUpV2Request.characterId_",
        },
        "opening_state": {
            "name": "state", "source": "DatabaseManager.CharacterNumber",
            "initial": {"zero": 1, "nonzero": 10},
            "left_after_tutorial2": {"zero": 3, "nonzero": 30, "delay_seconds": 2},
            "right": {"zero": 2, "nonzero": 20, "delay_seconds": 3},
        },
        "battle_default_appearance_verified": False,
        "new_account_stage_index_verified": False,
        "video_reference_verified": False,
        "native_execution": False,
        "replacement_assets_created": False,
    }
    (out / "opening-flow-evidence.json").write_text(json.dumps(evidence, indent=2) + "\n")
    print(json.dumps(evidence["checks"]))


if __name__ == "__main__":
    main()
