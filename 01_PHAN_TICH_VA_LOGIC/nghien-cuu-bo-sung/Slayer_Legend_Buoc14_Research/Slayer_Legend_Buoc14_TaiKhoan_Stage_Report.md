# Slayer Legend 700.0.4 — Bước 14: Đăng ký nhân vật và cấu trúc vào Stage

**Nguồn dữ liệu:** `Slayer_Legend_Phan_Tich_Lien_Tuc.zip` (method-map + field-map từ checkpoint cũ) và bản `libil2cpp.so` trong `Slayer_Legend_700.0.4_libil2cpp_global_metadata_GOC.zip`, nguyên gốc từ XAPK người dùng cung cấp. Mã đã được đọc ở dạng ELF AArch64 **tĩnh**; không chạy game, backend hoặc patch IFix runtime; không tạo asset.

**Dấu vân tay thư viện:** SHA-256 `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`.

## I. Đã xác minh trực tiếp trên mã ARM64

### 1. Phân biệt người chơi mới từ phản hồi đăng nhập

- `SignManager.Button_TapToStart` tại VA `0x529f9a0` gọi `Integration.LookupLoginResponse.get_IsNewUser` tại lệnh `BL 0x529fab8 → 0x543ecdc` và rẽ nhánh sau khi kiểm tra boolean.
- Điều này là **bằng chứng client sử dụng cờ `IsNewUser`**, không có nghĩa bản XAPK tự tạo hồ sơ offline.

### 2. Màn tạo nhân vật và hai bộ skin xem trước

- `SignManager` có trường `SelectedCharacterNumber` offset `0xd8` (216). `SignManager.Button_CharacterChange_Select` ghi tham số lựa chọn vào field này tại `0x52a40c0`.
- `SignManager.CharacterMake_On_CharacterSelect` gọi `CharacterDisplay.DisplaySetting` **hai lần**, tại `0x52a4408` và `0x52a4510`.
- Nhánh xem trước thứ nhất đọc `DatabaseManager.Skin_BodyIndex0` offset `0x584`, `Skin_FaceIndex0` offset `0x58c` (tại `0x52a43d0`, `0x52a43d4`).
- Nhánh xem trước thứ hai đọc `Skin_BodyIndex1` offset `0x5b0`, `Skin_FaceIndex1` offset `0x5b8` (tại `0x52a44d4`, `0x52a44d8`).
- Trong `SignManager` còn có đối tượng `CharacterDisplay_Man` và `CharacterDisplay_Woman`, nhưng **chưa xác minh ảnh nào được hiển thị sau khi nhận dữ liệu tài khoản mới**.

### 3. Request đăng ký thật của client: `GrowSlayer.SignUpV2Request`

Đã xác minh trong `SignManager+<MakeCharacter>d__113.MoveNext`:

| Địa chỉ lệnh | Hành động |
|---|---|
| `0x52a8f90` | gọi constructor `SignUpV2Request` |
| `0x52a8fac` | đọc `NetworkHandler.LookupLoginResponse` |
| `0x52a8fb8` | lấy JWT |
| `0x52a8fcc` | ghi `IntegrationJwtToken` |
| `0x52a900c` | ghi Nickname |
| `0x52a9028` | chép `SelectedCharacterNumber` từ `SignManager + 0xd8` vào `SignUpV2Request.characterId_ + 0x38` |
| `0x52a9034` | tạo `LoginClientInfo` |
| `0x52a946c` | có nhánh gọi `UserInfoLoad.Load` sau xử lý phản hồi |

Các trường hiện diện trong `GrowSlayer.SignUpV2Request` (theo field-map gốc): `IntegrationJwtToken`, `DeviceModel`, `DeviceOS`, `Nickname`, `CharacterId`, `LoginClientInfo`, `Language`, `FcmToken`, `AgreedAgreements`.

**Phát hiện chính:** payload đăng ký gửi `CharacterId` nhưng **không có các trường riêng** `Skin_BodyIndex`, `Skin_FaceIndex`, `Skin_HairIndex`, `Skin_CostumeIndex`. Như vậy request này không đủ để xác định toàn bộ ngoại hình mặc định. Có thể giá trị được khởi tạo ở đường khác hoặc từ backend; cần kiểm chứng tiếp bằng luồng UserInfo.

