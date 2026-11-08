# Slayer Legend H5 offline — Việc cần làm tiếp

## Hiện trạng có thể dùng

| Hệ thống | Bằng chứng đã có | Phần còn thiếu |
| --- | --- | --- |
| Mở đầu và nhân vật chính | Luồng SignIn → `startscene` hoặc `GearMain_RPG`, hai biến thể Slayer, đủ 20 tham chiếu ảnh intro trong 55 sprite gốc | Chuyển cảnh, nút và nội dung hướng dẫn cần ghép và chạy thử trong H5 |
| Ngoại hình và hoạt ảnh chiến đấu | Controller thay thế, 16 clip với 70 sự kiện, 78/78 ca chọn pose, vị trí các atlas lớp ngoại hình | Khóa trang phục dùng cho hồ sơ đầu tiên, thứ tự loader trả sprite, lớp vẽ và tốc độ thực tế |
| Stage, map và quái | 3.000 hàng Stage, 952 Monster ID, 574/575 ID quái dùng trong Stage 0–1919 có đủ 16 Sprite trong catalog | Mã Stage đầu do backend cấp, ánh xạ Map ID đến layer, ghép PathID với PNG và khung của ID 102 |
| Chiến đấu, trang bị, EXP và thưởng | Các mô-đun JS đã đối chiếu theo từng nhánh native, bảng dữ liệu và trace đi kèm | Ghép vòng chơi đầu cuối, nhánh thưởng đi vào tài khoản, boss và chuyển màn, phạm vi IFix |
| Hồ sơ và lưu | Đọc nguồn `UserInfo.equipmentState_`, đường chọn skin, callback, `ServerPrefs` và một số luồng request | Trạng thái ban đầu từ phản hồi server, lưu offline có phiên bản và kiểm thử khi tải lại |

Archer, Warrior, Ninja và Mage thuộc hệ companion. Nhân vật chính là Slayer, với hai biến thể đã xác định ở intro. Chỉ dùng hình lấy từ XAPK đúng phiên bản. Nếu không tìm thấy ảnh đúng cho một đối tượng, đánh dấu thiếu trong danh mục.

## Thứ tự thực hiện

1. **Nối Stage, map và quái với PNG gốc.** Đối chiếu `StageInfo.Map` qua `MapManager.MapSetting_Index`, bảng Map và `AssetManager.GetMapSprite` để lấy đúng nhóm và thứ tự layer. Nối bảng bước 19 với `SLAYER_LEGEND_PNG_INDEX.csv` theo gói gốc, loại Sprite và PathID. Tìm texture hoặc prefab thay thế có bằng chứng cho Monster ID 102. Nếu có frame thiếu, trích từ `Sprite.m_RD.texture`, rect và `Texture2D.m_StreamData` trong XAPK. Kết quả cần có bảng tra Stage → Map → layer, và Monster → PNG → pose, mỗi mục giữ nguồn và PathID. Stage ID 0 hoặc 1 có thể dùng làm dữ liệu kiểm thử kỹ thuật khi được gắn nhãn rõ. Chưa xác nhận đó là màn khởi đầu của tài khoản mới.
2. **Ghép Slayer trong trận.** Xác nhận khóa trang phục, thân, tóc, mặt, áo choàng và vũ khí từ đường nạp dữ liệu gốc. Đọc thứ tự mảng mà `GetSkinSprites` trả về, pivot, lật hình và thứ tự lớp. Nối `Players_Attack`, idle, đi, trúng đòn và chết theo sự kiện clip và kiểm tra hệ số tốc độ Animator. Mốc 0,183 giây của `Attack_Func` thuộc thời gian trong clip. Kiểm tra thời gian thực sau khi áp tốc độ. Kết quả cần hiển thị được cả hai biến thể Slayer bằng đúng ảnh đã trích.
3. **Khóa đầu vào hồ sơ, quy tắc trận và tiến trình.** Đối chiếu `SignUpV2`/`UserInfo` và nguồn `StageCurrent` có trong dữ liệu được cấp. Ghi riêng các trường cần phản hồi server hoặc IFix mà nguồn tĩnh chưa chứng minh được. Chốt nhánh spawn, hit, HP/death, phần thưởng, nhận loot/EXP, WaveCount, rương và boss chuyển màn. Dùng số nguyên lớn khi native dùng BigInteger, giữ thứ tự callback và tái dùng các mô-đun JS đã kiểm tra. Tiêu chí là một trận kiểm thử chạy từ spawn đến hết màn, quái chết một lần, thưởng ghi một lần và giá trị khớp ca đối chiếu.
4. **Dựng lát cắt H5 offline khi dữ liệu của phần đó đã khớp.** Ghép intro → chọn Slayer → một màn kiểm chứng → kết quả. Dùng UI và asset gốc có manifest, gắn các hàm logic đã đối chiếu, đóng gói mọi phụ thuộc cần thiết để chạy local. Trạng thái chưa xác minh vẫn được tách khỏi dữ liệu gốc. Sau đó nối trang bị, kỹ năng, companion và tiến trình đã xác minh vào cùng vòng chơi.
5. **Lưu và kiểm thử bản offline.** Kiểm tra lưu có phiên bản, tải lại, xử lý save lỗi, tạm dừng và tiếp tục, nhặt đồ hoặc đổi trang bị trong cùng trận. Test một lượt chơi đầy đủ khi tắt mạng. Trên mobile và desktop, kiểm tra chạm/chuột, layout dọc và ngang, hiển thị pixel, hiệu năng hoạt ảnh và đồng bộ hình/chỉ số/vũ khí. Khi đã có bản dùng được, chuẩn bị gói chạy offline và chỉ dùng kênh chia sẻ riêng tư cho bản test.

## Chạy lại một số kiểm tra

Giải nén ZIP 01. Node.js chạy các mô-đun JS, Python 3 chạy công cụ phân tích. Công cụ giải mã ETC2 của bước 16 hiện dùng Mesa EGL/OpenGL và Pillow. Các kiểm tra JS đã có vector đi kèm.

Từ `slayer-work/`:

```text
node logic-step6/port/verify-native-flow.mjs
node logic-step16/port/verify-player-pose.mjs
```

Bước 19 cần mô-đun Python `lz4` để đọc phần bảng khối UnityFS dùng LZ4. Cài mô-đun một lần trước khi chạy. Từ `nghien-cuu-bo-sung/Slayer_Legend_Buoc19_Monster_Map_Drop_Research/`:

```text
python -m pip install lz4
python scripts/verify_step19.py "/duong-dan/XAPK-goc.xapk" tables/Stage_3000_Dong_Original.csv tables/MonsterInfoBaseData_Original.json ../../slayer-work/reproduced-step3/libil2cpp.so output
```

Kiểm tra lại khi bàn giao đạt 414 ca ATK/HP, 78 ca chọn pose và 29 phép kiểm định bước 19. Các báo cáo kèm theo ghi phạm vi từng ca và nguồn kiểm chứng. Bản port H5 hoàn chỉnh vẫn đang chờ các bước ở trên.
