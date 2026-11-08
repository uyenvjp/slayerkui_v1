#!/usr/bin/env python3
"""Inspect stripped Unity scene links directly in the provided XAPK."""

import argparse
from collections import Counter
from dataclasses import dataclass
from hashlib import file_digest, sha256
from io import BytesIO
import json
from pathlib import Path, PurePosixPath
import re
import sys
from zipfile import ZipFile

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "logic-full/tools"))
from read_unity_textasset import Reader

XAPK_SHA = "b8c19d5fdf4da70c8c45cddf3f7e6b8a850863fd55b09b087c6d06d7001d6098"
APK = "com.gear2.growslayer.apk"
UNITY_DATA = "assets/bin/Data/"


def unity_string(reader):
    raw = reader.read(reader.value("i"))
    reader.align()
    return raw.decode("utf-8")


def pptr(reader):
    return reader.value("i"), reader.value("q")


@dataclass(frozen=True)
class SerializedObject:
    path_id: int
    class_id: int
    offset: int
    size: int


class SerializedFile:
    def __init__(self, name, data):
        self.name = name
        self.data = data
        reader = Reader(data, ">")
        reader.read(8)
        assert reader.value("I") == 22, name
        reader.read(4)
        endian = reader.value("B")
        reader.read(7)
        assert reader.value("Q") == len(data), name
        data_offset = reader.value("Q")
        reader.read(8)
        assert endian == 0, name
        reader.endian = "<"
        self.unity_version = reader.cstring()
        reader.value("i")
        assert reader.value("B") == 0, name
        classes = []
        for _ in range(reader.value("i")):
            class_id = reader.value("i")
            reader.read(3)
            if class_id == 114:
                reader.read(16)
            reader.read(16)
            classes.append(class_id)
        self.objects = {}
        for _ in range(reader.value("i")):
            reader.align()
            path_id = reader.value("q")
            start = data_offset + reader.value("q")
            size = reader.value("I")
            class_id = classes[reader.value("i")]
            assert start + size <= len(data) and path_id not in self.objects
            self.objects[path_id] = SerializedObject(path_id, class_id, start, size)
        for _ in range(reader.value("i")):
            reader.value("i")
            reader.align()
            reader.value("q")
        self.externals = []
        for _ in range(reader.value("i")):
            reader.cstring()
            reader.read(20)
            self.externals.append(reader.cstring())
        assert reader.p <= data_offset

    def reader(self, obj):
        return Reader(self.data[obj.offset:obj.offset + obj.size])

    def get_game_object(self, obj):
        assert obj.class_id == 1
        reader = self.reader(obj)
        count = reader.value("i")
        assert 0 <= count <= (obj.size - 4) // 12
        components = [pptr(reader) for _ in range(count)]
        layer = reader.value("I")
        name = unity_string(reader)
        return {
            "name": name, "components": components, "layer": layer,
            "tag": reader.value("H"), "active": bool(reader.value("B")),
        }

    def get_mono(self, obj):
        assert obj.class_id == 114
        reader = self.reader(obj)
        owner = pptr(reader)
        enabled = bool(reader.value("B"))
        reader.align()
        script = pptr(reader)
        name = unity_string(reader)
        return owner, enabled, script, name, reader

    def mono_script_names(self, obj):
        assert obj.class_id == 115
        reader = self.reader(obj)
        name = unity_string(reader)
        reader.read(20)  # execution order and serialized property hash
        return name, unity_string(reader), unity_string(reader), unity_string(reader)

    def animator_controller(self, obj, owner):
        assert obj.class_id == 95
        reader = self.reader(obj)
        assert pptr(reader) == owner
        reader.read(4)
        pptr(reader)  # m_Avatar
        return pptr(reader)


