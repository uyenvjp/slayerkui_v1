# Checkpoint phân tích bước 11

Đọc SAVE_QUEUE_AND_RESPONSE_NOTES.md trước. Chưa hoàn tất phân tích game; dựng/host H5 vẫn tạm dừng theo yêu cầu. Không dùng fixture làm dữ liệu tài khoản thật hoặc thêm luật chơi để lấp chỗ thiếu.

Kiểm tra các module đã lưu, chạy từ slayer-work:

```bash
python3 logic-step11/tools/write_validation.py
```

Tạo lại corpus cần thư mục reproduced-step3 từ công cụ bước 3, gồm libil2cpp.so/metadata/field và method maps đúng hash. Chạy theo thứ tự:

```bash
python3 logic-step11/tools/export_prefs_keys.py --source reproduced-step3 --out logic-step11/prefs-keys.json
python3 logic-step11/tools/generate_prefs_vectors.py --source reproduced-step3 --out logic-step11
python3 logic-step11/tools/generate_api_control_vectors.py --source reproduced-step3 --out logic-step11
python3 logic-step11/tools/generate_prefs_sync_vectors.py --source reproduced-step3 --out logic-step11
python3 logic-step11/tools/generate_request_loop_vectors.py --source reproduced-step3 --out logic-step11
python3 logic-step11/tools/generate_retry_disposition_vectors.py --source reproduced-step3 --out logic-step11
python3 logic-step11/tools/generate_client_sync_vectors.py --source reproduced-step3 --out logic-step11
python3 logic-step11/tools/write_validation.py
```

Corpora đối chiếu JavaScript với diễn giải lệnh native có giới hạn, cùng các phụ thuộc fixture khai báo. Không phải replay Android/Unity hoặc kiểm thử gameplay mobile/desktop. Không cần hoặc được tự gọi máy chủ để chạy các bộ này.

Nối tiếp ưu tiên: catch/unwind RequestLoop; serialization/persistence đầy đủ và account initialization; các subscriber/nguồn buff còn thiếu; EnemyBase.GetDmg toàn chuỗi, animation event và vòng chiến đấu; equip/fusion/awakening, tiến trình và ánh xạ asset/animation gốc. Phân biệt phần client chưa đọc với byte IFix runtime và implementation server chưa có trong đầu vào.
