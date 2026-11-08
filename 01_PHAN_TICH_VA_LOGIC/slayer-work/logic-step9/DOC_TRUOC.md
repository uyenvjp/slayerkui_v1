# Bước 9 — EXP, lên cấp và các mốc mở nội dung

**Chưa phân tích hết game. H5 tiếp tục tạm dừng; không host hoặc công khai bản thử.** Bước này chỉ bổ sung mã phân tích, bản dịch và bằng chứng từ XAPK gốc; không tạo hay thay asset.

Đầu vào: `com.gear2.growslayer` 700.0.4, versionCode 705. SHA-256 `libil2cpp.so`: `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`. Generator kiểm tra hash trước khi diễn giải. Không chạy thư viện native/game/Unity, không gọi server.

| Phạm vi | Ca đạt | Bằng chứng |
| --- | ---: | --- |
| 7 entry nhận EXP, áp buff/scroll, getter giới hạn cấp và dự đoán cấp; có thân Exp_Cal/Probability | 1.232 | `experience-native-report.json` |
| 8 entry bấm lên cấp, hiển thị/callback, batch request, dừng/thả nút và 2 iterator | 832 | `level-flow-native-report.json` |

Tổng **2.064 ca đối chiếu theo phạm vi**. Ngoài số này có 7 chuỗi nối tiếp với 32 lần chuyển trạng thái, 2 kiểm tra hợp đồng đầu vào EXP và 1 hợp đồng null LevelUpAction. `VALIDATION_SUMMARY.json` ghi kết quả chạy thật, không lấy số ca làm tỷ lệ hoàn thành game.

Các báo cáo chưa có nghĩa đã khôi phục mọi nguồn buff, subscriber, UI hoặc backend. `Fill_Update`, quest/unlock/tutorial/audio/telemetry, get_SyncExp và API còn là sink/đầu vào được khai báo. Riêng callback LevelUp_Callback và LevelDisplay được nối bằng thân hàm gốc trong corpus lên cấp, không thay bằng phép tăng ngưỡng EXP tự đặt. Đường đăng ký callback được đọc tĩnh và lưu tại `baseline-callback-registration.json`.

Đọc `EXPERIENCE_AND_LEVEL_NOTES.md` để xem thứ tự ghi, nhánh float/BigInteger, mốc cấp và giới hạn kiểm chứng.

## Tạo lại

Chạy từ `slayer-work`, cần `.so`, map metadata và bảng JSON của bản giải mã bước 3 trong `reproduced-step3/`:

```bash
python3 logic-step9/tools/generate_experience_vectors.py --source reproduced-step3 --out logic-step9
python3 logic-step9/tools/generate_level_flow_vectors.py --source reproduced-step3 --out logic-step9
python3 logic-step9/tools/write_validation.py
```

Dòng cuối chỉ chạy bản dịch JavaScript với corpus đã lưu, không cần `.so`. ASM/method manifest nằm ở `research/`; Exp_Cal và Probability dùng lại ASM bước 7. Không sửa logic game để làm các ca sai thành đúng; fixture iterator phải được biểu diễn theo float32 của trường native.

## Còn phải làm

- Khôi phục đầy đủ ExpAdd và nguồn hot-time/event/spirit; vòng đời scroll/expiry và mọi subscriber LevelUpAction/levelEvent.
- Fill_Update, training EXP và downstream quest, unlock, tutorial, Unity scheduler/UI; không coi việc ghi nhận sink là đã dịch các hàm này.
- get_SyncExp, queue/API/ngoại lệ/response, khởi tạo tài khoản, deserialization và lưu offline.
- Các phần combat, tiến trình màn/chế độ, inventory/equip/fusion/awakening và animation còn ghi trong danh mục tổng thể.

Phần IFix live và implementation server không có trong đầu vào đã khôi phục phải tiếp tục được phân biệt với native baseline. Checkpoint là kết quả phân tích, chưa phải game offline hoàn chỉnh.