class APKScenes:
    def __init__(self, apk):
        self.apk = apk
        self.members = set(apk.namelist())
        self.loaded = {}

    def get(self, basename):
        if basename not in self.loaded:
            name = UNITY_DATA + basename
            if name in self.members:
                data = self.apk.read(name)
            elif name + ".split0" in self.members:
                parts = []
                while f"{name}.split{len(parts)}" in self.members:
                    parts.append(self.apk.read(f"{name}.split{len(parts)}"))
                data = b"".join(parts)
            else:
                raise FileNotFoundError(name)
            self.loaded[basename] = SerializedFile(basename, data)
        return self.loaded[basename]

    def resolve(self, file, pointer):
        file_id, path_id = pointer
        if path_id == 0:
            return None
        target_file = file
        if file_id:
            basename = PurePosixPath(file.externals[file_id - 1]).name
            target_file = self.get(basename)
        return target_file, target_file.objects[path_id]

    def describe(self, file, pointer):
        target = self.resolve(file, pointer)
        if target is None:
            return None
        target_file, obj = target
        return {"file": target_file.name, "path_id": str(obj.path_id), "class_id": obj.class_id}

    def describe_named(self, file, pointer, allowed):
        target_file, obj = self.resolve(file, pointer)
        assert obj.class_id in allowed
        return {
            **self.describe(file, pointer),
            "name": unity_string(target_file.reader(obj)),
        }

    def trailing_refs(self, file, obj, trailer_size, classes):
        """Recover a counted tail of validated serialized object references."""
        raw = file.reader(obj).b
        matches = []
        for count in range(1, 65):
            offset = len(raw) - trailer_size - 4 - 12 * count
            if offset < 0:
                break
            reader = Reader(raw)
            reader.p = offset
            if reader.value("i") != count:
                continue
            try:
                refs = [self.describe_named(file, pptr(reader), classes) for _ in range(count)]
            except (TypeError, ValueError, KeyError, IndexError, AssertionError, FileNotFoundError):
                continue
            matches.append(refs)
        assert len(matches) == 1, (file.name, obj.path_id, len(matches))
        return matches[0]


def opening_controller_evidence(scenes, scene, player_pointer, player):
    animator = next(
        obj for ref in player["components"]
        for _, obj in [scenes.resolve(scene, ref)]
        if obj.class_id == 95
    )
    controller_pointer = scene.animator_controller(animator, player_pointer)
    controller_file, controller = scenes.resolve(scene, controller_pointer)
    evidence = scenes.describe_named(scene, controller_pointer, {91})
    evidence["clips"] = scenes.trailing_refs(controller_file, controller, 16, {74})
    for clip in evidence["clips"]:
        clip_file = scenes.get(clip["file"])
        clip_obj = clip_file.objects[int(clip["path_id"])]
        # This is the PPtr binding mapping, whose ordering is not playback timing.
        assert clip_file.reader(clip_obj).b.endswith(bytes(8))
        clip["sprite_binding_refs"] = scenes.trailing_refs(clip_file, clip_obj, 8, {213})
    return evidence


def sign_buttons(scene):
    names = {
        "ChracterChangeSlot_Man": ("Button_CharacterChange_Select", 3, 0),
        "ChracterChangeSlot_Woman": ("Button_CharacterChange_Select", 3, 1),
        "Btn_Confirm": ("Button_Confirm_Character", 1, 0),
        "Btn_Watch": ("Button_EnterPrologue", 1, 0),
        "Btn_Skip": ("Button_EnterGameScene", 1, 0),
    }
    matches = {}
    for obj in scene.objects.values():
        if obj.class_id != 114:
            continue
        raw = scene.reader(obj).b
        for owner_name, (method, mode, int_arg) in names.items():
            offset = raw.find(method.encode())
            if offset < 4:
                continue
            owner, _, _, _, _ = scene.get_mono(obj)
            if owner[0] or scene.get_game_object(scene.objects[owner[1]])["name"] != owner_name:
                continue
            reader = Reader(raw)
            reader.p = offset - 4
            assert unity_string(reader) == method
            assert reader.value("i") == mode
            pptr(reader)  # object argument
            assert unity_string(reader).startswith("UnityEngine.Object")
            assert reader.value("i") == int_arg
            assert owner_name not in matches
            matches[owner_name] = {
                "object_path_id": str(owner[1]), "component_path_id": str(obj.path_id),
                "method": method, "mode": mode, "int_argument": int_arg,
            }
    assert set(matches) == set(names)
    return matches


