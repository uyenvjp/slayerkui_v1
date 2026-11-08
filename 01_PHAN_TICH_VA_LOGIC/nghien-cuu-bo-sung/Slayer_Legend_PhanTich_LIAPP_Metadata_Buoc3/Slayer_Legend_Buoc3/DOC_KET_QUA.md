# SLAYER LEGEND 700.0.4 — BƯỚC 3: BẰNG CHỨNG TĨNH ĐỌC TRỰC TIẾP

Các kết quả dưới đây lấy trực tiếp từ hai file bảo vệ LIAPP và metadata của XAPK người dùng gửi.
**Không có `dump.cs`, không giải mã hoàn chỉnh metadata, không trích xuất được công thức sát thương.**

## 1. Metadata
- Kích thước: 33,085,012 byte; SHA256: `0f0c21c82432adab3421ea6c82e2662b032a8fc2fc17f81defe166b2ce294c46`
- Header 16 byte gốc: `4c 49 4b 45 59 7f 00 00 df 02 53 df af 56 23 00`.
- Header 16 byte sau XOR: `0f 0d 0e 03 1e 37 49 4a 9c 46 16 99 e8 1e 6a 4a`; **không phải** magic IL2CPP hợp lệ.
- Chuỗi `ALARM_TEXT_022` xuất hiện ở offset `0x2356af` sau XOR.
- Vùng đầu có entropy cao; sau đó xuất hiện chuỗi NUL-terminated đọc được với khóa XOR. Đây là **phân vùng quan sát**, không phải offset giải mã header.

## 2. Thành phần bảo vệ LIAPP
- File `.eufxww.dex`: 41,647 byte, SHA256 `a5e89d18d4114f2ea87559d8b67b14bea9ebb589121fad4c4ffb88adb4f44d4c`.
- DEX đầu tiên khai báo kích thước 428 byte; file chứa thêm 41219 byte phía sau.
- Dấu `LIKEY` ở offset `0x396`; `com/liapp` ở offset `0xde`.
- Tìm thấy các chữ ký DEX tại: 0x0, 0x1ac.
- File `libeufxww.so`: 673,836 byte, SONAME ELF thực tế: `libliapp.so`.
- Phụ thuộc ELF: liblog.so, libdl.so, libstdc++.so, libm.so, libc.so.
- Các yếu tố trên cùng với `assets/LIAPP.ini` xác nhận game có thành phần LIAPP. Chúng **không đủ** để tìm thuật toán giải mã hoặc lấy source code.

## 3. Tên bảng dữ liệu được đọc ra sau XOR (chưa xác minh liên hệ class/method)
- `Xls_Skill` tại `0x27d8d9`; các chuỗi kề nhau: `SkillName`, `SkillBasicDes`, `SkillSpecificDes`, `skillOpenType`, `skillType`, `activeType`, `passiveType`, `MpCost`, `upgradeValue`, `ActiveNeedValue`, `Range`, `Duration`.
- `Xls_AdventureInfo` tại `0x27cb1a`; các chuỗi kề nhau: `AdventureIndex`, `SubIndex`, `SubName`, `CameraSetting`, `BossNumber`, `Boss`, `BossScale`, `Dia_Clear`, `Emerald_Clear`, `Map`, `Hp`, `Atk`.
- `Xls_WeaponSkin` tại `0x27e1b7`; các chuỗi kề nhau: `EffectColor`, `RecourcePath`, `WeaponSkinType`, `WeaponSkinTypeIndex`, `Xls_WeaponUpgradeStat`, `ProtectTest`, `user_id`, `LiappStart`, `ReStart`, `pause`, `OnApplicationPause`, `LIAPP_EXCEPTION`.
- `LiappforUnityImpl` tại `0x72dbf1`; các chuỗi kề nhau: `Liapp`, `LA1`, `LA2`, `pszUser_key_from_server`, `GA`, `GI`, `Userid_in_your_service`, `SUID`, `LiappAgent`, `Example_LiappforUnity`, `StartLiapp`, `LiappSecureImpl`.

## 4. Phần vẫn chưa phục hồi
- Chưa giải mã được phần bảng metadata đầu file `LIKEY`.
- Chưa có `TypeDefinition`/`MethodDefinition` với vị trí hợp lệ, chưa có method→native address map.
- Chưa có công thức sát thương, skill, drop, tiến trình hay backend của game.
- Không tự tạo hình/asset hay gameplay thay thế.

## Cách chạy lại
`python phan_tich_buoc3.py global-metadata.dat .eufxww.dex libeufxww.so thu_muc_bao_cao`
Script chỉ đọc nhị phân và xuất JSON/CSV; không thực thi game và không thay đổi file gốc.
