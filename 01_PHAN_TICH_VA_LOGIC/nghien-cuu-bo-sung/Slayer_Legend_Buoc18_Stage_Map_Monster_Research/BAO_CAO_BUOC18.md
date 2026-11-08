# SLAYER LEGEND 700.0.4 — BƯỚC 18
## Lần vết Stage_Init → Map → Monster → HP/Boss (phân tích tĩnh)

**Nguồn:** `libil2cpp.so` từ XAPK Slayer Legend 700.0.4 người dùng đã cung cấp, giữ trong checkpoint `Slayer_Legend_700.0.4_libil2cpp_global_metadata_GOC.zip`, và bảng dữ liệu `StageInfoBase*`/`MonsterInfoBaseData` được phục hồi tại checkpoint `Slayer_Legend_Phan_Tich_Lien_Tuc.zip`. Không dùng asset ngoài, không vẽ nhân vật, không kết nối server.

**SHA-256 libil2cpp.so:** `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`.

## 1) Chuỗi khởi tạo Stage có thể xác minh từ lệnh BL

| Vị trí (ARM64 VA) | Thao tác | Hàm đích |
| --- | --- | --- |
| `0x4e42954` | Tra cứu bảng Stage theo `StageCurrent` | Generic table lookup `0x8058794` |
| `0x4e42960` | Gán kết quả tra cứu vào `GameManager.CurrentStageInfo` (+`0x208`) | `str x0, [x19,#0x208]` |
| `0x4e429a8` | Chép giá trị HP Stage vào `GameManager.EnemyHpValue` | `GameManager.set_enemyHp` |
| `0x4e42db4` | Đọc `StageInfo.MonsterCount` (+`0x48`) | Load trực tiếp |
| `0x4e42de8` | Đọc `StageInfo.Map` (+`0x4c`) | Load trực tiếp |
| `0x4e42df0` | Áp mã Map cho MapManager | `MapManager.MapSetting_Index` |
| `0x4e42e48` | Bắt đầu trạng thái chiến đấu người chơi | `PlayerBase.PlayerBattleStart` |
| `0x4e43180` | Tạo nhóm quái cho Stage | `GameManager.Start_MakeEnemy_Stage` |

Ở `0x4e42918`, StageCurrent được tải từ `DatabaseManager` (offset `0x78` theo field-map); ở `0x4e42954` dùng giá trị này để tra bảng. Đây là đường **nạp runtime**; không xác định giá trị StageCurrent đầu tiên mà server cấp cho tài khoản mới.

`MapManager.MapSetting_Index` (VA `0x4ec0c88`) gọi table lookup theo mã Map tại `0x4ec0d44`, rồi chuyển dữ liệu map đến `MapManager.LayerSetting` tại VA `0x4ec08bc` (nhảy cuối). Chưa ánh xạ được toàn bộ Map ID với các Sprite/Tile thực từ bundle.

## 2) Chọn mã quái từ `StageInfo.monsterIndex`

`GameManager.get_StageMonsterIndex` (VA `0x4e51718`) thực hiện:

1. Đọc vector monsterIndex tại `CurrentStageInfo + 0x40`.
2. `UnityEngine.Random.Range(0,3)` chọn một trong ba phần tử.
3. Nếu mã chọn được khác `0`, trả ngay mã đó.
4. Nếu chọn trúng `0`, `UnityEngine.Random.Range(0,2)` chọn lại giữa hai phần tử đầu.

Đây là **nhánh trong mã native chưa được IFix thay thế**; tỷ lệ suy luận từ `Random.Range` giả định lấy mẫu đều theo behavior của Unity. Ví dụ `Monster=[1,6,0]` tạo tỷ lệ 1:1 giữa ID 1 và 6. `Monster=[32,32,28]` tạo tỷ lệ 2:1 giữa ID 32 và 28. Không suy luận rằng quái có mã `0` là prefab hợp lệ.

`Start_MakeEnemy_Stage` (VA `0x4e479ec`) lấy `MonsterCount` từ StageInfo, tính tọa độ spawn, gọi `get_StageMonsterIndex` tại `0x4e47c68`, sau đó gọi `MakeEnemy_Stage` tại `0x4e47c80`.

