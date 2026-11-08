# SLAYER LEGEND 700.0.4 — BƯỚC 16

**Chủ đề:** Nhân vật đang sử dụng, bộ ngoại hình được chọn và đường đổi nhân vật.
**Nguồn:** `libil2cpp.so` gốc trích từ XAPK của người dùng, SHA-256 `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`; method/field-map checkpoint khôi phục metadata. Phương pháp: đọc ARM64 tĩnh, ELF không chỉnh sửa, kiểm tra opcode/lệnh gọi và tên trường. **Không chạy game, backend, hoặc IFix patch.** Không trích thêm ảnh hay tạo asset.

## A. Phát hiện 1: `CharacterNumber` nạp từ `UserInfo.equipmentState_`

Trong `UserInfoLoad.Load`:

- `0x5227404` gọi `UserInfoLoadEquipment.LoadEquipmentState` (VA `0x522e574`).
- `0x5227ac8` gọi `UserInfoLoadSkinData.LoadSkinData` (VA `0x5239dc0`).

Trong `UserInfoLoadEquipment.LoadEquipmentState` (khi chạy nhánh native không bị IFix thay thế):

- `0x522e5e8`: `ldr x8,[x20,#0xa0]`: đọc `GrowSlayer.UserInfo.equipmentState_`.
- `0x522e69c`: `ldp w9,w0,[x8,#0x24]`: đọc `GrowSlayer.EquipmentState.usingCharacterIndex_` và trường ngay sau đó.
- `0x522e6a8`: `str w9,[x19,#0x568]`: ghi index nhân vật vào `DatabaseManager.CharacterNumber`.

**Suy ra có căn cứ:** index nhân vật đang sử dụng đến từ trạng thái trang bị của `UserInfo`, chứ không phải lấy từ mẫu `OtherPlayers` hay số suy đoán từ tên sprite. Trong thứ tự lệnh gọi được quan sát, `LoadEquipmentState` nằm trước `LoadSkinData`.

**Chưa có:** giá trị `usingCharacterIndex_` do server cấp khi tạo tài khoản mới; logic runtime khi `equipmentState_` null; ảnh hưởng IFix.

## B. Phát hiện 2: `CharacterNumber` điều khiển lựa chọn bộ skin

Trong `DatabaseManager.get_Skin_BodyIndex`:

- `0x4d4b070`: đọc `DatabaseManager.CharacterNumber` ở `+0x568`.
- Giá trị bằng `0`: lệnh `0x4d4b080` đọc `Skin_BodyIndex0` (`+0x584`).
- Giá trị khác `0`: lệnh `0x4d4b078` đọc `Skin_BodyIndex1` (`+0x5b0`).

Trong `DatabaseManager.BuildUserAppearanceInfo`:

- `0x4d4bd90`: đọc `DatabaseManager.CharacterNumber` (`+0x568`).
- `0x4d4bd98`: ghi vào `GrowSlayer.SkinData.characterNumber_` (`+0x18`).
- Phần còn lại gọi các getter hair, face, body, costume, v.v. để tạo `GrowSlayer.UserAppearanceInfo`/các thành phần liên quan.

**Suy ra có căn cứ:** chỉ số nhân vật đã nạp quyết định getter lấy bộ ngoại hình 0 hoặc 1, và ID được gắn vào đối tượng dữ liệu ngoại hình tạo mới. Đây là cơ chế client tĩnh, không xác định được giá trị mặc định.

## C. Phát hiện 3: đổi nhân vật cập nhật trước khi request API

Trong `SkinManager.Button_CharacterChange_Confirm` (VA `0x5369550`):

1. `0x5369610` gọi `DatabaseManager.DiaCheck` với tham số hằng `20000`; **không tuyên bố đây là giá thực tế của mọi lần đổi**.
2. `0x5369630` đọc `SkinManager.SelectedCharacterNumber` (`+0x278`).
3. `0x536963c` ghi index mới vào `DatabaseManager.CharacterNumber` (`+0x568`).
4. `0x5369640` cập nhật `DatabaseManager.CharacterChangeCount` (`+0x56c`).
5. `0x5369668` gọi `SkinManager.Skin_Apply`; `0x5369674` gọi `SkinManager.Weapon_Apply`.
6. `0x5369780` nhảy tới `APIManager.ChangeSkinData` (VA `0x50c943c`).

Trong `APIManager.ChangeSkinData`:

- `0x50c9540`: tạo `GrowSlayer.ChangeSkinDataRequest`.
- `0x50c9554`: ghi `selectedCharacterNumber_` vào request tại `+0x18`.
- `0x50c9558`: ghi `isEvent_` vào `+0x1c`.
- `0x50c9608`: nạp mã API `0x56` (86), `0x50c9618` nhảy tới `APIManager.AddRequest`.

Trong coroutine phản hồi `APIManager+<>c__DisplayClass91_0+<<ChangeSkinData>b__0>d.MoveNext`, tại `0x4814ad4` có gọi `Network.Request.IsValidCode`. Chưa xác minh nhánh cập nhật hay rollback toàn hệ thống khi server trả lỗi.

**Chú ý khi port H5:** chuyển nhân vật trên giao diện, phản hồi API và lưu game là ba trạng thái cần giữ đồng bộ. Không được tự nhận callback đã cung cấp dữ liệu khởi tạo cho tài khoản mới.

## D. Kiểm chứng

Chạy bằng Python 3 chuẩn:

```bash
python verify_step16.py libil2cpp.so all-method-map.csv field-map.csv > step16_evidence.json
```

**46/46 kiểm tra đạt:** 12 ánh xạ method, 10 ánh xạ trường, 8 branch BL/B, 14 opcode ARM64 cụ thể và 2 kiểm tra thứ tự. Đây là kiểm chứng từ mã nhị phân tĩnh và metadata checkpoint, không phải kiểm thử gameplay.

## E. Những gì vẫn chưa khôi phục

- Giá trị nhân vật mới từ phản hồi `SignUpV2`/`UserInfo` thực tế.
- Giá trị `StageCurrent` đầu tiên do backend cấp.
- Hành vi runtime khi IFix có thể thay thế method native.
- Xử lý đầy đủ trường hợp thay đổi nhân vật thành công/thất bại và đồng bộ sau lần đăng nhập tiếp theo.
- Khả năng chạy offline tương đương server gốc.

## F. Bước 17 đề xuất

Đọc đường `UserInfoLoadEquipment.LoadEquipmentState` trong ngữ cảnh `SignUpV2` và đường cập nhật `ChangeSkinDataResponse`, tìm điểm sửa/đồng bộ state sau callback. Tiếp tục riêng `EnterStageResponse` và đường map/monster khi vào màn. Khi chưa có dữ liệu tài khoản mới thực tế, giữ `initial_usingCharacterIndex` và `initial_stageCurrent` ở trạng thái **chưa xác minh**.
