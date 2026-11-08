# Slayer Legend 700.0.4 — Bước 19: Monster ID → Sprite PathID, Map layers, Stage item drop

Ngày kiểm định: 04/11/2026. Chỉ sử dụng XAPK gốc và các bảng dữ liệu, metadata, `libil2cpp.so` trích từ XAPK do người dùng cung cấp. **Không tạo/vẽ asset, không kết nối server, không chạy game Android.**

## Nguồn và tính toàn vẹn

- XAPK `Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk`: SHA-256 `b8c19d5fdf4da70c8c45cddf3f7e6b8a850863fd55b09b087c6d06d7001d6098`.
- Native `libil2cpp.so`: SHA-256 `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`.
- Hai bundle gốc được mở từ XAPK: `monster.apk → assets/assetpack/monster`, `map.apk → assets/assetpack/map`. UnityFS/LZMA; các đối tượng Sprite class ID 213 đọc trực tiếp `m_Name` và PathID.
- Bảng Stage 3.000 dòng, bảng Monster 952 dòng thuộc checkpoint phân tích trước; **đã đối chiếu riêng với XAPK gốc bằng chuỗi tên Sprite**, chưa kiểm chứng hành vi runtime.

## A. Monster ID → Sprite trong XAPK

- `monster` có 27.353 serialized objects: **15.987 Sprite (class 213)** và **1.054 Texture2D (class 28)**.
- `MonsterInfoBaseData.json`: 952 ID. Trong đó **871 ID có đúng 16 frame tên `{key}_0...{key}_15`**; 77 ID không có frame theo quy tắc tên này; 4 ID chỉ có một phần frame.
- Bảng Stage 0–1919 dùng **575 Monster ID khác 0**. **574/575 ID** đối chiếu thành công với đầy đủ 16 Sprite gốc. Một ID chưa có bộ frame tương ứng: **Monster ID 102**, được tham chiếu tại Stage **57, 58, 59**; không tìm thấy `102_0` ... `102_15` trong bundle monster. **Không kết luận là không có model ở nơi khác.**
- Dạng tên đọc được trực tiếp: ID 1 → `001_0..15`, ID 6 → `006_0..15`, ID 28 → `028_0..15`, ID 32 → `032_0..15`, ID 53 → `053_0..15`. Với ID >= 1000 dùng tiền tố số thập phân không thêm số 0 phía trước trong danh mục.
- Mỗi Sprite trong hai danh mục JSON đều có **PathID nguyên bản**, không phải ID do người phân tích tự tạo. Sprite file/path ID có thể được dùng để tái trích xuất texture và cắt rect trong bước sau.

### Các điểm mã native

| VA / lời gọi | Ý nghĩa đã kiểm chứng |
|---|---|
| `0x4e518fc` → `0x4ecb900` | `GameManager.MakeEnemy_Stage` gọi `ObjectPooler_Enemy.GetEnemy` |
| `0x4ecb900` | `GetEnemy` phân nhánh theo loại object và pool tương ứng, **không đơn giản là bảng Monster ID → Sprite** |
| `0x4e51a00` | `MakeEnemy_Stage` tra `MonsterInfoBaseData` bằng Monster ID |
| `0x50b4c54` → `0x4cc9b4c` | `EnemyBase.ImageSetting_Enemy` gọi `AssetManager.GetMonsterSprite` |
| `0x4cc9c60` → `0x4cc9aa0` | `AssetManager.GetMonsterSprite` gọi `MonsterIndexKey` |
| `0x4cc9b10` | `MonsterIndexKey` phân nhánh theo ID > 999 |

`EnemyBase.ImageSetting_Enemy` sử dụng các chỉ số Sprite: `[0..5]` đưa vào `Character.atk_sprite`, `[6..11]` vào `Character.walk_sprite`, `[13..15]` vào `Character.idle_sprites`, `[12]` vào `Character.hit_sprite`. Đây là cách **các frame được gán theo nhánh native**, không xác minh FPS, thời lượng hoặc việc IFix thay đổi hành vi khi chạy. Không khẳng định bộ `daed_sprite` được nạp tại hàm này.

## B. Map layers

