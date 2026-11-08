# Sinh quái, rương thưởng và đặt lại wave của Slayer Legend 700.0.4

Phân tích ARM64 từ XAPK phiên bản 700.0.4, versionCode 705. Kết quả JavaScript được so với trạng thái, thứ tự lời gọi và các bit float32 do trình diễn giải lệnh ARM64 ghi lại. SHA256 các bảng đầu vào và hằng số đọc từ ELF nằm trong báo cáo native.

| Phạm vi | Bằng chứng thực chạy |
| --- | --- |
| Sinh wave, tạo rương và chuyển wave sau đòn kết liễu quái thường | 188 ca gồm 120 ca sinh wave, 36 ca tạo rương và 32 ca nối từ EnemyBase.GetDmg. Thêm 26 hợp đồng lỗi và trạng thái đã ghi trước lỗi. |
| Wave 9 → rương wave 10 → callback rương vỡ → restart → wave 0 | 16 chuỗi với 96 thao tác. Thêm 3 chuỗi hợp đồng với 18 thao tác. |
| Boss clear và tự sang màn | Đã trích thân hàm và vị trí callback để tiếp tục phân tích. |

## Chọn quái và đặt vị trí

`Start_MakeEnemy_Stage` tại `0x4e479ec` chọn một hàng từ `DataManager.MonsterDistanceInfoList` (+208) bằng `Range(0,5)`. Bảng gốc cung cấp các mẫu khóa 0–4. Vòng lặp dùng `Distances[i % 10]`, với i bắt đầu từ 0.

```text
base = endPos + right * 35
spacing = StageInfo.Scale * 0.75
offset = Distances[i % 10] * 1.5 + spacing
pos = (base + right * offset) + (forward * 0.0001) * i
base = pos + right * spacing
```

Mỗi phép nhân và cộng làm tròn float32 theo lệnh gốc. Hằng `0.0001f` tại `0x1f2991c` có byte `17b7d138`. Sau vòng lặp, `endPos` giữ vị trí cuối `pos`. Khi `MonsterCount <= 0`, hàm vẫn lấy mẫu khoảng cách rồi ghi `endPos + right*35`. Nếu pool trả null hoặc object bị hủy theo phép so sánh của Unity thì bỏ qua khởi tạo object đó. Vị trí vẫn tiến khi hàm con trả về bình thường.

`get_StageMonsterIndex` tại `0x4e51718` đọc `StageInfo.monsterIndex` (+64). Lần đầu chọn trong ba slot. Nếu giá trị bằng 0 thì chọn thêm đúng một lần trong hai slot đầu. Kết quả lần hai có thể vẫn bằng 0. Bộ đối chiếu ghi riêng RNG sinh quái và RNG vàng/rơi đồ để kiểm tra số lượt tiêu thụ.

## Khởi tạo object

| Trường hoặc thao tác | Quái thường ở `0x4e517d8` | Rương ở `0x4e47d80` |
| --- | --- | --- |
| HP tối đa và hiện tại | `EnemyHpValue` qua `get_enemyHp` | `EnemyHpValue * 5` với BigInteger |
| Atk và khả năng đánh | `Atk = 0`, `AttackPossible = false` | Giống quái thường |
| Scale sprite, scale actor | `one / MonsterInfo.scaleSize`, `one * StageInfo.Scale` | `one`, `one` |
| AttackSpeed, AttackRange | `0.7f` từ ELF `0x1f29944`, `8f` | `0f`, `0f` |
| Miss và Accuracy | `StageInfo.Miss` (+212) và `Accuracy` (+216) | Giống quái thường |
| Height, loại sát thương và trạng thái tấn công | `MonsterInfo.Height`, xóa các trường loại về 0 | `1.7f`, xóa các trường loại về 0 |
| Gán hình | Gọi `ImageSetting_Enemy` với `MonsterInfo.Index` | Gán `GameManager.BoxSprite` vào renderer |
| Hoàn thành | Theme khả dụng loại 2 gọi `SetEnemyThemeDungeonMonster`, sau đó thêm vào EnemyList và SetActive(true) | Giống quái thường |

Thân setter AttackSpeed, Miss và Accuracy của Character được nối vào bộ đối chiếu. Pool, transform Unity, nạp hình, áp theme và OnEnable được mô hình ở ranh giới gọi. List.Add ghi trực tiếp nếu còn dung lượng. Nhánh thiếu dung lượng gọi AddWithResize. Các ca kiểm tra nhánh và thứ tự, dùng mô hình dung lượng sau cấp phát.

`StageBar_Update` tại `0x4e47d28` gọi `StageFill_Coroutine` rồi StartCoroutine. Thân StageBar_Update được nối. Việc tạo iterator con và cập nhật ảnh UI nằm ở ranh giới mô hình.

