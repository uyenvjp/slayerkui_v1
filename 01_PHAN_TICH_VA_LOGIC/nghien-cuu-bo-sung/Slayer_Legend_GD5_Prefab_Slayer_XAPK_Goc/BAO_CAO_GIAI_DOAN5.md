# Slayer Legend 700.0.4 — Giai đoạn 5: lần vết avatar Slayer từ dữ liệu gốc

**Nguồn duy nhất cho kết quả nhị phân:** `Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk` do người dùng gửi.  
**SHA-256 XAPK:** `b8c19d5fdf4da70c8c45cddf3f7e6b8a850863fd55b09b087c6d06d7001d6098`.

## Phát hiện được kiểm chứng

1. APK chính chứa scene/serialized resources của Unity 6000.3.10f1. Các scene này **không đính kèm TypeTree** (`has_type_tree=false`).
2. Ghép `type_hash` của các đối tượng scene với TypeTree từ `monster.apk` đã trích xuất, tìm thấy **2 đối tượng `PlayerInGameDisplay` trong `sharedassets1.assets`**, PathID `13136` và `13710`.
3. Đọc đủ **716/716 byte của cả hai đối tượng** sau khi sửa việc căn chỉnh chuỗi 4-byte. Cả hai thuộc GameObject `PlayerInGameDisplay_Animation` (qua local PPtr).
4. Lần theo PPtr tới từng SpriteRenderer (class ID **212**), đọc đủ **208/208 byte** của chúng; tìm trường `m_Sprite` (PPtr class ID **213**).
5. Phân tích bảng **902 external file references** của `sharedassets1.assets`, ánh xạ `m_FileID` vào các tệp Unity của APK chính; đọc `m_Name` từ chính Sprite tương ứng. Đối với vũ khí, `m_FileID=902` trỏ về `sharedassets0.assets`, Sprite PathID `467` tên **`sword_00`**.
6. Xuất **32 dòng layer**, trong đó **23 dòng có tên Sprite xác minh được**. Các dòng còn lại ghi rõ `sprite_not_assigned`/`no_renderer_reference` (không bịa hình thay thế).

## Hai prefab nhân vật được lần vết

| Layer | PathID 13136 | PathID 13710 |
|---|---|---|
| Costume | `skin_costume_000_0` | `skin_costume_000_0` |
| Head/body sprite | `skin_body_000_22` | `skin_body_000_22` |
| Hair | `skin_hair_000_0` | `skin_hair_000_0` |
| Face | `skin_face_000_0` | `skin_face_000_0` |
| Hat | `skin_hat_085_0` | `skin_hat_001_0` |
| Hair light | `skin_hair_001_2` | `skin_hair_001_2` |
| Face decoration | `skin_facedeco_002_0` | `skin_facedeco_002_0` |
| Cloak | `skin_cloak_000_0`, `skin_cloak_000_12` | giống |
| Weapon | **`sword_00`** | **`sword_00`** |

- Trường `Body.m_Sprite` đang null trong cả hai prefab. `Head` mới chứa `skin_body_000_22`. Điều này **không** chứng minh cơ thể nhân vật trống, vì script runtime có thể đặt sprite cho layer `Body`.
- Dữ liệu `isHat` ở cả hai đối tượng là `false`; do đó không nên coi sprite Hat có trong prefab là bằng chứng mũ hiển thị khi chơi.
- Tham chiếu tới `skin_*_000` và `sword_00` là **giá trị lưu trong prefab**; chưa chứng minh chính xác trang phục/người chơi mới lúc tạo tài khoản. Game có thể sửa các layer từ tài khoản, tutorial hoặc code runtime.

## Một số giá trị prefab khác

Cả hai `PlayerInGameDisplay` lưu `state=0`, `attackHitRange=1.5`, `attackHitHeight≈0.6`, `SwordEffectColorCode="FFFFFF"`. Đây là **giá trị serialized**, không phải công thức hoặc chỉ số chiến đấu cuối cùng. Thân hàm IL2CPP vẫn chưa khôi phục.

## Kiểm tra thêm scene chính `level1`

Tao đã phân tích `level1` trong APK chính (serialized file **60.199.152 byte**), dùng cùng TypeTree để giải mã **40.554 đối tượng `GameObject`**, khớp toàn bộ kích thước đọc (0 lỗi). Tìm được **1.080 đối tượng** có tên chứa các từ khóa liên quan (`player`, `stage`, `tutorial`, `start`, `costume`, v.v.). Các tên trực tiếp từ XAPK gồm `TutorialManager`, `StageBar`, `t_StageNumber`, `PanelnewbieQuest_mini`, `PlayerInGameDisplay_Animation`, `CharacterDisplay_Skin`, `SkinTf`.

Đây là bằng chứng về cấu trúc UI/scene, **không phải dữ liệu thưởng, chỉ số hoặc logic Stage 1**. Danh sách và PathID được lưu trong `scene_level1_relevant_gameobjects.csv`, thống kê trong `scene_level1_scan_stats.json`.

## Stage 1 — chưa khôi phục được dữ liệu bản 700.0.4

Dữ liệu đã trích trước đây chỉ cho biết các **tên gần nhãn** `Xls_StageInfoXlsx`: `StageName`, `MainNumber`, `SubNumber`, `BossHp`, `BossAtk`, `EquipmentProb`, `GoldAuto`, `ExpAuto`, v.v. Chưa có hàng dữ liệu Stage 1 được đọc trực tiếp từ XAPK. Không dùng con số từ wiki/video như thông số đã xác minh của bản 700.0.4.

## Giới hạn và hướng tiếp tục

- Hoàn toàn không lấy hoặc tạo asset ngoài file XAPK.
- Chưa có bản H5 mới: trước đó chưa có logic chiến đấu gốc, và mục tiêu giai đoạn này là tìm đúng nhân vật.
- Bước kế tiếp: lần vết nơi code runtime gán `skin` và vũ khí lúc tài khoản mới; khôi phục bảng stage và các giá trị dữ liệu; xử lý metadata `LIKEY` để nối được method native.

## Tái lập

Cài Python 3 và thư viện `lz4` (nếu chưa có). Từ thư mục `scripts` đi kèm:

```bash
python verify_slayer_prefab.py "/duong-dan/Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" "/thu-muc-xuat"
```

Đầu ra: `verified_avatar_prefab.json`, `avatar_sprite_references.csv` với nguồn từng asset (`sprite_file_id`, `sprite_source_file`, `sprite_path_id`, `renderer_local_path_id`). Script chỉ đọc XAPK, không sửa dữ liệu. Các script parser đi kèm trong ZIP. 

Để quét tên đối tượng trong scene `level1` (không sửa game):

```bash
python list_scene_objects.py "/duong-dan/game.xapk" "/thu-muc-xuat"
```