def investigate(apk):
    scenes = APKScenes(apk)
    build_settings = scenes.get("globalgamemanagers")
    build_data, = [
        build_settings.reader(obj).b for obj in build_settings.objects.values() if obj.class_id == 141
    ]
    paths = [value.decode() for value in re.findall(rb"Assets/[\w/. -]+\.unity", build_data)]
    assert paths == [
        "Assets/A_CALGON/SignIn.unity",
        "Assets/A_CALGON/GearMain_RPG.unity",
        "Assets/A_CALGON/startscene.unity",
    ]
    out = {"apk": APK, "scene_files": [], "scene_actors": [], "opening_managers": []}
    tracked_scripts = {
        "OpeningManager", "PrologueManager", "SignManager", "PlayerBase",
        "GameManager", "TutorialManager", "EffectManager",
    }
    for index, scene_path in enumerate(paths):
        basename = f"level{index}"
        scene = scenes.get(basename)
        out["scene_files"].append({
            "file": basename, "build_index": index, "scene_path": scene_path,
            "unity": scene.unity_version, "object_count": len(scene.objects),
            "sha256": sha256(scene.data).hexdigest(), "external_files": scene.externals,
            "class_counts": dict(Counter(obj.class_id for obj in scene.objects.values())),
        })
        for obj in scene.objects.values():
            if obj.class_id != 114:
                continue
            owner, enabled, script, _, body = scene.get_mono(obj)
            try:
                script_target = scenes.resolve(scene, script)
            except (FileNotFoundError, KeyError):
                continue
            if not script_target:
                continue
            script_file, script_obj = script_target
            if script_obj.class_id != 115:
                continue
            name = unity_string(script_file.reader(script_obj))
            if name in tracked_scripts:
                owner_file, owner_obj = scenes.resolve(scene, owner)
                owner_game_object = owner_file.get_game_object(owner_obj)
                actor = {
                    "scene": basename, "script": name, "script_enabled": enabled,
                    "script_path_id": str(obj.path_id), "object": scenes.describe(scene, owner),
                    "object_name": owner_game_object["name"], "object_active": owner_game_object["active"],
                }
                if name == "PlayerBase":
                    actor["animators"] = [
                        {
                            "component": scenes.describe(owner_file, ref),
                            "controller": scenes.describe_named(
                                owner_file, owner_file.animator_controller(component, owner), {91, 221}
                            ),
                        }
                        for ref in owner_game_object["components"]
                        for _, component in [scenes.resolve(owner_file, ref)]
                        if component.class_id == 95
                    ]
                out["scene_actors"].append(actor)
            if name != "OpeningManager":
                continue
            script_names = script_file.mono_script_names(script_obj)
            fields = {field: pptr(body) for field in ["BlackPanel", "BlackPanel_Ani", "PlayerObject"]}
            player_file, player_obj = scenes.resolve(scene, fields["PlayerObject"])
            player = player_file.get_game_object(player_obj)
            out["opening_managers"].append({
                "file": basename, "path_id": str(obj.path_id), "enabled": enabled,
                "owner": scenes.describe(scene, owner), "script": scenes.describe(scene, script),
                "script_names": script_names,
                "fields": {name: scenes.describe(scene, value) for name, value in fields.items()},
                "player_object": {
                    **player,
                    "components": [scenes.describe(player_file, value) for value in player["components"]],
                    "controller": opening_controller_evidence(scenes, player_file, fields["PlayerObject"], player),
                },
            })
    out["sign_buttons"] = sign_buttons(scenes.get("level0"))
    return out


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("xapk", type=Path)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    with args.xapk.open("rb") as stream:
        digest = file_digest(stream, "sha256").hexdigest()
    assert digest == XAPK_SHA
    with ZipFile(args.xapk) as xapk, ZipFile(BytesIO(xapk.read(APK))) as apk:
        out = investigate(apk)
    out["xapk_sha256"] = digest
    args.out.write_text(json.dumps(out, ensure_ascii=False, indent=2) + "\n")
    controllers = [actor["player_object"]["controller"] for actor in out["opening_managers"]]
    print(json.dumps({
        "scenes": len(out["scene_files"]), "scene_actors": len(out["scene_actors"]),
        "opening_controllers": [controller["name"] for controller in controllers],
        "opening_clips": sum(len(controller["clips"]) for controller in controllers),
    }))


if __name__ == "__main__":
    main()
