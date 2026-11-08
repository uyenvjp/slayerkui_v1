# Slayer Legend 700.0.4 — Giai đoạn 6: Phân biệt nhân vật chính và các đối tượng hiển thị

## Nguồn và phạm vi

- Nguồn duy nhất: XAPK `Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk` do người dùng gửi.
- Phân tích tĩnh các Unity serialized file gốc `level1`, `sharedassets1.assets` thuộc APK chính; dùng TypeTree từ UnityFS bundle `monster` **trong chính XAPK** để đọc dữ liệu bị stripped.
- Không dùng asset ngoài, không vẽ lại, không thêm hệ thống gameplay giả, không sửa tệp gốc.

## Phát hiện quan trọng nhất

### 1. Bốn `PlayerInGameDisplay` của scene `level1` thực chất thuộc `OtherPlayers`

Từ 175.594 đối tượng serialized thuộc scene `level1`, tìm thấy 4 thành phần `PlayerInGameDisplay` có PathID **156453, 156454, 156455, 156456**. Mỗi thành phần đọc đủ **716/716 byte**, đều thuộc một GameObject tên `PlayerInGameDisplay_Animation`.

Khi lần theo `Transform.m_Father`, cả bốn nằm dưới GameObject **`OtherPlayers` (PathID 3262)**:

```text
OtherPlayers (3262)
 ├─ PlayerInGameDisplay (24304)
 │   └─ PlayerInGameDisplay_Animation (22169)
 ├─ PlayerInGameDisplay (1) (24305)
 │   └─ PlayerInGameDisplay_Animation (22168)
 ├─ PlayerInGameDisplay (2) (24306)
 │   └─ PlayerInGameDisplay_Animation (22167)
 └─ PlayerInGameDisplay (3) (24303)
     └─ PlayerInGameDisplay_Animation (22170)
```

Trong prefab các layer này, cả bốn có chung các tham chiếu `skin_costume_000_0`, `skin_hair_000_0`, `skin_face_000_0`, `skin_body_000_22`, `sword_00`, nhưng đây là **giá trị serialized của đối tượng OtherPlayers**, **không xác minh ngoại hình nhân vật mặc định của tài khoản mới**.

### 2. Hai prefab khác ở `sharedassets1.assets` cũng không phải bằng chứng về nhân vật khởi đầu

Lần theo 2 GameObject từ giai đoạn 5:

```text
CampaignTimeLineManager
 └─ Pos
    └─ PlayerNpc
       └─ PlayerInGameDisplay
          └─ PlayerInGameDisplay_Animation (GO 3317)

BeastSkillGolem
 └─ PlayerPos
    └─ PlayerInGameDisplay
       └─ PlayerInGameDisplay_Animation (GO 3757)
```

Tên nhánh `PlayerNpc` và `BeastSkillGolem` cho thấy hai đối tượng này thuộc các ngữ cảnh khác với đối tượng `Player` của scene chính. **Không suy diễn chúng là Slayer mới tạo.**

### 3. Đầu mối trực tiếp để lần theo phần khởi tạo

Trong scene `level1` xác minh được:

| GameObject | GO PathID | MonoBehaviour PathID | TypeHash | Số byte |
|---|---:|---:|---|---:|
| `Player` | 6416 | 132796 | `36bbcb386faae1203b71f664ab9acbdd` | 1780 |
| `StageManager` | 5233 | 140419 | `16e980f3297c373e64063e7b9f2dc0fc` | 592 |
| `GameManager` | 2816 | 132797 | `819358658bf1f0a38071cd7775051dc6` | 3332 |
| `TutorialManager` | 1522 | 135006 | `7da07d1c74c5855ae9e59696e9d825ee` | 700 |
| `SkinManager` | 1930 | 135580 | `8c512653234ef4fac9d06fd82ee18da3` | 1564 |

Các TypeHash này được đọc trực tiếp từ serialized type table của scene. **Chưa phục hồi được TypeTree hoặc thân hàm cho các script điều khiển trên**, nên chưa thể suy ra công thức hoặc dữ liệu khởi tạo runtime.

### 4. Stage 1 vẫn chưa có hàng dữ liệu chỉ số được xác minh

Đã lần theo các GameObject `StageBar`, `StageSlots`, `StageManager`, cùng các nhãn UI `t_stageName`, `t_StageNumber`, `t_stage` và bản ghi `Localization`. Các thành phần nhãn được đọc thành công nhưng **không chứa hàng dữ liệu Stage 1 với Boss HP, Boss ATK, EXP, vàng hoặc xác suất thưởng**.

Đã đối chiếu bundle `contents`: bundle này chứa Sprite/Texture, không chứa `MonoBehaviour` dữ liệu bảng stage có thể đọc trực tiếp.

**Không được đưa các chỉ số trên wiki, video hay giá trị mặc định dự đoán vào bản port như thể chúng đã được trích từ XAPK 700.0.4.**

## Độ tin cậy và giới hạn

- Các PathID, tên GameObject, TypeHash, tham chiếu Sprite, số byte và `Transform` hierarchy trong báo cáo là dữ liệu nhị phân đọc được từ XAPK.
- Mô tả mục đích đối tượng (`OtherPlayers`, `PlayerNpc`, `BeastSkillGolem`) dựa trên tên và cây phân cấp do game lưu, không phải bằng chứng về runtime.
- **Chưa xác định chính xác sprite mặc định lúc lập tài khoản**, chưa khôi phục gameplay Stage 1 hoặc thân hàm IL2CPP.

## File bàn giao

- `level1_slayer_displays.json`: 4 bản ghi nhân vật hiển thị + Script identifiers.
- `level1_slayer_sprite_layers.csv`: 64 dòng layer và các nguồn Sprite, bao gồm giá trị null/không giải mã được.
- `level1_player_hierarchy.json`: chuỗi cha–con của scene chính.
- `sharedassets1_prefab_hierarchy.json`: chuỗi cha–con 2 prefab còn lại.
- `stage_ui_serialized_labels.json`: các tham chiếu UI liên quan Stage đọc từ scene.
- `verification_run.log`: log chạy lại parser.
- `scripts/`: mã Python chỉ đọc để tái lập trên XAPK gốc.

## Chạy lại

Cài Python 3 với `lz4` (`pip install lz4`). Từ thư mục chứa `scripts`:

```powershell
python scripts/trace_level1.py "Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" "output"
python scripts/trace_hierarchy.py "Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" level1 "output"
python scripts/trace_hierarchy.py "Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" sharedassets1.assets "output"
python scripts/scan_stage_ui.py "Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" "output"
```

**Bước cần xử lý tiếp:** đọc được TypeTree/metadata đã bảo vệ LIAPP hoặc logic nạp nhân vật để xác nhận `Player` áp dụng skin/vũ khí nào từ dữ liệu tài khoản mới; truy tìm dữ liệu `StageManager` và bảng stage thực thay vì chỉ các ô UI.
