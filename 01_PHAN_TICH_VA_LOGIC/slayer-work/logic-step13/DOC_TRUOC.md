# Checkpoint combat tiếp sau bước12

Đọc ENEMY_HP_DEATH_LOOT_AND_WAVE.md. H5 vẫn tạm dừng; chưa phân tích hết client/game, chưa có game offline hoàn chỉnh.

Kiểm tra kết quả đã lưu, từ slayer-work:

```bash
python3 logic-step13/tools/write_validation.py
```

Tạo lại từ thư mục reproduced-step3 đúng SHA ELF và metadata/maps đã phục hồi ở bước3:

```bash
python3 logic-step13/tools/generate_enemy_lifecycle_vectors.py --source reproduced-step3 --out logic-step13
python3 logic-step13/tools/generate_full_damage_vectors.py --source reproduced-step3 --out logic-step13
python3 logic-step13/tools/generate_stage_death_vectors.py --source reproduced-step3 --out logic-step13
python3 logic-step13/tools/write_validation.py
```

Không chạy game/native library hoặc dịch vụ. Cases chứa dữ liệu tổng hợp để kiểm tra nhánh; không dùng chúng làm hồ sơ/buff mặc định của game. Ba corpus mạnh dần có phạm vi riêng, không cộng thành tỷ lệ hoàn thành. Phần BaseSetting/multicast registration đọc tĩnh; dependency invocation giữ thứ tự và dừng nếu subscriber lỗi. Giá trị nguồn/stat/secure/RNG/Unity, các downstream manager/subscriber/spawn còn được khai báo rõ.

Thư mục này là nhánh combat của checkpoint liên tục. Không thay hoặc gộp tự động các gói nghiên cứu skin/account ở cuộc hội thoại khác chỉ vì trùng số bước.
