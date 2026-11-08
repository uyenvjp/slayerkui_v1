"""Run the original stage-spawn instructions with explicit Unity dependencies."""

import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "logic-step13/tools"))
from stage_death_vm import StageDeathVM, signed
from enemy_lifecycle_vm import Program
from lifecycle_program import make_program
from native_flow_vm import Wrapped

ENTRIES = {
    "wave": 0x4E479EC,
    "box": 0x4E47D80,
    "death": 0x50B7810,
}


def make_spawn_program(source, root):
    previous = root.parent
    program = make_program(source, previous / "logic-step13", full=True)
    extra = Program(source, [
        previous / "logic-step7/research/game-stage",
        previous / "logic-step13/research/game-death-chain",
        root / "research/character",
    ])
    ranges = [
        (0x4E46518, 0x4E465F0),  # EnemyRemove
        (0x4E466F8, 0x4E48220),  # Enemy_Dead, wave, stage bar, box
        (0x4E51610, 0x4E51D24),  # HP getter, monster index, MakeEnemy_Stage
        (0x5016744, 0x50167A0),  # Character.set_AttackSpeed
        (0x50167E8, 0x5016844),  # Character.set_Miss
        (0x501688C, 0x50168E8),  # Character.set_Accuracy
    ]
    for low, high in ranges:
        assert low in extra.instructions and high - 4 in extra.instructions, hex(low)
    program.instructions.update({
        pc: op for pc, op in extra.instructions.items()
        if any(low <= pc < high for low, high in ranges)
    })
    return program