- Bundle `map` có **1.356 Sprite, 320 Texture2D**, trong đó **1.179 Sprite** có tên theo khuôn `Tên Map Layer NN`.
- Phân loại thành **149 nhóm tên bản đồ/layer**; tên, số layer và PathID lưu ở `MapSprite_Layer_Index.csv`.
- Native `MapManager.LayerSetting` VA `0x4ec08bc` gọi `AssetManager.GetMapSprite` tại `0x4ec09a8`, với chỉ số layer tăng dần; kết quả được gán qua `SpriteRenderer.set_sprite` tại `0x4ec0b08` và có nhánh bật/tắt GameObject khi có/không có Sprite.
- **Chưa xác minh ánh xạ StageInfo.Map (mã số) → tên Map cụ thể**. Không nên tự gán mã 0 là Forest chỉ vì thấy Forest trong bundle.

## C. Quái chết và phần thưởng

- `EnemyNormal.DeadEvent` VA `0x50f9388` gọi `EnemyNormal.StageItemDrop` tại `0x50f9510` trong nhánh theo gameMode, và gọi `GameManager.Enemy_Dead` ở `0x50f97dc`.
- `StageItemDrop` VA `0x50f9804` có nhiều nhánh `UsefulManager.Probability`, `ObjectPooler_Effect.CoinEffect`, `ObjectPooler_Effect.DropEffect`, `EnemyNormal.SoulDivision`. Có kiểm tra liên quan sự kiện, cảnh báo và `APIManager.HackerCount`. **Không suy diễn toàn bộ tỷ lệ và món đồ khi chưa xác định các trường/đường code đầy đủ**.
- `GameManager.StageGoldRenew` VA `0x4e43884` lấy `CurrentStageInfo.Gold`, gọi `GameManager.GoldAmount_Cal` để xử lý phần thưởng/buff và lưu `GameManager.stageGold` tại offset `0x4d8`.
- `GameManager.get_StageGoldAmount` VA `0x4e513b4` đọc `stageGold`, dùng `UnityEngine.Random.Range(int 90, int 111)`; tính `(stageGold × random_int)/100` bằng `System.Numerics.BigInteger` và lưu `stageGoldAmount` tại offset `0x528`.
- Nhánh native chưa có IFix ghi đè sẽ cho R nguyên **90..110** (cận trên 111 không được chọn theo Unity int Range). Đây là **công thức lượng vàng ngẫu nhiên từ giá trị đã tính buff**, không phải toàn bộ đường thưởng cuối, và không xác minh cách người chơi nhận vàng khi nhặt effect.

## D. Kiểm chứng

Chạy `verify_step19.py` trên bản XAPK gốc, bảng Stage, Monster JSON và libil2cpp:

**29/29 kiểm tra đạt**, bao gồm kiểm tra checksum 2 nguồn, số lượng object Sprite, các Monster ID dùng trong Stage, việc ID 102 không có 16 frame trong bundle, 149 nhóm layer, 10 nhánh `BL` AArch64 và 3 mã lệnh MOV constants của công thức vàng.

Có script và `verification_step19.json` để kiểm chứng lại; kiểm tra này là **phân tích tĩnh, không phải test game chạy**.

## E. Giới hạn và bước 20

1. **Chưa xuất PNG** từ Texture2D/atlas ASTC/ETC2 và chưa phục hồi Sprite rect, pivot, điều chỉnh hướng hoặc FPS. Danh mục Sprite chỉ là `m_Name`, PathID và chiều dài serialized của object.
2. Chưa kiểm chứng nguồn thay thế của Monster ID 102 và thiếu frame ở các Monster ID không xuất hiện trong Stage thông thường.
3. Chưa phục hồi ánh xạ Map ID → tên/nhóm layer cụ thể; chỉ có catalog các layer và đường hàm.
4. Chưa xác định đầy đủ tỷ lệ item drop, EXP/currency trao cho tài khoản, Stage RewardBox, các thay đổi IFix hay dữ liệu server runtime.

**Bước 20:** giải `Sprite.m_RD.texture`, rect và `Texture2D.m_StreamData` để xuất được **PNG gốc đúng frame** cho các Monster Stage đầu; đồng thời tìm ánh xạ `MapNameList` và phân tích nhánh drop được kích hoạt trong mode Stage. Nếu chưa giải được texture/địa chỉ resource thì ghi "CHƯA TRÍCH XUẤT", không thay asset ngoài.
