"""Connect a spawned box to its death subscriber and explicit restart steps."""

from stage_spawn_vm import ENTRIES, Program, StageSpawnVM, make_spawn_program, signed

BOX_DEAD_EVENT = 0x50F181C
RESTART_FACTORY = 0x4E48220
RESTART_NEXT = 0x4E86F14
STAGE_RESET = 0x4E4F5D0
STAGE_RESTART = 0x4E4F690


def make_cycle_program(source, root):
    program = make_spawn_program(source, root)
    extra = Program(source, [
        root / "research/box-death",
        root / "research/stage-restart",
        root / "research/spawn-dependencies",
        root.parent / "logic-step13/research/game-death-chain",
    ])
    ranges = [
        (BOX_DEAD_EVENT, 0x50F1D14),
        (RESTART_FACTORY, 0x4E482C8),
        (0x4E86EE8, 0x4E86F88),
        (STAGE_RESET, 0x4E4F7F4),
    ]
    for low, high in ranges:
        assert low in extra.instructions and high - 4 in extra.instructions
    program.instructions.update({
        pc: op for pc, op in extra.instructions.items()
        if any(low <= pc < high for low, high in ranges)
    })
    return program


class StageCycleVM(StageSpawnVM):
    def __init__(self, program, fixture):
        super().__init__(program, fixture)
        restart = fixture["restart"]
        self.restart_iterator = 0
        self.scene_callback = 0
        self.wait_object = self.zero(32) if restart["waitPresent"] else 0
        self.write(self.game + 512, 8, self.wait_object)
        self.write(self.game + 48, 8, self.zero(32) if restart["playerTransformPresent"] else 0)
        self.write(self.game + 1200, 8, self.zero(32) if restart["fillImagePresent"] else 0)
        game_class = self.read(self.p.elf.u64(0xA3F2228), 8)
        self.write(self.read(game_class + 184, 8) + 56, 8,
                   self.delegate(0xFFFF3100) if restart["positionCallbackPresent"] else 0)
        self.restart_method_info = self.read(self.p.elf.u64(0xA428AE8), 8)

    def observe_instruction(self, pc):
        name = {
            BOX_DEAD_EVENT: "EnemyBox.DeadEvent",
            0x50F19B0: "EnemyBox.ItemDrop",
            RESTART_FACTORY: "Stage_RestartIE",
            STAGE_RESET: "Stage_Reset",
            STAGE_RESTART: "Stage_Restart",
        }.get(pc)
        if name:
            self.emit(name)
        super().observe_instruction(pc)

    def hook(self, target):
        lr = self.reg("x30")
        if target == 0x4D0A814:
            self.emit("Effect.BoxClear", self.fp("s0"))
        elif target == 0x53C6FD4 and lr == 0x50F1AB8:
            self.put("w0", self.spawn["theme"]["usable"])
        elif target == 0x4590CFC and lr in (0x4E48290, 0x4E4F654):
            pointer = self.zero(64)
            if lr == 0x4E48290:
                self.restart_iterator = pointer
                self.coroutines[pointer] = "Stage_RestartIE"
            self.put("x0", pointer)
        elif target == 0x8EBC228 and lr == 0x4E86F00:
            pass  # BCL System.Object constructor for the iterator.
        elif target == 0x4E7D560:
            assert self.reg("x1") == self.game and self.reg("x2") == self.restart_method_info
            self.write(self.reg("x0") + 24, 8, STAGE_RESTART)
        elif target == 0x4E45AD8:
            assert self.reg("x0") == self.game
            self.scene_callback = self.read(self.reg("x2") + 24, 8)
            assert self.scene_callback == STAGE_RESTART
            assert [self.reg(r) for r in ["x1", "x3", "x4", "w5"]] == [0, 0, 0, 1]
            self.emit("SceneChange", None, "Stage_Restart", None, None, True)
        elif target == 0xFFFF3100:
            self.emit("PlayerPositionChange")
        elif target == 0x4EF4A60:
            self.emit("PlayerBattleStart")
        elif target == 0x9B24F9C:
            self.emit("StageFill.Set", self.fp("s0"))
        elif target == 0x9A1312C and lr == 0x4E4F78C:
            for axis, value in enumerate(self.f["restart"]["playerPosition"]):
                self.setfp(f"s{axis}", value)
        elif target in (0x4E43884, 0x4E4F7F4, 0x47A4278):
            self.emit({
                0x4E43884: "StageGoldRenew",
                0x4E4F7F4: "ResetDragonValleyBuffIcons",
                0x47A4278: "StageLog.StartStopwatch",
            }[target])
        elif target == 0x47A4050:
            self.put("x0", self.zero(32))
        elif target == 0x47A54AC:
            self.emit("StageLog.StageClear", signed(self.reg("w1"), 32))
        else:
            super().hook(target)

    def step(self, action):
        self.put("x30", self.RETURN)
        previous = len(self.effects)
        error = None
        returned = None
        try:
            if action == "killNormal":
                hit = self.f["args"]
                self.pair("x1", "x2", int(hit["damage"]))
                self.put("w3", hit["criticalType"])
                self.put("w4", hit["attackElement"])
                self.put("w5", hit["skillDamage"])
                self.put("w6", hit["trueDamage"])
                self.put("x7", self.tag)
                self.write(self.sp, 4, hit["damageType"])
                self.run(ENTRIES["death"], this_ptr=self.enemy)
            elif action == "boxDeadEvent":
                box, = (ptr for ptr in self.enemies if self.spawn_objects[ptr]["kind"] == "box")
                self.run(BOX_DEAD_EVENT, this_ptr=box)
            elif action == "restartMoveNext":
                assert self.restart_iterator
                self.run(RESTART_NEXT, this_ptr=self.restart_iterator)
                returned = bool(self.reg("w0"))
            elif action == "sceneCallback":
                assert self.scene_callback == STAGE_RESTART
                entry, self.scene_callback = self.scene_callback, 0
                self.run(entry, this_ptr=self.game)
            else:
                raise ValueError(action)
        except RuntimeError as exception:
            if "Native NullReference" not in str(exception):
                raise
            error = "Native NullReference"
        iterator = None
        if self.restart_iterator:
            current = self.read(self.restart_iterator + 24, 8)
            assert not current or current == self.wait_object
            iterator = {
                "state": signed(self.read(self.restart_iterator + 16, 4), 32),
                "current": "restartDelay" if current else None,
            }
        return {
            "action": action,
            "effects": self.effects[previous:],
            "returned": returned,
            "error": error,
            "game": self.snapshot()["game"],
            "spawn": self.spawn_snapshot(),
            "restart": {"iterator": iterator, "sceneCallbackPending": bool(self.scene_callback)},
            "rewardDraws": self.draw,
        }