class StageSpawnVM(StageDeathVM):
    def __init__(self, program, fixture):
        super().__init__(program, fixture)
        spawn = self.spawn = fixture["spawn"]
        self.spawn_draw = 0
        self.spawn_objects = {}
        self.spawn_attempts = 0
        self.game_objects = {}
        self.transforms = {}
        self.renderers = {}
        self.coroutines = {}
        self.distance_rows = self.make_dictionary(spawn["distancePatterns"], self.make_distance_row)
        self.monster_rows = self.make_dictionary(spawn["monsterRows"], self.make_monster_row)
        self.write(self.data + 208, 8, self.distance_rows)
        self.write(self.data + 160, 8, self.monster_rows)
        self.write(self.game + 1420, 4, spawn["monsterCount"])
        self.wrap(self.game + 1336, 40, int(spawn["enemyHp"]), "SilentBigInt")

        stage = spawn["stage"]
        self.write(self.game + 520, 8, self.stage if stage is not None else 0)
        if stage is not None:
            self.write(self.stage + 64, 8, self.array(stage["indices"], False))
            for offset, key in [(84, "scale"), (212, "miss"), (216, "accuracy")]:
                self.set_float(self.stage + offset, stage[key])

        vector_class = self.read(self.p.elf.u64(0xA3E8278), 8)
        vector_static = self.read(vector_class + 184, 8)
        for offset, key in [(12, "oneVector"), (84, "forwardVector")]:
            for axis, value in enumerate(spawn[key]):
                self.set_float(vector_static + offset + axis * 4, value)

        self.instances["ObjectPooler_Enemy"] = self.zero(32) if spawn["poolPresent"] else 0
        self.pool_method_args = {}
        for usage, kind in [(0xA41FB10, "normal"), (0xA4288B8, "box")]:
            ref = self.p.elf.u64(usage)
            self.pool_method_args[self.read(ref, 8)] = kind
        self.box_sprite = self.zero(16)
        self.write(self.game + 1440, 8, self.box_sprite)
        self.list_capacity = spawn["listCapacity"]
        if self.enemy_list:
            self.write(self.enemy_list + 28, 4, 0)
            self.write_list_array(max(len(self.enemies), self.list_capacity))

        # MethodInfo's rgctx type entry for the List.AddWithResize slow path.
        list_context = self.zero(224)
        list_args = self.zero(128)
        list_method = self.zero(48)
        self.write(list_method + 32, 8, list_context)
        self.write(list_context + 192, 8, list_args)
        self.write(list_args + 112, 8, self.zero(8))
        self.write(self.p.elf.u64(0xA4288A8), 8, list_method)

        # The same generic theme singleton also serves StageItemDrop.
        generic = self.read(self.read(0xA414F68, 8), 8)
        context = self.read(generic + 32, 8)
        args = self.read(context + 192, 8)
        klass = self.read(args + 16, 8)
        static = self.read(klass + 184, 8)
        self.theme = self.read(static, 8)
        if spawn["theme"] is None:
            self.write(static, 8, 0)
        else:
            info = self.read(self.theme + 72, 8)
            self.write(info + 40, 4, spawn["theme"]["type"])

    def set_float(self, address, value):
        self.write(address, 4, int.from_bytes(struct.pack("<f", value), "little"))

    def float_bits(self, address):
        return self.read(address, 4).to_bytes(4, "little").hex()

    def register_vector_bits(self, count=3):
        return [
            (self.vector(f"s{axis}")[0] & 0xFFFFFFFF).to_bytes(4, "little").hex()
            for axis in range(count)
        ]

    def array(self, values, floating):
        if values is None:
            return 0
        pointer = self.zero(32 + 4 * len(values))
        self.write(pointer + 24, 8, len(values))
        for index, value in enumerate(values):
            address = pointer + 32 + 4 * index
            if floating:
                self.set_float(address, value)
            else:
                self.write(address, 4, value)
        return pointer

    def make_dictionary(self, rows, build_row):
        if rows is None:
            return 0
        pointer = self.zero(32)
        self.native_dicts[pointer] = {
            int(key): build_row(value) if value is not None else 0
            for key, value in rows.items()
        }
        return pointer

    def make_distance_row(self, values):
        pointer = self.zero(32)
        self.write(pointer + 24, 8, self.array(values, True))
        return pointer

    def make_monster_row(self, row):
        pointer = self.zero(64)
        self.write(pointer + 16, 4, row["index"])
        self.set_float(pointer + 44, row["scaleSize"])
        self.set_float(pointer + 52, row["height"])
        return pointer

    def write_list_array(self, capacity):
        array = self.zero(32 + 8 * capacity)
        self.write(array + 24, 8, capacity)
        for index, ptr in enumerate(self.enemies):
            self.write(array + 32 + 8 * index, 8, ptr)
        self.write(self.enemy_list + 16, 8, array)

    def allocate_enemy(self, kind):
        ordinal = self.spawn_attempts
        self.spawn_attempts += 1
        status = self.spawn["poolEntries"].get(str(ordinal), "ok")
        self.emit("EnemyPool.Get", kind, ordinal, status)
        if status == "missing":
            return 0

        pointer = self.zero(1024)
        klass = self.zero(1400)
        self.write(pointer, 8, klass)
        for offset, target in [
            (456, 0x5016744), (488, 0x50167E8), (520, 0x501688C), (968, 0xFFFF3000),
        ]:
            self.write(klass + offset, 8, target)
        for offset, role, absent in [
            (176, "root", "noTransform"), (328, "scaler", "noScaler"),
            (336, "spriteScaler", "noSpriteScaler"),
        ]:
            transform = 0 if status == absent else self.zero(32)
            self.write(pointer + offset, 8, transform)
            if transform:
                self.transforms[transform] = (ordinal, role)
        renderer = 0 if status == "noRenderer" else self.zero(32)
        self.write(pointer + 120, 8, renderer)
        if renderer:
            self.renderers[renderer] = ordinal
        self.game_objects[pointer] = 0 if status == "noGameObject" else pointer
        self.wrap(pointer + 40, 40, -1, "SilentBigInt")
        self.wrap(pointer + 80, 40, -2, "SilentBigInt")
        self.write(pointer + 368, 8, 777)
        self.write(pointer + 361, 1, 1)
        self.write(pointer + 304, 4, 4)
        self.write(pointer + 404, 4, 7)
        self.write(pointer + 408, 4, 9)
        for offset in [184, 188, 192, 384, 388]:
            self.set_float(pointer + offset, -3.5)
        self.spawn_objects[pointer] = {
            "ordinal": ordinal, "kind": kind, "status": status, "active": False,
        }
        return pointer

    def observe_instruction(self, pc):
        if pc == ENTRIES["wave"]:
            self.emit("Start_MakeEnemy_Stage")
        elif pc == 0x4E517D8:
            self.emit("MakeEnemy_Stage", signed(self.reg("w1"), 32), self.register_vector_bits())
        elif pc == ENTRIES["box"]:
            self.emit("MakeEnemy_RewardBox", self.register_vector_bits())
        elif pc == 0x4E47D28:
            self.emit("StageBar_Update")
        super().observe_instruction(pc)

    def hook(self, target):
        lr = self.reg("x30")
        if target == 0x99FB600 and lr in (0x4E47B04, 0x4E51774, 0x4E517AC):
            low, high = self.reg("w0"), self.reg("w1")
            value = self.spawn["draws"][self.spawn_draw]
            assert low <= value < high, (low, high, value)
            self.spawn_draw += 1
            self.emit("Spawn.RandomInt", low, high, value)
            self.put("w0", value)
        elif target == 0x8058794 and self.reg("x0") in (self.distance_rows, self.monster_rows):
            dictionary = self.reg("x0")
            key = signed(self.reg("w1"), 32)
            label = "distance" if dictionary == self.distance_rows else "monster"
            self.emit("Spawn.Lookup", label, key)
            rows = self.native_dicts[dictionary]
            if key not in rows:
                raise ValueError("Native KeyNotFound")
            self.put("x0", rows[key])
        elif target == 0x4590D14:
            raise ValueError("Native ArrayBounds")
        elif target == 0x4ECB900:
            self.put("x0", self.allocate_enemy(self.pool_method_args[self.reg("x1")]))
        elif target == 0x9A04F90 and lr in (0x4E51930, 0x4E47EB0):
            pointer = self.reg("x0")
            self.put("w0", not pointer or self.spawn_objects[pointer]["status"] == "destroyed")
        elif target == 0x9A005E0 and self.reg("x0") in self.spawn_objects:
            self.put("x0", self.read(self.reg("x0") + 176, 8))
        elif target in (0x9A13208, 0x9A13498, 0x9A13A4C) and self.reg("x0") in self.transforms:
            ordinal, role = self.transforms[self.reg("x0")]
            names = {0x9A13208: "Position", 0x9A13498: "Rotation", 0x9A13A4C: "Scale"}
            self.emit("Spawn." + names[target], ordinal, role,
                      self.register_vector_bits(4 if target == 0x9A13498 else 3))
        elif target == 0x99F32F4:
            assert self.read(self.reg("x0"), 8) == self.read(self.reg("x0") + 8, 4) == 0
            for axis, value in enumerate((0, 0, 0, 1)):
                self.setfp(f"s{axis}", value)
        elif target == 0xFFFF3000:
            self.emit("ImageSetting_Enemy", self.spawn_objects[self.reg("x0")]["ordinal"],
                      signed(self.reg("w1"), 32))
        elif target == 0x99B2138:
            assert self.reg("x1") == self.box_sprite
            self.emit("RewardBox.SetSprite", self.renderers[self.reg("x0")])
        elif target == 0x53C6FD4 and lr in (0x4E51C18, 0x4E48118):
            self.put("w0", self.spawn["theme"]["usable"])
        elif target == 0x4E51D24:
            self.emit("SetEnemyThemeDungeonMonster", self.spawn_objects[self.reg("x1")]["ordinal"])
        elif target == 0x4590A04 and lr in (0x4E51CCC, 0x4E481CC):
            pointer = self.read(self.reg("x0"), 8)
            self.enemies.append(pointer)
            assert self.read(self.enemy_list + 24, 4) == len(self.enemies)
            self.emit("EnemyList.Add", self.spawn_objects[pointer]["ordinal"], "inline")
        elif target == 0x6C08C90:
            assert self.reg("x0") == self.enemy_list
            pointer = self.reg("x1")
            self.enemies.append(pointer)
            self.write(self.enemy_list + 24, 4, len(self.enemies))
            capacity = self.read(self.read(self.enemy_list + 16, 8) + 24, 8)
            self.write_list_array(max(4 if capacity == 0 else capacity * 2, len(self.enemies)))
            self.emit("EnemyList.Add", self.spawn_objects[pointer]["ordinal"], "resize")
        elif target == 0x6C0A1B0:
            found = self.reg("x1") in self.enemies
            capacity = self.read(self.read(self.enemy_list + 16, 8) + 24, 8)
            super().hook(target)
            if found:
                self.write(self.enemy_list + 28, 4, self.read(self.enemy_list + 28, 4) + 1)
                self.write_list_array(capacity)
        elif target == 0x9A006B0 and self.reg("x0") in self.spawn_objects:
            self.put("x0", self.game_objects[self.reg("x0")])
        elif target == 0x9A03BD4 and self.reg("x0") in self.spawn_objects:
            row = self.spawn_objects[self.reg("x0")]
            row["active"] = bool(self.reg("w1"))
            self.emit("Spawn.SetActive", row["ordinal"], row["active"])
        elif target in (0x4E50A00, 0x4E48220):
            name = "StageFill_Coroutine" if target == 0x4E50A00 else "Stage_RestartIE"
            self.emit(name)
            pointer = self.zero(32)
            self.coroutines[pointer] = name
            self.put("x0", pointer)
        elif target == 0x9A05BFC:
            self.emit("Game.StartCoroutine", self.coroutines[self.reg("x1")])
            self.put("x0", self.zero(32))
        else:
            super().hook(target)

    def spawn_snapshot(self):
        actors = []
        for pointer, row in self.spawn_objects.items():
            atk = self.read(pointer + 368, 8)
            fields = {
                "hpMax": str(self.read(pointer + 40, 8).value),
                "hpCur": str(self.read(pointer + 80, 8).value),
                "attack": str(atk.value if hasattr(atk, "value") else atk),
                "attackPossible": bool(self.read(pointer + 361, 1)),
                "characterDmgType": signed(self.read(pointer + 304, 4), 32),
                "enemyAttackType": signed(self.read(pointer + 404, 4), 32),
                "abnormalStateAttackType": signed(self.read(pointer + 408, 4), 32),
            }
            for key, offset in [
                ("attackSpeedBits", 184), ("missBits", 188), ("accuracyBits", 192),
                ("attackRangeBits", 384), ("heightBits", 388),
            ]:
                fields[key] = self.float_bits(pointer + offset)
            actors.append({**row, **fields})
        return {
            "draws": self.spawn_draw,
            "attempts": self.spawn_attempts,
            "actors": actors,
            "listVersion": self.read(self.enemy_list + 28, 4) if self.enemy_list else None,
            "listCapacity": self.read(self.read(self.enemy_list + 16, 8) + 24, 8) if self.enemy_list else None,
        }
