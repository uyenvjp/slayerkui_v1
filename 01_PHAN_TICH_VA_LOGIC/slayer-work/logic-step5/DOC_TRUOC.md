# Slayer Legend — phân tích logic bước 5

**Đã chuyển thêm các thành phần chỉ số và chuỗi tính sát thương kỹ năng sang JavaScript. Chưa phải game H5 chơi được; chưa có triển khai website hoặc URL mới.** Dùng duy nhất dữ liệu/mã gốc trong XAPK Slayer Legend 700.0.4 / mã 705. Không tạo, vẽ hoặc thay asset.

## Kết quả mới

- 15 hàm lấy thành phần chỉ số của `PlayerBase`: ATK nền, tổng ATK, ATK cộng, trang bị, class; xác suất và hệ số chí mạng/siêu chí mạng; HP nền, phụ kiện, HP cộng, HP class, hồi phục nền và hồi phục cộng.
- Công thức `PlayerBase.CalculateSkillDmg` cho bốn hệ nguyên tố, cùng nhánh preset riêng; giữ đúng thứ tự cộng buff, kiểu số, tràn số và thời điểm cắt phần lẻ.
- `SkillData.Player_SkillDmg_Cal`: cộng sát thương từ grinding, các nhánh Dragon Valley, count skill, Stone Strike và buff phụ thuộc chế độ.
- `SkillData.Atk_Cal`: tính ba mức sát thương, mastery, mastery của kỹ năng liên kết, buff bang hội và hình phạt World Boss. Có hàm ghép `calculateRecoveredSkillAttack` chạy chuỗi công thức vừa khôi phục từ đầu vào trạng thái được truyền rõ.
- Các công thức buff bang hội / World Boss, bảng hệ số mastery gốc (14 hàng × 5 cấp), và phần tính mastery level sau khi người gọi đã chọn đúng preset hiện tại.
- 33 phương thức native được trích và ghi tên lời gọi trong `asm/`, tổng 25.680 byte. Số này là lượng mã làm bằng chứng, không đồng nghĩa cả 33 phương thức và mọi phụ thuộc đã được chuyển trọn vẹn.

## Kiểm chứng

| Nhóm | Đối chiếu số học | Kiểm tra bổ sung |
|---|---:|---:|
| Chỉ số và mastery mới | 3.140 | 36 kiểm tra ánh xạ trường/nhánh |
| Sát thương kỹ năng mới | 2.600 | 31 kiểm tra nhánh/ghép chuỗi |
| Mốc bước 4 giữ lại | 1.800 | 23 kiểm tra nhánh/thứ tự |
| Tổng các bộ hiện có | **7.540** | **90** |

Các bộ kiểm tra trên đều đạt ở lần chạy đóng gói. Kết quả mong đợi của phần số học được tạo bằng diễn giải **các đoạn ARM64 giới hạn đã chọn** trong Python, độc lập với công thức JavaScript. Mã game native và APK không được chạy.

Giữ `BigInt` cho số lớn; giữ phép tràn int32/int64; làm tròn float32 sau từng phép toán; chuyển sang double đúng vị trí mã gốc; chia số nguyên cắt về 0. Có ca sát ngưỡng, số âm, số lớn hơn độ chính xác Number, và biên chuyển float thành số nguyên.

**Phạm vi kiểm chứng:** chưa đối chiếu toàn bộ gameplay với ứng dụng Android đang chạy; chưa mô phỏng toàn bộ hàm/Unity/IFix. Bộ diễn giải thay lời gọi BigInteger bằng số nguyên Python và nhận đầu vào thanh ghi cho từng đoạn toán học. Các lệnh khôi phục stack và ba lệnh nạp metadata không ảnh hưởng phép toán trong các đoạn chọn được bỏ qua có giới hạn. Các bài kiểm tra nhánh dùng fixture số liệu tổng hợp để kiểm tra thứ tự/điều kiện, không phải save game gốc hay dữ liệu người chơi.

## Những điểm đã xác định

