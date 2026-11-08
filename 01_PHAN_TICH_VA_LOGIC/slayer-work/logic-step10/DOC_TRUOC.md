# Bước 10 — nguồn hệ số EXP và dữ liệu request lên cấp

**Vẫn đang phân tích; chưa phân tích hết client/game. H5 tiếp tục tạm dừng, chưa host hay công khai.** Chỉ dùng XAPK đã có, không tạo/thay asset và không gọi server game.

Đầu vào `com.gear2.growslayer` 700.0.4, versionCode 705, native SHA-256 `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`. Các generator kiểm tra hash rồi diễn giải lệnh ARM64 trong phạm vi đã chọn, không nạp/chạy thư viện game.

| Phạm vi | Ca đạt | Bằng chứng |
| --- | ---: | --- |
| 5 entry DatabaseManager: tính/ghi ExpAdd, cộng mảng spirit, tạo dữ liệu đồng bộ và áp dữ liệu đồng bộ | 910 | `experience-data-native-report.json` |
| Kiểm tra nối lại AddBuffs và 3 đường nhận EXP, thay getter ExpAdd từ fixture bằng thân hàm gốc | 704 | `linked-experience-native-report.json` |
| GetSyncExp → LevelUp → AddRequest → RequestData.Create, nhánh API 13 | 64 | `level-request-native-report.json` |

Tổng **1.678 ca theo phạm vi**, thêm 7 hợp đồng null/parse và 3 chuỗi nối tiếp/9 lần chuyển trạng thái. 704 ca là kiểm tra mạnh hơn cho orchestration đã dịch ở bước 9, không phải 704 hệ thống mới. Các báo cáo và `VALIDATION_SUMMARY.json` ghi rõ phụ thuộc vẫn được mô hình hóa; không lấy số ca làm tỷ lệ hoàn thành game.

Đọc `EXP_DATA_AND_REQUEST_NOTES.md` để xem thứ tự float32/int32, object đồng bộ dùng chung, ghi dở dang khi parse lỗi và giới hạn queue. Bản dịch nằm trong `port/`, generator trong `tools/`, ASM/method manifest trong `research/`.

## Tạo lại

Từ thư mục `slayer-work`, với bản giải mã đúng hash ở `reproduced-step3/`:

```bash
python3 logic-step10/tools/generate_experience_data_vectors.py --source reproduced-step3 --out logic-step10
python3 logic-step10/tools/generate_linked_experience_vectors.py --source reproduced-step3 --out logic-step10
python3 logic-step10/tools/generate_level_request_vectors.py --source reproduced-step3 --out logic-step10
python3 logic-step10/tools/write_validation.py
```

Hai generator nối phụ thuộc vào corpus bước 9 và corpus dữ liệu bước 10. Dòng cuối chỉ chạy bản dịch JavaScript với vector đã lưu. Bản giải mã bước 3/XAPK gốc cần thiết nếu muốn tạo lại bằng chứng từ native; checkpoint không thay thế file gốc.

## Chưa hoàn tất

Chưa khôi phục toàn bộ nguồn gán các trường buff/array spirit, expiry/init scroll, subscriber, Fill_Update/training, xử lý và retry queue, serialization/transport, toàn bộ async response/IsValidCode, account initialization/deserialization và lưu offline. Combat toàn thân, tiến trình các chế độ, equip/fusion/awakening và animation vẫn có phần chưa phân tích. Live IFix/server implementation không được suy ra từ các entry client này.