`MakeEnemy_Stage` (VA `0x4e517d8`) gọi `ObjectPooler_Enemy.GetEnemy` ở `0x4e518fc`, lấy `GameManager.get_enemyHp`, gọi `Character.set_Hp_max` tại `0x4e51a28` và `Character.set_Hp_cur` tại `0x4e51a50`. Những phép gán tiếp theo và modifiers trong Enemy/Monster cần nghiên cứu riêng, nên **không coi giá trị Stage.Hp là HP cuối cùng dưới mọi buff/patch**.

## 3) Nhánh Boss

`GameManager.StageBoss_Setting` có nhánh gọi `MakeEnemy_StageBoss` (VA `0x4e51fac`). Trong hàm này:

- `0x4e520f0`: lấy quái từ `ObjectPooler_Enemy.GetEnemy`.
- `0x4e52208`: tải trường `StageInfo.BossHp` ở offset `0x80`.
- `0x4e52240` / `0x4e52268`: gọi `Character.set_Hp_max` / `set_Hp_cur`.
- `0x4e52274`: lấy `StageInfo.BossAtk` ở offset `0xa8`.
- `0x4e522a0` và `0x4e522c0`: đưa hằng `4` vào phép nhân `BigInteger` trước khi ghi một giá trị vào enemy. **Không tự khẳng định đây là công thức sát thương cuối cùng hoặc toàn bộ hệ số áp dụng trong combat**.

## 4) Đối chiếu 3.000 Stage với 952 MonsterInfoBaseData

- Có 3.000 hàng Stage, ID liên tục `0..2999`.
- Có 952 hàng `MonsterInfoBaseData`.
- Stage ID `0..1919`: 1.920 hàng có mã quái khác 0.
- Stage ID `1920..2999`: 1.080 hàng có `Monster=[0,0,0]`.
- Tổng cộng **575 mã quái khác 0** được tham chiếu từ bảng Stage, **575/575** đều tìm thấy trong `MonsterInfoBaseData`.
- **60 Stage** có mã quái khác 0 tại ô thứ 3 của vector; phần lớn các ô thứ 3 còn lại là 0.

Ví dụ các hàng đọc được từ checkpoint:

| Stage ID | Monster | MonsterCount | Map | Hp | BossHp |
| ---: | --- | ---: | ---: | ---: | ---: |
| 0 | `[6,6,0]` | 1 | 0 | 8 | 40 |
| 1 | `[1,6,0]` | 4 | 0 | 30 | 300 |
| 20 | `[53,53,0]` | 8 | 2 | 16347 | 326940 |
| 120 | `[32,32,28]` | 14 | 0 | (xem CSV) | (xem CSV) |

**Không được tự động kết luận** các Stage có `Monster=[0,0,0]` chưa phát hành; có thể có logic đặc biệt, dữ liệu chưa tải, patch hoặc cơ chế khác. Cần tìm thêm nguồn thực tế trước khi đưa chúng vào bản H5.

## 5) Kiểm chứng và giới hạn

Chạy `verify_step18.py` trên nguồn đã lưu thu được **55/55 phép kiểm tra đạt** (địa chỉ method, offset field, opcode ARM64, đích nhảy BL, kiểm tra liên tục ID và mối liên hệ bảng Stage/Monster).

```bash
python verify_step18.py libil2cpp.so all-method-map.csv field-map.csv Slayer_Legend_Stage_3000_Dong_Verified.csv MonsterInfoBaseData_from_checkpoint.json > step18_verification.json
```

Đây là **phân tích tĩnh**, không phải thử nghiệm trong game chạy. IFix có thể vá hàm; chưa có phản hồi server cho tài khoản mới; chưa giải mã đầy đủ `ObjectPooler_Enemy` đến prefab/sprite cụ thể; chưa kiểm tra xác suất loot cuối cùng hoặc công thức sát thương.

## 6) Bước 19 đề nghị

1. Lần `ObjectPooler_Enemy.GetEnemy` để liên kết **Monster ID → prefab gốc → sprite/animation** mà không vẽ lại hình.
2. Lần `MapManager.LayerSetting` và bảng Map để liên kết **Map ID → layer/texture gốc**.
3. Lần `GameManager.Enemy_Dead`/`StageGoldRenew` để nối **Stage reward với xử lý rơi đồ và tăng cấp**.
4. Giữ `initial_stage_current` và `initial_character` ở trạng thái **CHƯA XÁC MINH**.

**Trạng thái sản phẩm:** checkpoint phân tích nguồn đã mở rộng; chưa dựng H5 mới, không bổ sung asset không có trong XAPK.
