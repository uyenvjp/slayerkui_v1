# Checkpoint bước 12

Đọc ENEMY_HIT_AND_ABNORMAL_NOTES.md. Chưa phân tích hết, chưa dựng/host tiếp H5. Chỉ dùng nguồn và asset gốc; không thêm luật chơi từ fixture kiểm tra.

Từ slayer-work, kiểm tra module/corpus đã lưu:

```bash
python3 logic-step12/tools/write_validation.py
```

Tạo lại cần đầu vào reproduced-step3 đúng SHA của libil2cpp.so và các metadata/maps bước 3:

```bash
python3 logic-step12/tools/generate_enemy_hit_vectors.py --source reproduced-step3 --out logic-step12
python3 logic-step12/tools/generate_abnormal_queue_vectors.py --source reproduced-step3 --out logic-step12
python3 logic-step12/tools/write_validation.py
```

Các bộ này không chạy game hoặc dịch vụ. Modifier/result/Unity/getter/RNG/executor dependencies được khai báo rõ; chưa nhận là toàn bộ chiến đấu hay Android parity. Đầu mối nối tiếp cụ thể: ExecuteAbnormalAddDamage 0x50b7460, Schedule 0x50b7248, iterator 0x50beb38; GetDmg 0x50b7810, modifiers 0x50b8b60 / 0x50b8cbc / 0x50b8e74 và DmgResult/Death downstream.
