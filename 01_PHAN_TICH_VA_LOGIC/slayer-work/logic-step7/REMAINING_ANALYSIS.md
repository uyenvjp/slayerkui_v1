# Phần còn phải phân tích — không lấy số lượng file làm tỷ lệ hoàn thành

| Nhóm | Bằng chứng hiện có | Phần còn thiếu |
| --- | --- | --- |
| Lõi sát thương | Số học helper, ATK/HP, 16 getter buff, timing, Player.GetDmg/PenaltyDmg; bước12 đối chiếu GetDmg orchestration + status/mastery/miss/WinType và schedule/queue iterator | Nối modifier Normal/Boss/SpecialBoss và result/HP/death vào cùng GetDmg; executor skill1004 còn sink/đọc tĩnh, replay/recording đầy đủ, toàn bộ nguồn buff/dictionary/wish/mastery |
| Vòng chiến đấu | Iterator Attack_Coroutine của EnemyBase và chọn chỉ số quái đã đối chiếu | Animation event → Attack_Func, Player di chuyển/chọn mục tiêu, coroutine khác, toàn bộ lớp ghi đè và boss |
| Chết/hồi sinh | Hai iterator Co_FakeDeath/Defeat và hợp đồng setter đã đọc/đối chiếu | Hp_Heal, Dead/Death downstream, WaterReflect callback, BattleEnd/Defeat_Battle, scheduler, cleanup đầy đủ |
| Rơi và nhặt đồ | StageItemDrop/helper tiền/RNG; bước 8 thêm CurrencyData Gain/Use; bước 9 thêm Get_Exp/level; bước 10 thêm get/set ExpAdd, cộng mảng spirit, get_SyncExp/Exp_Sync và dựng request api13 | Toàn thân nhặt từng currency, mọi subscriber/nguồn gán buff, expiry scroll, UI/training EXP và xử lý queue/serialization/RPC downstream, cube/dice/soul Cal, AddEquipment/EquipmentSync |
| Nâng vũ khí | Bước 7 có số học/gate/cap/PointerUp; bước 8 thêm chỉ số/ownership, ApplyEquipment/Level_Value_Setting, coroutine giữ nút, ATK apply và cube mutation; 5 entry APIValidator có corpus | Equip/fusion/awakening toàn chuỗi; queue/RPC/ngoại lệ, PostLog và subscriber chưa đầy đủ. ItemUpgrade request/async response mới đọc tĩnh, sink trong corpus nối tiếp vẫn là mô hình |
| Tiến trình màn | Bảng gốc, Stage_Init/MakeEnemy_Stage/Enemy_Dead đã trích ASM | BossStart/StageClear, chuyển vùng, chế độ phụ, phần thưởng và lưu tiến trình trọn chuỗi |
| Tài khoản/lưu | Có map trường, constructor và API/ServerPrefs đã đọc từng phần; bước 10 đối chiếu cache object EXP, cập nhật chuỗi, áp sync và tham chiếu trong request | Bước 11 đã có corpus ServerPrefs/Value, dirty/load/save, api255 response/callback, queue bình thường và fragment retry. Còn khởi tạo hồ sơ đúng baseline, serialization/deserialization đầy đủ, nguồn buff theo tài khoản, catch/unwind, transport và phần lưu cần thay thế offline |
| Hình/animation | Có PNG xuất từ tài nguyên XAPK gốc, UnityFS parser và pathID của tập chọn | AnimatorController/AnimationClip, frame/timing/pivot/attachment, ánh xạ nhân vật/vũ khí/boss đầy đủ; không vẽ thay hoặc tăng giả độ phân giải |
| IFix/backend | Biết có ranh giới và các đường tải/gọi | Payload live và implementation server không tự xuất hiện chỉ nhờ đọc client. Chỉ ghi kết luận có chứng cứ trong đầu vào; không giả đã giải mã phần không có |

Trạng thái: **chưa phân tích hết, chưa cho phép kết luận đã port hoàn chỉnh**. Bản thử H5 hiện được tạm dừng; không dùng nó làm chuẩn để sửa ngược cách hiểu native.

Bước 11 làm rõ: callback ServerPrefs chỉ được gọi ở nhánh thành công trong SetClientData response. Các ca callback thất bại được tiêm ở corpus riêng không chứng minh nhánh retry đó sẽ tới được qua phản hồi lỗi bình thường. Đọc `../logic-step11/SAVE_QUEUE_AND_RESPONSE_NOTES.md` trước khi tiếp tục persistence/network.

Bước12 có 494 ca + 4 hợp đồng, 3 chuỗi/29 action. Đây là GetDmg orchestration dưới các downstream fixture và queue coroutine riêng, chưa nối full battle lifecycle. Bản nháp enemy damage bước7 vẫn là bản lịch sử; dùng module mới và giới hạn ở `../logic-step12/ENEMY_HIT_AND_ABNORMAL_NOTES.md`.

Combat tiếp sau bước12: đã nối modifier thật, HP/result/instant-kill/Death, ba subscriber normal và StageItemDrop; thêm nhánh EnemyRemove/Enemy_Dead mode0. Còn mọi boss/subclass khác, upstream/stat/account, các mode khác, spawn/clear và acquisition. Scope 522 ca ở `../logic-step13/VALIDATION_SUMMARY.json`, không phải full game.

Bước 14 đã nối sinh quái, rương thưởng, callback rương vỡ và đặt lại wave ở mode 0. Kết quả ở `../logic-step14/VALIDATION_SUMMARY.json`. Cần đọc tiếp BossClear, đổi stage, lifecycle và acquisition. Callback rương, coroutine và callback chuyển cảnh được điều khiển riêng trong bộ kiểm chứng.
