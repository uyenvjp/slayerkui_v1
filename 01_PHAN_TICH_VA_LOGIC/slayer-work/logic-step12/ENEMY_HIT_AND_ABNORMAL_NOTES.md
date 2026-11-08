# Bước 12 — quái nhận sát thương và hàng đợi bất thường

**Chưa phân tích hết game; H5 vẫn tạm dừng.** Chỉ đọc XAPK gốc và diễn giải lệnh ARM64 có giới hạn. Không nạp/chạy game native, gọi máy chủ, tạo asset hoặc triển khai website.

## Phạm vi mới đã đối chiếu

250 fixture đối chiếu **toàn thân EnemyBase.GetDmg** tại 0x50b7810, cùng 4 hợp đồng null/lazy. Trong cùng corpus có các thân MissProbability, WinType, AbnormalState_Cal, BurnState_Cal, IceState_Cal, hai phép mastery và IsBurning gốc; báo cáo xác nhận đã đi qua cả 9 entry. Tổng 105.456 bước lệnh hoàn thành, 1.106 địa chỉ lệnh khác nhau. Không lấy con số này làm độ phủ toàn game hoặc mọi đường đi.

Normal/Boss/SpecialBoss modifier và DmgResult/death lifecycle là **đầu vào phụ thuộc của phép kiểm tra này**. Các giá trị trả 701/702/703 trong fixture chỉ giúp nhận diện đúng dispatch/thứ tự, không phải công thức sát thương mới, dữ liệu game hoặc mặc định tài khoản. Số học modifier cũ ở bước 4 được giữ nguyên; chưa nối các thân modifier và mutation HP/death vào cùng corpus GetDmg.

244 fixture riêng đối chiếu ScheduleAbnormalAddDamage, factory/constructor iterator và ProcessDelayedAbnormalDamage.MoveNext; thêm 3 chuỗi/29 action. ExecuteAbnormalAddDamage là sink trong corpus queue, mới đọc tĩnh thêm thân thật. Chưa nối GetDmg → Schedule → Execute → GetDmg thành một replay chiến đấu.

## Chi tiết được sửa rõ so với bản nháp bước 7

| Điểm | Bằng chứng mới | Ý nghĩa khi port |
|---|---|---|
| Mastery 12/13/14 không tồn tại trong dictionary | Nhánh 0x50b7e2c chuyển thẳng 0x50b7f54 | Bỏ qua IceState_Cal, không thay missing bằng mastery=0 rồi gọi phép băng mặc định |
| Mastery băng tồn tại nhưng dưới 2 | Đi qua 0x50b7f38 → IceState_Cal(0) | Khác với không tìm thấy entry |
| Mastery băng >=2 | 0x50b7e48–0x50b7e58 gọi IceState_Cal(50) | Cờ ice effect có thể true lúc HitEffect được gọi |
| Cờ ice effect | Ghi/xóa 0x50b7c50 / 0x50b816c / 0x50b81a8 | Nhận cờ đúng tại HitEffect, rồi xóa; DOT loại 3 xóa và bỏ hit/sound |
| Kiểm tra nhiệm vụ sau nhận đòn | 0x50b83e0 đọc EnemyBase.isDead offset 514 sau DmgResult | Phải dùng trạng thái sau result/lifecycle, không một cờ tên lastGetDmgCheck tự đặt |
| Thứ tự recording | DmgResult/DotDmgResult → NeedRecording → AddDamageInfo → Replay.AddFrameSkillDamage | Giữ thứ tự trước kiểm tra quest 43 |
| MissState trực tiếp | Return sau FloatString và quest 27 nếu damageType=1 | Không đi tiếp quest 43 ở cuối dù isDead đã bật |

Bản nháp `logic-step7/port/recovered-enemy-damage.mjs` được giữ nguyên như lịch sử, chưa tự coi là đã được chứng minh bởi corpus mới. Module mới nằm ở `port/recovered-enemy-hit.mjs`, nhận đầu vào phụ thuộc rõ ràng.

## Đường xử lý đòn đánh

HitPossible=false thoát sớm. MissState bật thì phát chữ Miss, có nhánh quest 27 theo damageType. Nếu có StunObj và AbnormalSkillValue > 0, đòn không phải loại 3 và tag không phải boxed int 1004 thì yêu cầu ScheduleAbnormalAddDamage **trước** kiểm tra miss xác suất.

Accuracy lấy từ player, cộng Grinding Accuracy nếu tag là boxed int và có option. MissProbability gốc vẫn được gọi trước khi xét damageType 2/3; ở trueDamage nó thoát trước RNG. DamageType 2/3 bỏ qua kết quả miss nhưng vẫn có thể đã dùng một lượt RNG. Không thay bằng RNG hoặc xác suất tự đặt.

