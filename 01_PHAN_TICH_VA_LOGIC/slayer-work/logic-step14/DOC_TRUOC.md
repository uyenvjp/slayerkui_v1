# Tạo lại bộ đối chiếu bước 14

Bắt đầu trong thư mục chứa `logic-step14` và đầu vào đã giải mã `reproduced-step3`. Cần bản libil2cpp gốc có SHA256 đúng như `VALIDATION_SUMMARY.json`, các bảng JSON gốc và checkpoint bước 13.

```bash
python3 logic-step14/tools/generate_stage_spawn_vectors.py --source reproduced-step3 --out logic-step14
python3 logic-step14/tools/generate_stage_cycle_vectors.py --source reproduced-step3 --out logic-step14
python3 logic-step14/tools/write_validation.py
```

Bộ thứ hai lấy fixture nối từ bộ thứ nhất. Hai lệnh sinh dữ liệu có thể thêm `--limit` để kiểm tra nhanh và ghi JSON smoke riêng. Các bản ASM bổ sung được trích bằng `logic-step6/tools/export_methods.py`. Bước 14 dùng lại bản trích GameManager của bước 7 và 13. Xem `WAVE_SPAWN_BOX_AND_RESTART.md` cho công thức, phạm vi và ranh giới đã kiểm tra.
