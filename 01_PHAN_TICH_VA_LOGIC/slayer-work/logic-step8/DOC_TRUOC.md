# Bước 8 — nâng trang bị, giá trị sở hữu và sổ tiền tệ

**Vẫn đang phân tích. Chưa dựng tiếp H5, chưa host hay công khai game.** Đây là mã phân tích và corpus đối chiếu từng phạm vi, không phải game chơi được hay máy chủ giả lập. Chỉ đọc mã/tài nguyên trong XAPK đã có; không tạo hình hoặc asset thay thế.

Đầu vào là `com.gear2.growslayer` 700.0.4, versionCode 705. SHA-256 của `libil2cpp.so`: `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`. Mỗi lần tạo vector đều kiểm tra hash này. Không nạp hoặc chạy thư viện game; không gọi dịch vụ game.

| Phạm vi mới | Ca đối chiếu đạt | Bằng chứng |
| --- | ---: | --- |
| 9 entry tính ATK, chí mạng/vàng sở hữu và thay đóng góp trong tổng | 1.359 | `equipment-stat-native-flow-report.json` |
| Chuỗi nâng, cập nhật cấp/giá/tổng sở hữu, ghi ATK trang bị, giữ/thả nút; có thân hàm trừ cube gốc | 421 | `equipment-flow-native-report.json` |
| 5 entry chụp và so sánh số dư/tổng nhận/tổng dùng | 483 | `currency-native-flow-report.json` |
| 4 entry Gain/Use instance/static của CurrencyData | 384 | `currency-mutation-native-report.json` |

Tổng bước này: **2.647 ca theo phạm vi**, thêm 3 chuỗi nối tiếp với 9 lần chuyển trạng thái, 3 kiểm tra hợp đồng đầu vào cho module chỉ số và 4 kiểm tra null cho module snapshot. Không cộng chuỗi hoặc hợp đồng vào 2.647, không lấy số ca làm tỷ lệ hoàn thành game. `VALIDATION_SUMMARY.json` được tạo bằng cách chạy thực tế các bộ kiểm tra JavaScript và đối chiếu số ca với báo cáo trình diễn giải.

Đọc `EQUIPMENT_FLOW_NOTES.md` để xem địa chỉ gốc, kiểu số, thứ tự hiệu ứng và các giới hạn. Các phụ thuộc được mô hình hóa vẫn được ghi rõ: giải mã Silent*/Liapp*, collection, metadata đã khởi tạo, UI/bản địa hóa, callback, quest/telemetry/audio, `PlayerBase.Atk_Cal` và sink API. Chuỗi mới đã đọc các thân hàm tiền tệ gốc thay cho phép trừ cube tạm ở hook; callback tiền tệ chỉ được quan sát, chưa dịch mọi subscriber.

## Tạo lại bằng chứng

Chạy từ thư mục `slayer-work`, với bản giải mã bước 3 trong `reproduced-step3/`:

```bash
python3 logic-step8/tools/generate_equipment_stat_vectors.py --source reproduced-step3 --out logic-step8
python3 logic-step8/tools/generate_currency_mutation_vectors.py --source reproduced-step3 --out logic-step8
python3 logic-step8/tools/generate_equipment_flow_vectors.py --source reproduced-step3 --out logic-step8
python3 logic-step8/tools/generate_currency_snapshot_vectors.py --source reproduced-step3 --out logic-step8
python3 logic-step8/tools/write_validation.py
```

Nếu chỉ kiểm tra bản dịch JavaScript với corpus đã lưu, chạy dòng cuối. Muốn tạo lại vector cần `.so`, field/type map và bảng JSON giải mã từ XAPK gốc; checkpoint không thay thế XAPK. ASM và method manifest nằm trong `research/`, một số entry dùng lại ASM ở bước 7.

## Việc còn thiếu

- Fusion/awakening toàn chuỗi, trang bị/đổi trang bị và mọi đường cộng vào inventory; chưa suy từ các hàm preview rằng đã khôi phục hệ thống awakening.
- Toàn bộ queue/RPC/ngoại lệ và `APIValidator.PostLog`, payload IFix đang hoạt động, implementation máy chủ. Đọc request không cung cấp mã server.
- Toàn thân `EnemyBase.GetDmg`, các animation event/lớp boss, di chuyển/chọn mục tiêu, chuỗi chết/hồi sinh downstream, EXP/level-up và tiến trình các chế độ.
- Deserialization/khởi tạo tài khoản, nguồn buff/wish/mastery, lưu offline, ánh xạ animation/attachment bằng tài nguyên gốc.

Danh mục tổng thể được cập nhật ở `../ANALYSIS_STATUS.md` và `../logic-step7/REMAINING_ANALYSIS.md`. Bản nháp H5 cục bộ từ trước vẫn tạm dừng và không làm chuẩn cho phân tích.
