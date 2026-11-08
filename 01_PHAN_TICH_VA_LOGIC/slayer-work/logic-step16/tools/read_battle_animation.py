#!/usr/bin/env python3
"""Resolve battle animation overrides and validated event records in the original XAPK."""

import argparse
from hashlib import file_digest
from io import BytesIO
import json
import math
from pathlib import Path
import re
import sys
from zipfile import ZipFile

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "logic-step15/tools"))
from read_opening_scene import APK, APKScenes, Reader, XAPK_SHA, pptr, unity_string

CORE = {
    "Player_Attack", "Player_Attack 2", "Player_Attack 3", "Player_Dead",
    "Player_Default", "Player_Hit", "Player_Idle", "Player_Move",
}
METHOD = re.compile(r"[A-Za-z_][A-Za-z0-9_]{2,90}")


def event_records(scenes, file, obj):
    raw = file.reader(obj).b
    candidates = []
    for start in range(max(0, len(raw) - 16_384), len(raw) - 4, 4):
        reader = Reader(raw)
        reader.p = start
        count = reader.value("i")
        if not 0 < count <= (len(raw) - start - 4) // 36:
            continue
        events = []
        try:
            for _ in range(count):
                time = reader.value("f")
                assert 0 <= time <= 3600 and (not events or events[-1]["seconds"] <= time)
                function = unity_string(reader)
                assert METHOD.fullmatch(function)
                string_arg = unity_string(reader)
                obj_arg = pptr(reader)
                float_arg = reader.value("f")
                int_arg = reader.value("i")
                options = reader.value("i")
                assert math.isfinite(float_arg) and options in (0, 1)
                events.append({
                    "seconds": time, "function": function, "int_parameter": int_arg,
                    "float_parameter": float_arg, "string_parameter": string_arg,
                    "object_parameter": scenes.describe(file, obj_arg) if obj_arg[1] else None,
                    "message_options": options,
                })
        except (ValueError, AssertionError, FileNotFoundError, KeyError, IndexError):
            continue
        if reader.p == len(raw):
            candidates.append((start, events))
    if candidates:
        assert len(candidates) == 1, (file.name, obj.path_id, len(candidates))
        start, events = candidates[0]
        return {"event_array_offset": start, "events": events}
    assert raw[-4:] == bytes(4)
    return {"event_array_offset": len(raw) - 4, "events": []}


def read_xapk(xapk, opening_file):
    with xapk.open("rb") as stream:
        digest = file_digest(stream, "sha256").hexdigest()
    assert digest == XAPK_SHA
    opening = json.loads(opening_file.read_text())
    assert opening["xapk_sha256"] == digest
    actor, = (row for row in opening["scene_actors"] if row["script"] == "PlayerBase")
    animator, = actor["animators"]
    override = animator["controller"]
    assert override["class_id"] == 221
    with ZipFile(xapk) as source, ZipFile(BytesIO(source.read(APK))) as apk:
        scenes = APKScenes(apk)
        file = scenes.get(override["file"])
        reader = file.reader(file.objects[int(override["path_id"])])
        assert unity_string(reader) == override["name"] == "Animator_Players_Costume"
        base = scenes.describe_named(file, pptr(reader), {91})
        rows = []
        for _ in range(reader.value("i")):
            original, replaced = pptr(reader), pptr(reader)
            original_ref = scenes.describe_named(file, original, {74})
            replaced_ref = scenes.describe_named(file, replaced, {74})
            if original_ref["name"] in CORE:
                for pointer, reference in [(original, original_ref), (replaced, replaced_ref)]:
                    target_file, obj = scenes.resolve(file, pointer)
                    reference.update(event_records(scenes, target_file, obj))
            rows.append({"original": original_ref, "override": replaced_ref})
        assert reader.p == len(reader.b) and len(rows) == 31

    core_rows = [row for row in rows if row["original"]["name"] in CORE]
    assert len(core_rows) == len(CORE)
    for row in core_rows:
        clip = row["override"]
        name = row["original"]["name"]
        if name.startswith("Player_Attack"):
            assert any(event["function"] == "Attack_Func" for event in clip["events"])
        elif name in ["Player_Idle", "Player_Move", "Player_Dead"]:
            assert clip["events"], name
    return {
        "source_xapk_sha256": digest, "scene": actor["scene"],
        "player_path_id": actor["object"]["path_id"], "animator": animator,
        "base_controller": base, "overrides": rows,
        "core_clips_with_event_analysis": len(core_rows) * 2,
        "core_event_count": sum(len(row[side]["events"]) for row in core_rows for side in ["original", "override"]),
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("xapk", type=Path)
    parser.add_argument("--opening-evidence", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    result = read_xapk(args.xapk, args.opening_evidence)
    args.out.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({
        "override_pairs": len(result["overrides"]),
        "core_clips": result["core_clips_with_event_analysis"],
        "core_event_count": result["core_event_count"],
    }))


if __name__ == "__main__":
    main()