## Rương vỡ và chạy lại màn đang farm

1. Quái cuối chết ở wave 9 làm WaveCount thành 10. GameManager tạo rương ở `endPos + right*35` và giữ `endPos` hiện có.
2. `EnemyBox.DeadEvent` tại `0x50f181c` gọi MonsterKill, BoxClearEffect(1), ItemDrop, DeadEffect(1), SlashEffect(8), rồi `Enemy_Dead(box,true)`.
3. `ItemDrop` tại `0x50f19b0` tạo 10 CoinEffect và 10 DropEffect EXP với DropType 2. Nếu theme khả dụng và DungeonType bằng 2 thì có 100 yêu cầu mỗi loại và DropType 5. Mỗi CoinEffect tính vàng của màn sau một lần `Range(90,111)`. Mỗi EXP drop lấy EXP signed int64 của StageInfo, currency 24, dungeonType 5, mainIndex bằng StageInfo.Index, subIndex 0. Cộng tài khoản nằm sau luồng nhặt.
4. Gỡ rương cuối khỏi EnemyList làm WaveCount thành 11. `Stage_RestartIE` tại `0x4e48220` tạo iterator. MoveNext đầu trả true và yield tham chiếu `restartDelay` ở GameManager+512. Lần kế tiếp chuyển về trạng thái -1, gọi `Stage_Reset` và trả false.
5. `Stage_Reset` tại `0x4e4f5d0` tạo delegate rồi gọi SceneChange. MethodInfo `0xa428ae8 → 0xa7e80d8 → 0x6000d78f` trỏ hàng metadata 27591, `Stage_Restart` tại `0x4e4f690`.
6. Callback đó gọi PlayerPositionChange, PlayerBattleStart, đặt WaveCount và StageFill về 0, đọc vị trí người chơi làm endPos rồi sinh wave đầu. Sau đó gọi StageGoldRenew, ResetDragonValleyBuffIcons và ghi StageClear telemetry với `CurrentStageInfo.Index + 1`. Callback dùng CurrentStageInfo hiện tại. Đổi stage sau boss đi qua luồng riêng.

Bộ kiểm chứng gọi `EnemyBox.DeadEvent` trực tiếp trên rương vừa sinh. Đường đánh rương, đăng ký delegate khi kích hoạt, khởi tạo thời lượng restartDelay và lịch phát callback của Unity cần kiểm tra riêng. Các bước MoveNext và phát callback được điều khiển trực tiếp để đối chiếu trạng thái. Ba hợp đồng restart kiểm tra thiếu callback vị trí, thiếu ảnh StageFill hoặc thiếu transform người chơi.

## Luồng boss đã đọc tĩnh

- `EnemyBoss.DeadEvent` tại `0x50c0574` gọi `BossClear` sau hiệu ứng chết. Trong mode 0, `BossClear` tại `0x4e4b870` gỡ boss, dừng ghi replay nếu đang ghi, tắt HP bar boss, dựng `StageBossClear_Coroutine` rồi chuyển iterator vào `Start_Clear`.
- Thân `StageBossClear_Coroutine.MoveNext` tại `0x4e85d4c` có ba điểm gọi `APIManager.ClearBossStage`. Hàm API ở `0x50ca0bc` ghi stageIndex tại +24, lấy BossHitCount từ DatabaseManager static+304, đặt clearCheck=true và lấy BossClearTime từ static+300. Lệnh tail-call `AddRequest` tại `0x50ca250` truyền api 116. Các điều kiện chọn điểm gọi và hành vi queue/API cần đối chiếu riêng.
- Async MoveNext tại `0x4816d2c` gọi `IsValidCode` ở `0x4816eb0`. Đường lệnh ngay sau đó đi tới hoàn tất phản hồi mà không rẽ theo giá trị trả về của IsValidCode. Cần phân tích tiếp tác dụng phụ và ngoại lệ của call, cùng nơi dùng phản hồi.
- `Button_StageClearReward_Confirm` gọi `Gold_Get(stageClearGold)` tại `0x4e4d564` và `Get_Exp_NoBuff(stageClearExp)` tại `0x4e4d5fc`. Đây là hai điểm cộng thưởng phía client có thể nối với corpus vàng và EXP đã có.

Các thân hàm trên, callback `StageClearSetting` tại `0x4e7eb78` và các entry tự sang màn nằm trong `research/boss-clear-frontier`. Chúng mới qua đọc tĩnh. Phần cần làm tiếp gồm điều kiện ghi tiến trình, nhặt đồ từ rương, IFix runtime, backend và dữ liệu hồ sơ khởi tạo.
