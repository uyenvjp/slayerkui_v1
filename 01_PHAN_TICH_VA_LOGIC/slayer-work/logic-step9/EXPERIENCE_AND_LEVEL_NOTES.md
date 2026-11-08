# EXP và lên cấp — bằng chứng native baseline

Tất cả VA thuộc file ARM64 có hash ở `DOC_TRUOC.md`. Dùng trình diễn giải lệnh có giới hạn, giải mã wrapper bằng giá trị khai báo và mô hình hóa phụ thuộc; không thực thi mã game. Kết quả không tương đương replay Android, toàn bộ tài khoản, mọi subscriber, Unity hoặc server.

## 1. Ba đường nhận EXP

| Entry | VA | Phân biệt |
| --- | --- | --- |
| Get_Exp | `0x4f179d8` | AddBuffs, kỹ năng spirit type 10, cộng EXP, cập nhật UI, log rơi đồ và nhánh Cave |
| Get_Exp_WithOutSpiritSkill | `0x4f17d8c` | AddBuffs nhưng không RNG spirit, không log/Cave trong thân này |
| Get_Exp_NoBuff | `0x4f17ee8` | Cộng lượng truyền vào, không AddBuffs hoặc RNG/log/Cave |
| AddBuffs | `0x4f1766c` | Exp_Cal → scroll → cờ hot time → quảng cáo → event |
| HotTimeScrollManager.ApplyExp | `0x4d82bd0` | Nếu có `_hotTimeBuff`, type 0/1/2 nhân 2/4/5 |

Exp_Cal là thân đã phân tích bước 7: ExpAdd float32 được nâng lên double, nhân 1.000, chuyển signed long theo native rồi tính BigInteger `amount * coefficient / 100000`, chia cắt về 0. Get_Exp không gọi Exp_Cal riêng thêm lần nữa bên ngoài AddBuffs.

AddBuffs có thứ tự rõ ràng:

1. Gọi DatabaseManager.Exp_Cal.
2. HotTimeScrollManager.ApplyExp sửa BigInteger theo tham chiếu. Không có buff hoặc type ngoài 0–2 thì giữ nguyên; thân này không đọc thời gian hết hạn.
3. Xét EventManager.HotTime trước, SuperHotTime sau, HyperHotTime cuối: hệ số lần lượt 2, 4, 5. **Chỉ nhánh đầu tiên đúng được chọn**; nếu cả ba cùng true thì chọn 2, không chọn lớn nhất hay nhân cả ba.
4. Nếu AD_ExpBuff_LimitTime >= 1 thì nhân 3.
5. Gọi EventBuff_Active(type 2); nếu true, nhân EventBuff_Exp int32 rồi chia 100 bằng BigInteger.

Kỹ năng spirit chỉ được xét trong Get_Exp sau AddBuffs. SpiritSkillValue(10) float32 phải > 0 thì mới gọi Probability; thành công nhân EXP đã buff thêm 2. Probability dùng Random.Range float [0,100] và so **draw < chance**, nên bằng nhau không thành công. NaN/âm/0 ở kiểm tra chance không tiêu thụ RNG. Corpus dùng các giá trị RNG trả về được khai báo, chưa suy ra thuật toán RNG Unity.

Cả ba đường ghi CurrentExp trước, TotalExp sau, rồi gọi Fill_Update. CurrentExp/TotalExp là SilentBigInt, giữ BigInteger tùy độ lớn; không ép về int64/Number. Trong các thân nhận EXP này không tăng UserLevel hay tự trừ EXP để lên cấp. Get_Exp còn log currency 24 với lượng sau buff/spirit; gameMode 6 yêu cầu CaveExp_Update. Hai đường còn lại không tự gọi các sink này trong thân đã đọc.

1.232 ca = 176 snapshot × 7 entry (5 entry ở bảng trên và getter cap/dự đoán cấp ở phần sau). Kiểm tra giá trị BigInteger, trạng thái không đổi ngoài hai trường EXP, thứ tự hiệu ứng và số lần tiêu thụ RNG. Có fixture âm, rất lớn, ngưỡng xác suất, NaN/Infinity và nhiều cờ hot-time cùng bật. Đây là dữ liệu kiểm thử, không phải mặc định của tài khoản offline.

## 2. Bảng EXP khác giới hạn cấp

`UserLevelBaseData` có **5.001 dòng**, Level 0–5.000. `get_UserMaxLevel` tại `0x4f1802c` tra `DataManager.UpdateMaxValues[5]`. Bảng `UpdateMaxValueBaseData` gốc đặt type 5 là **4.000**. Không được lấy dòng cuối bảng EXP làm cap đang áp dụng của baseline này. Patch/runtime có thể khác; không nhận đã đọc IFix live.