Tag int 45 bỏ qua các phép status/mastery/ice trong khối int, nhưng vẫn có thể xét Grinding DmgType. Tag 29 mastery >=2 tăng phép normal mastery nếu MonsterType=1; tag 34–36 mastery >=2 tăng boss mastery nếu MonsterType=2. Tag 1–3 mastery >=3 đi BurnState_Cal(30); IsBurning gốc là OR hai cờ byte offset 536/537. Tag 0 gọi CheckRandomCameraShake.

WinType dùng bảng ELF gốc tại 0x1f29fb0, với phần tử hợp lệ cho attack element 1–4 và default 0. Không tự thêm điều kiện loại trừ element=0 trước so sánh. Grinding DmgType và mastery tag18 có phép nhân float32 riêng rồi chuyển sang int64 trong khối inline. Các ca finite/signed int32 đã kiểm tra; không nhận là đã bao hết payload NaN/culture/secure wrapper.

CombinedDemon được xét qua hệ kiểu metadata và nhận AbnormalState_Cal. DivineBeastDmgInfoData bỏ FloatDmgText thông thường. TrueDamage bỏ khối modifier theo loại quái sau hit effect; không tự bỏ các phép status ở trước đó. Caller phải cung cấp trạng thái đúng, không dùng fixture làm hồ sơ game.

## Hàng đợi sát thương bất thường

| Thân mã | Địa chỉ | Kết quả đã xác nhận theo scope |
|---|---|---|
| ScheduleAbnormalAddDamage | 0x50b7248 | Chụp get_isCritical/get_isSuperCritical của Player, xếp tuple cờ, chỉ khởi coroutine mới khi handle null và GameObject active |
| ProcessDelayedAbnormalDamage factory | 0x50b7394 | Tạo iterator state 0, giữ tham chiếu enemy |
| Iterator constructor | 0x50b7438 | Lưu state theo thân gốc |
| Iterator MoveNext | 0x50beb38 | Chờ GameDeltaTime cộng dồn, kiểm tra chết/active, xử lý queue và xóa handle |
| ExecuteAbnormalAddDamage | 0x50b7460 | Đã đọc tĩnh, chưa đối chiếu toàn thân và không chạy trong corpus queue |

Tuple có cờ critical ở bit 0 và super critical ở bit 8; chỉ lấy bit thấp của mỗi getter. Ngưỡng chờ lấy từ ELF tại 0x1f29834, byte `cd cc cc 3d` = **0.10000000149011612 float32**. Iterator yield ít nhất một lần trước khi xử lý phần tử, ngay cả khi delta lớn. Mỗi lần xử lý xong một phần tử rồi queue còn dữ liệu, nó đặt bộ đếm chờ về 0 và chờ tiếp.

Nếu quái chết hoặc GameObject không active khi đã đến bước kiểm tra sau thời gian chờ thì clear queue, xóa handle và kết thúc. Chết trong lúc còn chờ không làm thân iterator bỏ qua ngay bước đợi. Nếu handle đã có, Schedule vẫn enqueue cờ nhưng không tạo coroutine mới. Nếu inactive và handle null, Schedule có thể enqueue mà không start coroutine trong thân đó.

Đọc tĩnh ExecuteAbnormalAddDamage cho thấy tra skill ID1004, lấy hai hệ số float ở +32/+36 rồi tính theo BattleLevel trước CalculateSkillDmg. Nó chọn critical type 0/1/2 theo cặp cờ đã chụp, truyền attackElement=4, skillDamage=true, trueDamage=false, tag boxed1004 và damageType=0 vào virtual GetDmg. Tag1004 bị loại ở điều kiện schedule đầu GetDmg, tránh tự xếp thêm cùng đường tại điểm này. Có nhánh thiếu skill/log và kiểu dữ liệu không hỗ trợ; chưa dịch/đối chiếu đầy đủ. Không coi đọc tĩnh này là replay hay bằng chứng toàn lifecycle.

## Kiểm chứng và việc còn lại

494 ca theo scope, 4 hợp đồng và 3 chuỗi/29 action đã chạy đạt. Kết quả/hashes ở VALIDATION_SUMMARY.json. Trình diễn giải thêm CMN, UBFX và BFXIL; indexed UXTW chỉ bổ sung trong EnemyHitVM để đọc bảng WinType. Unsupported instruction/call/field vẫn dừng có lỗi. Không tạo lại corpus các bước trước trong bước này.

Tiếp theo cần nối các thân Normal/Boss/SpecialBoss và HP/result/death/loot với GetDmg, nối executor skill1004 cùng queue và CalculateSkillDmg, đọc animation event → Attack_Func, lớp ghi đè/boss, di chuyển và replay/quest thật. Những phụ thuộc này còn mã client để phân tích; không gán tất cả sang thiếu backend. Account/save/serialization, tiến trình, asset/animation, IFix live và implementation máy chủ vẫn có các giới hạn đã ghi ở bước trước.