- Chỉ số nền không dùng chung một phép tính float: ATK nền cộng hai phần tính qua double, trong khi các hệ số phần trăm trước đó làm tròn float32.
- ATK trang bị và HP phụ kiện lấy `ceil` phần cộng sở hữu trước khi cộng giá trị trang bị. Hệ số class có bước nhân int64 có tràn số rồi chia 100.
- Các biểu thức ATK/HP/hồi phục cộng có nhánh nullable của Dragon Valley SpecialCook. Nếu manager không tồn tại, native baseline trả 100 cho biểu thức này. Không tự thay bằng tổng buff khác vì trông có vẻ hợp lý hơn.
- Kỹ năng cắt phần lẻ tại nhiều bước riêng. Buff bang hội tính `bonus × 100 + 10.000`, hình phạt World Boss tính `penalty × -100 + 10.000`; không thay bằng công thức cộng/nhân khác thứ tự dù tương đương trên số thực.
- Hệ None / All / giá trị ngoài bốn hệ đi qua nhánh riêng, bỏ qua tích hệ số `skillValue` ở `CalculateSkillDmg` baseline. Nhánh preset cũng xử lý riêng.
- Mastery dùng trực tiếp `Level1..Level5` của bảng gốc. Cấp ngoài 1–5 hoặc không có hàng tương ứng không nhân hệ số. Kỹ năng liên kết áp dụng thêm một lượt nhân/chia, không gộp hai hệ số.

## Chưa khôi phục đủ để dựng game

1. `Atk_Cal` / `Hp_Cal` tổng, các buff sau khi lấy thành phần chỉ số và cách cập nhật toàn bộ trạng thái người chơi chưa được dịch đầy đủ.
2. Module kỹ năng vẫn nhận rõ `SkillValue`, dữ liệu grinding, wish, trạng thái tài khoản và **kết quả một số getter DatabaseManager**. Nó không tự suy ra những đầu vào này. Việc chọn đúng preset từ trạng thái GameManager nằm ngoài module.
3. `EnemyBase.GetDmg` toàn bộ, cooldown, tiêu hao tài nguyên, hiệu ứng theo thời gian, AI, vòng đánh, rơi đồ, nâng cấp, khởi tạo/lưu tiến trình offline còn thiếu.
4. Nội dung IFix đang được máy chủ chọn và triển khai logic phía máy chủ chưa được khôi phục. Các công thức hiện tại là **nhánh native chưa bị vá** của đúng XAPK đầu vào.
5. Chưa ghép asset vào H5; chưa kiểm thử gameplay/mobile/desktop và chưa host bản mới. Không công khai website.

Thiếu đầu vào bắt buộc sẽ báo lỗi. Những giá trị 0 trong fixture kiểm tra chỉ là trường hợp kiểm tra được ghi rõ, không được dùng làm mặc định để dựng game giả đủ tính năng.

## Tệp chính

- `port/recovered-player-stats.mjs`: 15 hàm chỉ số và các phép toán có đối chiếu.
- `port/recovered-skill-damage.mjs`: sát thương kỹ năng, preset, bang hội và World Boss.
- `port/recovered-skill-chain.mjs`: mastery và ghép chuỗi tính ba mức sát thương.
- `data/SkillMasteryAttackSkillFactorData.json`: bản sao nguyên byte từ bảng JSON gốc đã giải mã ở bước 3.
- `stat-native-vectors.json`, `skill-native-vectors.json`: đầu vào và kết quả số học kèm địa chỉ mã máy.
- `js-*-report.json`, `native-*-oracle-report.json`: báo cáo xác minh và phạm vi.
- `tools/`: công cụ trích nguồn và tạo lại kết quả mong đợi.

## Chạy lại

Ba thư mục `logic-full/`, `logic-step4/`, `logic-step5/` trong ZIP phải đặt cạnh nhau. Để chỉ kiểm tra JavaScript với các vector đóng kèm:

```bash
node logic-step4/port/verify-native-math.mjs
node logic-step5/port/verify-stats-skills.mjs
node logic-step5/port/verify-skill-damage.mjs
```

Để tạo lại bằng chứng từ XAPK gốc, trước tiên chạy bộ giải mã bước 3. Thư viện IL2CPP lớn không đóng kèm lại trong ZIP:

```bash
python3 logic-full/tools/recover_full_data.py /duong-dan/slayer-source.xapk --out reproduced-step3
python3 logic-step5/tools/export_step5_sources.py --source reproduced-step3 --out logic-step5
python3 logic-step5/tools/generate_stat_vectors.py --out logic-step5
python3 logic-step5/tools/generate_skill_vectors.py --out logic-step5
node logic-step5/port/verify-stats-skills.mjs
node logic-step5/port/verify-skill-damage.mjs
```

Yêu cầu như bước 4: Python + numpy/cryptography, `libLLVM.so.20.1` để disassemble, Node có BigInt và ES modules. Không cần chạy game Android để thực hiện các bước phân tích tĩnh này.

Hash thư viện gốc: `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`.