`CheckExpAndGetUserLevel` tại `0x4f18274` chụp CurrentExp, UserLevel và MaxExp vào biến cục bộ. Nếu EXP đủ, nó trừ cost cục bộ, tăng level int32, **rồi mới** so level với cap. Chỉ khi vẫn dưới cap mới đọc cost cho level mới từ ExpList và lặp. Hàm trả level dự đoán, không ghi account EXP/level/MaxExp. Vì cap được kiểm tra sau tăng, không tự thêm gate đầu vòng hay clamp kết quả trong bản dịch, kể cả fixture cấp đã bằng/vượt cap.

Corpus lấy các ngưỡng thực trong bảng và các giá trị cost−1/cost/cost+1; không tuyên bố bao phủ tất cả 5.001 dòng và mọi tổ hợp. Thiếu dòng bắt buộc trong fixture thì báo lỗi, không fit đường cong hoặc chèn cost giả.

## 3. Lên cấp thật và callback

| Entry | VA |
| --- | --- |
| Button_LevelUp | `0x4f18554` |
| LevelDisplay | `0x4f16a4c` |
| LevelUp_Callback | `0x4f1758c` |
| LevelUpRequest | `0x4f162d4` |
| LevelUp_Stop | `0x4f172d4` |
| PointerUp | `0x4f190a4` |
| LevelUp_coroutine.MoveNext | `0x4f22448` |
| LevelUpDelay_IE.MoveNext | `0x4f22318` |

Button_LevelUp đầu tiên so UserLevel với cap. Đã đạt cap thì yêu cầu LogError và trả về; nhánh này không tự xóa cờ giữ nút. Nếu EXP thiếu, nó yêu cầu AlarmText và xóa isPointerDown_LevelUp. Nếu đủ:

1. Trừ MaxExp khỏi CurrentExp (TotalExp giữ nguyên).
2. Tăng UserLevel int32 và levelUpCount int32.
3. Cộng 3 vào UserStatPoint int32, cập nhật hiển thị điểm và trigger Animator.
4. Gọi **LevelUpAction bắt buộc khác null**.
5. Fill_Update, hiệu ứng/âm thanh, mini quest, AdjustEventLevel, telemetry, callback levelEvent nếu dictionary có entry khác null.
6. Xét các mốc tutorial/unlock.

Thứ tự callback có tác dụng lên trạng thái. OnEnable (`0x4f16074`) tạo Action(this, LevelUp_Callback), Combine với static LevelUpAction rồi ghi ở static offset 8; OnDisable Remove tương ứng. Usage `0xa42c1c0` giải ra encoded `0x6000eb45`, method definition index 30114, VA `0x4f1758c`. `baseline-callback-registration.json` giữ bản ghi đã giải. Đây là đọc tĩnh đăng ký, chưa mô phỏng toàn runtime multicast.

LevelUp_Callback gọi LevelDisplay. LevelDisplay tra ExpList bằng UserLevel hiện tại và ghi MaxExp **trước** hai lời gọi text cấp; callback còn yêu cầu Package0_Setting nếu level == 20. Vì vậy một lần lên cấp hợp lệ có thể dùng MaxExp cũ để trừ, rồi nhận MaxExp mới qua callback trước Fill_Update. Corpus nối thân callback/display gốc làm listener duy nhất đã đăng ký rõ ràng, không tự gán cost ở Button_LevelUp hoặc giả rằng mọi subscriber đều không làm gì.

Khi callback bắt buộc null, native đi vào NullReference sau khi EXP/cấp/điểm đã đổi. Hợp đồng null kiểm tra cả trạng thái/hiệu ứng dở dang này; không biến lỗi thành lên cấp thành công. Dictionary levelEvent được mô hình bằng entry observer khai báo; snapshot observer thấy đã tăng cấp/điểm và đã đổi MaxExp. Hành vi subscriber thật ngoài listener baseline còn chưa khôi phục hết.

## 4. Các mốc được đọc trong Button_LevelUp