### 4. Request chọn Stage

- `StageManager.SelectStage` gọi `APIManager.EnterStage` tại `0x53a27f8`.
- `APIManager.EnterStage` tạo `GrowSlayer.EnterStageRequest` tại `0x50d0b9c`.
- Lệnh `0x50d0bac` ghi chỉ số màn vào `EnterStageRequest.stageIndex_` offset `0x18` (24 byte).
- `APIManager.EnterStage` chuyển request đến `APIManager.AddRequest` tại `0x50d0c1c`, với mã API `0x77` (119), được tải vào `w0` ở `0x50d0c0c`.
- `EnterStageRequest` có `StageIndex` (int) và `SequenceNumber` (long).
- `EnterStageResponse` có `ResultCode`, `StageIndex`, `SequenceNumber`; callback native gọi `Network.Request.IsValidCode` (`0x51cbf7c`).
- Không có trường `BossHp`/`BossAtk` trong chính các message này. Đây chỉ là **schema của request/response này**, không phủ định dữ liệu gameplay có thể truyền qua API khác hoặc được tính động.

### 5. Save data có hai đầu mối chưa nối xong

`UserData.set_StageCurrent` tại `0x53eb270` ghi `int` vào offset `0x30` (48). `UserData.set_CharacterNumber` tại `0x53eba30` ghi `int` vào offset `0x214` (532). Qua lượt quét các lời gọi ARM64 `BL` trực tiếp trong đoạn mã executable, **không thấy lệnh BL trỏ thẳng vào các setter ngắn này**; nhiều hàm IL2CPP có thể được inline, gán field trực tiếp hoặc thực hiện qua patch/dispatch. Vì vậy kết quả không chứng minh không có đường cập nhật.

## II. Mức độ hoàn thiện

| Hạng mục | Trạng thái |
|---|---|
| Hai preview dùng hai nhóm dữ liệu skin | Đã xác minh từ ARM64 |
| `SelectedCharacterNumber` → `SignUpV2Request.CharacterId` | Đã xác minh từ ARM64 |
| `StageIndex` → API 119 | Đã xác minh từ ARM64 |
| User mới có giá trị skin cụ thể nào | **Chưa xác minh** |
| `StageCurrent` mặc định tài khoản mới | **Chưa xác minh** |
| Phản hồi đăng ký tạo user/skin như thế nào | **Chưa xác minh** |
| IFix runtime ảnh hưởng các hàm ra sao | **Chưa xác minh** |
| Server offline tương đương | **Chưa tạo** |

**Lưu ý:** Các bản ghi bảng Stage 3.000 dòng ở checkpoint trước vẫn có giá trị, nhưng chưa tìm được **màn khởi đầu thực** vì `StageCurrent` được nạp từ trạng thái tài khoản.

## III. Kiểm chứng và tái lập

Bộ kiểm chứng `verify_step14.py` không cần thư viện Python ngoài chuẩn, chỉ đọc file. Dùng ba input cũ: `libil2cpp.so`, `all-method-map.csv`, `field-map.csv`.

```
python verify_step14.py libil2cpp.so all-method-map.csv field-map.csv > step14_evidence.json
```

**34/34 kiểm tra đạt:** 14 địa chỉ gọi trực tiếp (`BL`), 1 nhánh (`B`), 9 lệnh truy cập trường 32-bit và 10 offset field-map. Gói đính kèm có `step14_evidence.json` là đầu ra kiểm chứng đã chạy, không phải bằng chứng runtime.

## IV. Việc tiếp tục ở bước 15

1. Truy vết `UserInfoLoad.Load` sau `SignUpV2Request` và dữ liệu `UserData` được gán vào `DatabaseManager`.
2. Lần theo các trường `CharacterNumber`, `Skin_*Index0/1`, `StageCurrent` trong phản hồi hồ sơ người dùng; xác định dữ liệu khởi tạo từ đâu, không đặt mặc định giả.
3. Kiểm tra nhánh `EnterStageResponse` và cơ chế khởi tạo Stage local, tính đến IFix patch nếu có bằng chứng.

Chưa đủ căn cứ công bố avatar ban đầu hay port H5 hoàn chỉnh.
