# Slayer Legend — phân tích tiếp, bước 7

**Đây là mã phân tích không giao diện, chưa phải game đã port xong.** Theo yêu cầu mới nhất, đã dừng công việc dựng/triển khai H5 để tiếp tục giải mã logic. Bản thử H5 cục bộ đã tạo trước đó chưa được triển khai; không lấy các lựa chọn của bản thử đó làm bằng chứng về game gốc.

Chỉ đọc tĩnh thư viện ARM64 và metadata/dữ liệu từ XAPK đã cung cấp. Không chạy APK, không nạp thư viện game, không gọi dịch vụ game. Không tạo hoặc vẽ asset thay thế.

## Kết quả có thể tái lập

- `research/`: ASM và manifest phương thức; mỗi manifest giữ token, địa chỉ bắt đầu/kết thúc, tên file nguồn chứng cứ. Các trình tạo vector xác minh SHA-256 thư viện trước khi diễn giải.
- `port/recovered-stage-rewards.mjs`: chín entry về rơi đồ, vàng, EXP, chọn quái và phân chia soul. Getter tài khoản, RNG và nơi nhận hiệu ứng được cung cấp rõ từ fixture.
- `port/recovered-enemy-ai.mjs`: một thân `MoveNext` của coroutine nhịp đánh quái. Không thay thế toàn bộ di chuyển, animation event hoặc AI đặc thù từng boss.
- `port/recovered-player-lifecycle.mjs`: hai thân coroutine hồi sinh/thất bại; trả yêu cầu hồi máu, di chuyển và kết thúc trận. Những hàm con này không tự trở thành đã khôi phục chỉ vì có sự kiện trả về.
- `port/recovered-acquisition-queue.mjs`: hai overload `DropObject.AddCurrency`, thứ tự flush context cũ → đổi context → yêu cầu cộng cục bộ → xếp phần thưởng vào hàng đợi. `AcquireItems` và `GainCurrency` được mô hình bằng hook rõ ràng, chưa xác nhận hành vi máy chủ.
- `port/recovered-equipment-upgrade.mjs`: số học giá trị/giá/cấp tối đa, điều kiện cho phép nâng và gom lượt khi nhả nút. `ApplyEquipment`, phần UI/tính lại chỉ số và máy chủ chưa được thay bằng logic đoán.
- `port/recovered-enemy-damage.mjs`: **bản dịch nháp** `EnemyBase.GetDmg`, chưa có bộ đối chiếu toàn thân hàm. Các helper số học đã kiểm ở bước 4 không đủ để khẳng định toàn bộ orchestration này đúng.
- `recovered-enums.json`: hằng enum thật đọc từ metadata, gồm State, GameMode, DungeonTypes, CurrencyTypes, DropType và RebornState.

## Chạy kiểm tra

Các lệnh dưới đây chạy từ thư mục gốc checkpoint:

```bash
node logic-step7/port/verify-rewards.mjs
node logic-step7/port/verify-enemy-ai.mjs
node logic-step7/port/verify-lifecycle.mjs
node logic-step7/port/verify-acquisition.mjs
node logic-step7/port/verify-upgrade.mjs
```

Để dựng lại vector từ đầu vào đã giải mã (ví dụ thư mục `reproduced-step3`):

```bash
python3 logic-step7/tools/generate_reward_vectors.py --source reproduced-step3 --out logic-step7
python3 logic-step7/tools/generate_ai_vectors.py --source reproduced-step3 --out logic-step7
python3 logic-step7/tools/generate_lifecycle_vectors.py --source reproduced-step3 --out logic-step7
python3 logic-step7/tools/generate_acquisition_vectors.py --source reproduced-step3 --out logic-step7
python3 logic-step7/tools/generate_upgrade_vectors.py --source reproduced-step3 --out logic-step7
```

Xem từng `*-native-flow-report.json` và `VALIDATION_SUMMARY.json` để biết số ca và giới hạn. Các fixture cố định/mô hình hóa phụ thuộc; đây không phải chạy Android, Unity, payload IFix đang hoạt động hay backend. Không dùng tổng test hoặc danh mục phương thức làm phần trăm hoàn thành game.
