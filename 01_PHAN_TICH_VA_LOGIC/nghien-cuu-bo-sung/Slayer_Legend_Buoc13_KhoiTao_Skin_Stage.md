# Slayer Legend 700.0.4 — Bước 13: Lần vết khởi tạo ngoại hình Slayer và chuyển Stage

**Trạng thái:** đã hoàn thành kiểm tra tĩnh theo phạm vi dưới đây; chưa khôi phục mặc định tài khoản mới, chưa hoàn tất logic offline.  
**Nguồn đã đọc:** `Slayer_Legend_Phan_Tich_Lien_Tuc.zip` (checkpoint có bảng Stage/field/method), `Slayer_Legend_700.0.4_libil2cpp_global_metadata_GOC.zip` (bản `libil2cpp.so` lấy từ XAPK do người dùng cung cấp). Không dùng asset hoặc dữ liệu bên ngoài.

## 1. Kiểm chứng nguồn

- `libil2cpp.so` SHA-256: `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`, trùng SHA công bố trong checkpoint bước 7.
- Phân tích ARM64 tĩnh trên đoạn mã native; kiểm tra các lệnh `BL` theo mã máy AArch64 và các địa chỉ đã định danh trong method map.
- Kiểm tra 8 hàm mục tiêu; tất cả các cạnh gọi trực tiếp kỳ vọng đều tìm thấy. Đây là kiểm tra **đường gọi**, không phải thực thi chúng hoặc kiểm chứng mọi nhánh.
- Đọc 3.000 hàng `StageInfoBaseData` + `StageInfoBase1000Data` + `StageInfoBase2000Data`: ID liên tục từ 0–2999. Trong bảng đầu, mỗi `MainNumber` từ 0–49 có đúng 20 `SubNumber`.

## 2. Ngoại hình Slayer: đầu mối mới

### A. Dữ liệu ngoại hình là dữ liệu động

```text
SkinManager.GetMyOriginalSkinData       VA 0x535ecc4
  └─ SkinManager.theDB                  offset 0x20
      └─ DatabaseManager.BuildUserAppearanceInfo  VA 0x4d4bc84
          ├─ get_UsingSkin / get_HairBleach
          ├─ get_Skin_BodyIndex
          ├─ get_Skin_FaceIndex
          ├─ get_Skin_HairIndex / get_Skin_HairColor
          ├─ get_Skin_HatIndex
          ├─ get_Skin_CostumeIndex
          ├─ get_Skin_FaceDecoIndex / get_Skin_EarringIndex
          ├─ get_Skin_BeastIndex / get_Skin_Lens
          └─ get_UsingSkin_Weapon / get_Skin_WeaponIndex
```

Đã đối chiếu các lời gọi trên với `libil2cpp.so` baseline. `BuildUserAppearanceInfo` tạo dữ liệu ngoại hình từ những getter của `DatabaseManager`; **không có căn cứ để cố định nhân vật mới ở các layer có trong prefab `OtherPlayers` hoặc `PlayerNpc`.**

### B. Hai nhóm thuộc tính skin, được chọn theo `CharacterNumber`

Từ `field-map.csv` (instance fields của `DatabaseManager`):

| Offset | Trường | Ý nghĩa kiểm chứng |
|---|---|---|
| `0x568` | `CharacterNumber` | Điều kiện chọn nhóm dữ liệu |
| `0x584` / `0x5B0` | `Skin_BodyIndex0` / `Skin_BodyIndex1` | Hai chỉ số skin Body |
| `0x588` / `0x5B4` | `Skin_CostumeIndex0` / `Skin_CostumeIndex1` | Hai chỉ số costume |
| `0x58C` / `0x5B8` | `Skin_FaceIndex0` / `Skin_FaceIndex1` | Hai chỉ số khuôn mặt |
| `0x590` / `0x5BC` | `Skin_HairIndex0` / `Skin_HairIndex1` | Hai chỉ số tóc |

Thân `DatabaseManager.get_Skin_BodyIndex` (`0x4d4b038`) cho thấy:

- Nếu `CharacterNumber == 0`: đọc `Skin_BodyIndex0` tại offset `0x584`.
- Nếu `CharacterNumber != 0`: đọc `Skin_BodyIndex1` tại offset `0x5B0`.

Như vậy cơ chế lựa chọn skin **không đơn giản là lấy mã `skin_*_000`**. Tuy nhiên từ đường gọi này **chưa biết giá trị `CharacterNumber` và các SkinIndex khi tài khoản vừa khởi tạo**.