| Cấp vừa đạt | Điều kiện thêm | Yêu cầu trong thân hàm |
| --- | --- | --- |
| 150 | ContentsOpenData.Skin true | Tutorial skin và PointerUp |
| 200 | Không có gate cờ thêm ở nhánh này | Tutorial level200 và PointerUp |
| 220 | Không có gate cờ thêm | Tutorial plaza, PointerUp, kiểm tra mở Plaza, call phụ `0x6e4b24c` còn để opaque |
| 245 | Không có gate cờ thêm | Tutorial cave, PointerUp, kiểm tra Cave, Reddot(2,true) |
| 250 | Không có gate cờ thêm | Tutorial slayer class, PointerUp, kiểm tra mở class |
| 265 | Không có gate cờ thêm | Tutorial dragon force, PointerUp, DragonForce/PunchMachine checks, Reddot(1,true) |
| 280 | ContentsOpenData.RankingBattle true | Tutorial, PointerUp, kiểm tra RankingBattle, Reddot(4,true) |
| 400 | ContentsOpenData.Training true | Tutorial, PointerUp, kiểm tra Training |
| 500 | Không có gate cờ thêm | SkillDeck_AddCheck; không PointerUp ở nhánh này |

ContentsOpenData là `DataTable.Client.ContentsOpenBaseData`, không phải cờ tự tạo của UserData. Skin/RankingBattle/Training có offset 42/36/37 trong object này. Các hàm unlock/tutorial downstream được ghi nhận theo thứ tự; bảng không nhận rằng đã phân tích mọi điều kiện mở nội dung của toàn game.

## 5. Batch và giữ nút lên cấp

LevelUpRequest chỉ xử lý nếu levelUpCount >= 1. Nó gửi số lần chờ vào SeasonSkillEvent quest type 9, xóa count, gọi achievement/quest/skill shortcut, bật lại hiệu ứng level, cập nhật ForceOption_Stat nếu level >= 265, phát âm thanh, lấy get_SyncExp rồi gọi **APIManager.LevelUp(UserLevel hiện tại, SyncExp)**. Không dùng cấu trúc request ItemUpgrade(index,type,count) của bước 8. get_SyncExp và API là các phụ thuộc có fixture/sink, chưa được dịch thân ở bước này; không bịa payload hay phản hồi thành công.

PointerUp gọi LevelUp_Stop. Stop gọi LevelUpRequest trước, sau đó xóa UserLevelUp_ing và isPointerDown_LevelUp rồi yêu cầu PlayerClassManager.CheckReddot. Tự dừng ở mốc tutorial vì thế có thể gửi batch ngay trong Button_LevelUp. Overflow int32 của bộ đếm/điểm giữ đúng kiểu; không sửa bằng giới hạn do bản port tự đặt.

Iterator giữ nút:

- State 0 gọi TimeManager.ForceSyncStagePlay, đặt counter time float32 = 0 rồi gọi Button_LevelUp ngay. Không gate hai cờ trước lần bấm đầu.
- Khi cả isPointerDown_LevelUp và UserLevelUp_ing true: tăng counter bằng **0,1 float32**. Nếu counter **> 0,5**, gọi Button_LevelUp; không reset counter ở lần gọi này.
- Mỗi lần qua nhánh tiếp tục đều WaitForSeconds **0,03 float32** và state 1, kể cả nếu Button_LevelUp vừa tự dừng cờ bên trong. Lần resume sau mới đi nhánh kết thúc.
- Khi một cờ false, gọi LevelUpRequest, xóa isPointerDown rồi kết thúc. Nhánh này không tự xóa UserLevelUp_ing.
- Iterator debounce riêng bật LevelUpDelay, chờ **0,1 float32**, rồi tắt cờ ở resume state 1.

Counter tăng 0,1 và thời gian chờ 0,03 là hai đại lượng khác nhau trong mã gốc, không được suy thành cứ 0,1 giây mới tăng một cấp. Hằng ELF `0x1f29834 = 0.10000000149011612`, `0x1f29888 = 0.029999999329447746`; so 0,5 là immediate float.

832 ca = 104 snapshot × 8 entry, kèm 7 chuỗi/32 chuyển trạng thái: bấm hai cấp rồi thả, đi qua mốc 200 và 265, giữ liên tiếp với callback cập nhật ngưỡng, tự dừng tại 150, đi tới cap 4.000 rồi thả và hai pha debounce. Fixture time được lượng tử hóa float32 ngay ở dữ liệu đầu vào, tương ứng trường iterator native. Không kiểm tra scheduler/độ trễ thực của Unity hoặc độ trễ mạng.

## 6. Ranh giới còn lại

ExpAdd/spirit/event getter, expiry/khởi tạo scroll, UI Fill_Update và training EXP, downstream quest/unlock/tutorial, get_SyncExp, request queue/async response và mọi subscriber không được suy thành đã khôi phục chỉ vì entry gọi chúng đã qua test. Static OnEnable/OnDisable/Start/Awake/constructor mới được đọc từng phần, không nhận cả vòng đời đã đối chiếu. Tất cả phép so đối chiếu ở đây giả định manager/collection tương ứng được khởi tạo trong fixture. IFix baseline là unpatched; không có live payload/backend.
