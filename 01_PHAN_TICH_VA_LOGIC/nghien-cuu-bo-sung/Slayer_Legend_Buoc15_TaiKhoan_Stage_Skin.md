# Slayer Legend 700.0.4 — Bước 15: Phân tích dữ liệu tài khoản, Stage và hai bộ skin

**Nguồn:** `libil2cpp.so` tách trước đó từ bản XAPK do người dùng cung cấp, cùng `all-method-map.csv` và `field-map.csv` từ gói phục hồi metadata trước đó. File ELF AArch64 có SHA-256 `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`.

**Phương pháp:** đọc tĩnh ELF, giải mã lệnh gọi `BL`, xác minh opcode và offset trường. Không chạy APK, không can thiệp LIAPP, không gọi backend, không tái tạo asset.

## Phát hiện mới 1 — Nguồn StageCurrent/StageBest từ phản hồi `UserInfo`

`UserInfoLoad.Load` (VA `0x5226e14`) nhận một đối tượng `GrowSlayer.UserInfo`. Trong đường xử lý tĩnh không bị IFix thay thế:

- Tại `0x5227248`: `ldr x8, [x21, #0x58]`: lấy `UserInfo.stageData_` (offset `0x58`).
- Tại `0x5227254`: `ldr w0, [x8, #0x1c]`: lấy `StageData.stageBest_` (offset `0x1c`), sau đó gọi `LiappSecureInt.op_Implicit` tại `0x5227260`.
- Tại `0x5227284`: `stur q0, [x22, #0x48]`: ghi dữ liệu secure struct vào `DatabaseManager.StageBest` (offset `0x48`).
- Tại `0x52272a4`: `ldr w0, [x8, #0x18]`: lấy `StageData.stageCurrent_` (offset `0x18`), sau đó gọi `LiappSecureInt.op_Implicit` tại `0x52272b0`.
- Tại `0x52272d4`: `stur q0, [x22, #0x78]`: ghi dữ liệu secure struct vào `DatabaseManager.StageCurrent` (offset `0x78`).

**Hệ quả:** client nạp Stage hiện tại/tốt nhất từ dữ liệu `UserInfo.stageData_`, chứ không có bằng chứng rằng bản ghi Stage bảng số 0 hoặc 1 luôn là Stage khởi đầu. Khi `stageData_` null, đoạn mã này bỏ qua cập nhật; hành vi khác cần nghiên cứu riêng. Đây không phải chứng minh giá trị server mặc định cho user mới.

## Phát hiện mới 2 — `UserInfo.skinDatas_` định tuyến sang hai loader

- `GrowSlayer.UserInfo.skinDatas_` nằm tại offset `0x88` (136). Tại `0x5239e64`, `UserInfoLoadSkinData.LoadSkinData` (VA `0x5239dc0`) đọc đúng trường này.
- Tại `0x5239f64`, code đọc `GrowSlayer.SkinData.characterNumber_` ở offset `0x18`.
- Giá trị `0` gọi `UserInfoLoadSkinData.LoadSkinDataMan` tại `0x5239f84` → `0x523a088`.
- Giá trị `1` gọi `UserInfoLoadSkinData.LoadSkinDataWoman` tại `0x5239f78` → `0x523a428`.
- Hai loader ghi các lớp skin vào hai vùng khác nhau của `DatabaseManager`, ví dụ `Skin_BodyIndex0=0x584`, `Skin_FaceIndex0=0x58c`, `Skin_BodyIndex1=0x5b0`, `Skin_FaceIndex1=0x5b8`. Bộ nam có opcode ghi body và face xác minh trực tiếp tại `0x523a2f0` và `0x523a2c8`.

**Hệ quả:** có cơ sở kỹ thuật để port cách nạp *hai bộ ngoại hình* từ dữ liệu hồ sơ. Nhưng chưa xác minh bộ nào được gán làm nhân vật chủ động khi tài khoản mới tạo, cũng chưa xác minh các giá trị ID cụ thể.

## Phát hiện mới 3 — Thứ tự gọi loader trong `UserInfoLoad.Load`

- `0x52271f0` → `APIValidator.LoadUserInfo` (lời gọi validator; không tự xem là request mạng tải user).
- `0x522737c` → `UserInfoLoadSkinData.LoadSkinCostumes`.
- `0x522738c` → `UserInfoLoadSkinData.LoadSkins`.
- `0x5227ac8` → `UserInfoLoadSkinData.LoadSkinData`.

Ba loader skin đều nhận cùng đối tượng `GrowSlayer.UserInfo` trong đường mã tĩnh đã xem. Đây là ba nhóm dữ liệu riêng: costume, sở hữu skin và các cấu hình skin nhân vật. Thứ tự xuất hiện các lệnh gọi không bảo đảm mọi nhánh được thực thi khi runtime IFix hoạt động.

## Phân biệt điều đã biết và chưa biết

| Hạng mục | Trạng thái |
|---|---|
| StageCurrent, StageBest được đọc từ `UserInfo.stageData_` | Đã xác minh tĩnh |
| `SkinData.characterNumber_` 0 và 1 chọn loader tương ứng | Đã xác minh tĩnh |
| Hai bộ skin ghi vào các trường khác nhau trong `DatabaseManager` | Đã xác minh tĩnh |
| Mã khởi tạo ngoại hình cho tài khoản mới | **Chưa xác minh** |
| Giá trị Stage khởi đầu của tài khoản mới | **Chưa xác minh** |
| Dữ liệu phản hồi SignUpV2 thực tế | **Chưa thu thập** |
| Các IFix patch có thay đổi loader trên thiết bị | **Chưa kiểm chứng** |
| H5 offline tương đương gameplay | **Chưa có** |

## Kiểm chứng và tái lập

Chạy `verify_step15.py` bằng Python 3 (stdlib) với ba input gốc của checkpoint:

```bash
python verify_step15.py libil2cpp.so all-method-map.csv field-map.csv > step15_evidence.json
```

**42/42 phép kiểm tra đạt** (8 method-name↔VA, 13 field-offset, 10 đích `BL` mã ARM64, 11 opcode lệnh load/store/branch). Dữ liệu chi tiết ở `step15_evidence.json`; kết quả chỉ chứng minh nội dung nhị phân tĩnh và cách ánh xạ đã phục hồi, không phải runtime.

## Bước 16 cần truy tiếp

1. Tìm đường ghi `DatabaseManager.CharacterNumber` (`0x568`) và đối chiếu `ChangeSkinDataResponse.usingCharacterIndex` hoặc các dữ liệu hồ sơ khác.
2. Phân biệt `SkinData.characterNumber_` (định danh của mỗi bộ skin) với `DatabaseManager.CharacterNumber` (nhân vật đang chọn); chưa có đủ căn cứ đồng nhất hai giá trị này.
3. Nếu có thể kiểm thử hợp lệ với tài khoản mới trên thiết bị, đối chiếu protobuf phản hồi với dữ liệu client; **không** đặt số mặc định đoán từ prefab vào H5.
4. Sau khi xác định quy trình chọn avatar và Stage đầu tiên mới dựng H5 đúng dữ liệu gốc.
