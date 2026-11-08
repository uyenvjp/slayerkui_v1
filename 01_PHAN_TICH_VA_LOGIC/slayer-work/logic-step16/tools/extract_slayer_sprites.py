#!/usr/bin/env python3
"""Decode the original Slayer textures and export only verified Unity sprite rectangles."""

import argparse
from collections import Counter
from hashlib import file_digest, sha256
from io import BytesIO
import json
from pathlib import Path
import re
import struct
import sys
from zipfile import ZipFile

from PIL import Image

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "logic-step15/tools"))
from read_opening_scene import APK, APKScenes, XAPK_SHA, pptr, unity_string
from etc2_rgba import Decoder

SOURCE_FILES = (
    "sharedassets0.assets",
    "4cb69c1459b34924b9a2786f51bda66b",
    "440029e9a1e468e44ae898bcdb22dba3",
)
SLAYER_SPRITE = re.compile(r"slayer_0[12]_\d+")


def file_hash(path):
    with path.open("rb") as stream:
        return file_digest(stream, "sha256").hexdigest()


def image_payload(file, obj):
    assert obj.class_id == 28
    reader = file.reader(obj)
    name = unity_string(reader)
    reader.read(4)
    width, height, complete_size, stripped_mips, texture_format, mip_count = [
        reader.value("I") for _ in range(6)
    ]
    assert texture_format == 47 and mip_count == 1 and stripped_mips == 0
    assert (width, height) == (1024, 1024)
    reader.read(60)
    image_size = reader.value("I")
    assert image_size == complete_size == width * height
    data_offset = reader.p
    payload = reader.read(image_size)
    assert reader.read(len(reader.b) - reader.p) == bytes(16), "Expected no external stream"
    return name, width, height, texture_format, data_offset, payload


def sprite_crop(scenes, file, obj):
    reader = file.reader(obj)
    name = unity_string(reader)
    if not SLAYER_SPRITE.fullmatch(name):
        return None
    assert obj.class_id == 213 and len(reader.b) - reader.p == 416
    base = reader.p
    rectangle = struct.unpack_from("<4f", reader.b, base)
    assert rectangle == struct.unpack_from("<4f", reader.b, base + 348)
    assert all(value == int(value) for value in rectangle)
    x, y, width, height = map(int, rectangle)
    assert (width, height) == (204, 128)
    pivot = struct.unpack_from("<2f", reader.b, base + 44)
    pixels_per_unit = struct.unpack_from("<f", reader.b, base + 40)[0]
    reader.p = base + 84
    assert reader.value("i") == 0  # m_AtlasTags
    assert pptr(reader) == (0, 0)  # no SpriteAtlas packing transform
    tex_file, tex_obj = scenes.resolve(file, pptr(reader))
    assert pptr(reader) == (0, 0)  # no separate alpha texture
    assert struct.unpack_from("<I", reader.b, base + 380)[0] == 0  # settingsRaw
    return {
        "name": name,
        "source_file": file.name,
        "source_path_id": str(obj.path_id),
        "texture_file": tex_file.name,
        "texture_path_id": str(tex_obj.path_id),
        "rect_xywh_unity_bottom_left": [x, y, width, height],
        "pivot_normalized_bottom_left": list(pivot),
        "pixels_per_unit": pixels_per_unit,
    }


def export(xapk, evidence_path, output):
    digest = file_hash(xapk)
    assert digest == XAPK_SHA
    opening = json.loads(evidence_path.read_text())
    assert opening["xapk_sha256"] == digest
    out_assets = output / "assets" / "slayer"
    atlas_dir = out_assets / "atlases"
    sprite_dir = out_assets / "sprites"
    atlas_dir.mkdir(parents=True, exist_ok=True)
    sprite_dir.mkdir(parents=True, exist_ok=True)

    with ZipFile(xapk) as archive, ZipFile(BytesIO(archive.read(APK))) as apk, Decoder() as decoder:
        scenes = APKScenes(apk)
        textures = {}
        frames = {}
        for filename in SOURCE_FILES:
            file = scenes.get(filename)
            for obj in file.objects.values():
                if obj.class_id != 213:
                    continue
                entry = sprite_crop(scenes, file, obj)
                if entry is None:
                    continue
                name = entry["name"]
                key = (entry["texture_file"], int(entry["texture_path_id"]))
                if key not in textures:
                    texture_file = scenes.get(key[0])
                    tex_obj = texture_file.objects[key[1]]
                    tex_name, width, height, fmt, data_offset, payload = image_payload(texture_file, tex_obj)
                    pixels = decoder.decode(width, height, payload)
                    image = Image.frombytes("RGBA", (width, height), pixels).transpose(Image.Transpose.FLIP_TOP_BOTTOM)
                    target = atlas_dir / (tex_name + ".png")
                    image.save(target)
                    textures[key] = (image, {
                        "name": tex_name, "file": str(target.relative_to(output)),
                        "source_file": key[0], "source_path_id": str(key[1]),
                        "source_object_data_offset": data_offset,
                        "unity_texture_format": fmt, "width": width, "height": height,
                        "compressed_sha256": sha256(payload).hexdigest(),
                        "png_sha256": file_hash(target),
                    })
                image, tex = textures[key]
                assert name.startswith(tex["name"] + "_")
                x, y, width, height = entry["rect_xywh_unity_bottom_left"]
                top = image.height - (y + height)
                assert 0 <= x <= image.width - width and 0 <= top <= image.height - height
                frame = image.crop((x, top, x + width, top + height))
                alpha = frame.getchannel("A")
                bbox = alpha.getbbox()
                minimum_alpha, maximum_alpha = alpha.getextrema()
                assert bbox and minimum_alpha == 0 and maximum_alpha > 0, name
                target = sprite_dir / (name + ".png")
                frame.save(target)
                assert name not in frames
                frames[name] = {
                    **entry, "file": str(target.relative_to(output)), "png_sha256": file_hash(target),
                    "rect_xywh_png_top_left": [x, top, width, height], "alpha_bbox_png": list(bbox),
                    "alpha_extrema": [minimum_alpha, maximum_alpha],
                }

        controller = opening["opening_managers"][0]["player_object"]["controller"]
        opening_refs = {
            ref["name"]: (ref["file"], ref["path_id"])
            for clip in controller["clips"] for ref in clip["sprite_binding_refs"]
        }
        for name, expected in opening_refs.items():
            entry = frames[name]
            assert (entry["source_file"], entry["source_path_id"]) == expected
        variants = Counter(name.rsplit("_", 1)[0] for name in frames)
        assert variants == {"slayer_01": 28, "slayer_02": 27}
        manifest = {
            "source_xapk_sha256": digest, "source_apk": APK, "unity_version": "6000.3.10f1",
            "decoder": decoder.version, "renderer": decoder.renderer,
            "atlas_count": len(textures), "sprite_count": len(frames),
            "intro_sprite_count": len(opening_refs), "intro_sprites": sorted(opening_refs),
            "atlases": [entry for _, entry in textures.values()],
            "sprites": [
                frames[name] for name in sorted(frames, key=lambda key: (key[:9], int(key.rsplit("_", 1)[1])))
            ],
        }
    (out_assets / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
    return manifest


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("xapk", type=Path)
    parser.add_argument("--opening-evidence", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    manifest = export(args.xapk, args.opening_evidence, args.out)
    print(json.dumps({key: manifest[key] for key in ["atlas_count", "sprite_count", "intro_sprite_count"]}))


if __name__ == "__main__":
    main()