### C. Từ cấu hình đến lớp hiển thị

```text
PlayerInGameDisplay.InitPlayer_MySkin   VA 0x535214c
  └─ PlayerInGameDisplay.SettingSkin   VA 0x5351af8
      ├─ PlayerInGameSkinData.SettingData
      ├─ PlayerInGameDisplay.WeaponDisplay_Setting
      └─ PlayerInGameDisplay.CostumeSetting_Default
```

Chính phương thức `InitPlayer_MySkin` cũng có nhánh IFix patch có thể thay logic baseline. Cấu hình runtime và patch thực tế chưa được xác định.

## 3. Chọn Stage: nhánh API và local đều tồn tại

```text
StageManager.SelectStage                 VA 0x53a2688
  ├─ đối tượng tham số StageInfo.Index   offset 0x20 (int)
  ├─ APIManager.EnterStage              VA 0x50d0ab4
  └─ GameManager.SceneChage_BlackOut_StageInit VA 0x4e45d00

GameManager.Stage_Init                  VA 0x4e425bc
  ├─ MapManager.MapSetting_Index        VA 0x4ec0c88
  ├─ PlayerBase.PlayerBattleStart       VA 0x4ef4a60
  └─ GameManager.Start_MakeEnemy_Stage  VA 0x4e479ec
```

Địa chỉ trường `StageInfo.Index` được đối chiếu với field map của `StageInfo`; trong ASM `SelectStage` đọc `w22` từ `StageInfo + 0x20` và truyền làm tham số cho `EnterStage`.

`UserData.get_StageCurrent` (`0x53eb268`) là getter đọc số nguyên ở `UserData + 0x30`. Giá trị của trường này khi lập tài khoản mới **chưa được trích xuất**. Điều đó giải thích vì sao không được lấy `Id=0` hoặc `Id=20` trong bảng rồi kết luận chắc chắn đó là màn khởi đầu.

### Mẫu dữ liệu Stage đã xác minh

| ID | Main | Sub | Map | HP thường | Boss HP | Boss ATK | Gold | EXP |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 8 | 40 | 1 | 14 | 15 |
| 1 | 0 | 1 | 0 | 30 | 300 | 1 | 20 | 16 |
| 19 | 0 | 19 | 1 | 11.676 | 233.520 | 100 | 960 | 45 |
| 20 | 1 | 0 | 2 | 16.347 | 326.940 | 175 | 1.103 | 46 |
| 21 | 1 | 1 | 2 | 17.165 | 343.300 | 210 | 1.210 | 47 |

Đây là hàng **dữ liệu gốc đã lưu trong checkpoint và được đọc lại**, không phải kết quả thử chiến đấu trên thiết bị; chỉ số thực tế có thể chịu thêm modifier hoặc IFix.

## 4. Kết luận giới hạn và việc tiếp theo

**Đã xác minh mới:** đường gọi dựng ngoại hình từ `DatabaseManager`; hai bộ trường skin theo `CharacterNumber`; đường `SelectStage → EnterStage` đồng thời có nhánh chuyển cảnh; các bước Map/Player/Enemy được gọi trong `Stage_Init`.

**Chưa xác minh:** mặc định account mới (`CharacterNumber`, SkinIndex, StageCurrent), dữ liệu do server trả về, các IFix patch đang áp dụng, các mức sửa đổi chỉ số thời runtime, chuỗi đầy đủ load save/đăng nhập. Vì vậy chưa được khẳng định đã xác định avatar mặc định hay port Stage 1 chuẩn.

**Hướng phân tích bước 14:** ưu tiên các hàm nạp dữ liệu tài khoản vào `DatabaseManager` (`CharacterNumber`, SkinIndex, StageCurrent), các setter tương ứng, sau đó nối `EnterStage`/response vào `GameManager.Stage_Init`. Phần nào thuộc backend thì phải tách khỏi logic client để thiết kế xử lý offline, không tự bịa dữ liệu khởi tạo.

## 5. Tái lập

Có thể chạy `Slayer_Legend_Buoc13_Verify.py` với bản checkpoint ZIP và `libil2cpp.so` đã tách từ gói người dùng. Script chỉ đọc ELF AArch64 và JSON bảng, không thực thi hoặc sửa APK, không gọi server.

```bash
python Slayer_Legend_Buoc13_Verify.py Slayer_Legend_Phan_Tich_Lien_Tuc.zip libil2cpp.so Slayer_Legend_Buoc13_Evidence.json
```
