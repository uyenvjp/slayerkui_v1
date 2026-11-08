# Slayer Legend — đang tiếp tục phân tích

**Chưa phân tích hết. Đang ưu tiên phân tích theo yêu cầu mới nhất; đã tạm dừng dựng và triển khai H5.** Bản thử H5 cục bộ đã được tạo trước khi người dùng nhắc lại yêu cầu phân tích, nhưng chưa triển khai. Không lấy dữ liệu hồ sơ/tốc độ/tiến trình do bản thử tự đặt làm logic gốc. Chỉ dùng mã/dữ liệu/asset của XAPK gốc; không tạo hoặc thay hình ảnh. Đây là checkpoint phân tích, không phải bàn giao game hoàn chỉnh.

Mốc 3–5 được giữ nguyên trong `logic-full/`, `logic-step4/`, `logic-step5/`.

## Đã bổ sung trong lượt đang làm

- `logic-step6/port/recovered-player-aggregation.mjs`: chuỗi tính ATK, HP/hồi phục và các nhánh preset. Nhận trạng thái giải mã rõ ràng; không tự tạo dữ liệu tài khoản/buff thiếu. Các hàm thành phần từ bước 5 được sử dụng lại, một số nguồn buff vẫn là đầu vào cần khôi phục tiếp.
- `logic-step6/tools/native_flow_vm.py`: diễn giải có giới hạn bốn thân hàm ARM64 ATK/HP, với getter/giá trị Silent*/vòng đời object/khởi tạo metadata/callback được mô hình hóa rõ bằng fixture. Không nạp/chạy thư viện game. Lệnh/call/field không hỗ trợ sẽ dừng và báo lỗi.
- **414 ca đối chiếu đường đi ATK/HP đều đạt**, trên 207 snapshot kiểm tra; 303.262 bước lệnh được diễn giải, 3.523 địa chỉ lệnh khác nhau đi qua. Đây là phạm vi bốn hàm dưới các phụ thuộc được mô hình, không phải kiểm chứng mọi đường đi hay gameplay Android/Unity.
- 207 kiểm tra bổ sung xác nhận ghi HP/Heal trước callback, callback trước cập nhật hiệu ứng thanh HP, và không tự thay HP hiện tại.
- Đã phân biệt kiểu số của Black Orb: nhánh ATK tạo hệ số int32, nhánh HP tạo hệ số int64. Không dùng chung một công thức tràn số cho cả hai.
- Đã lập danh mục lời gọi tĩnh của Assembly-CSharp: 65.440 bản ghi phương thức, 6.871 kiểu, 399.416 cạnh gọi/tail-call trực tiếp được nhận diện. **Quét danh mục không đồng nghĩa đã hiểu/dịch toàn bộ các phương thức này.** Còn 12.803 vị trí gọi gián tiếp, 2.427 tail-call gián tiếp và nhiều target cần phân tích tiếp; các địa chỉ generic/shared có thể có nhiều tên sở hữu.
- Đã port 16 getter DatabaseManager trong `logic-step6/port/recovered-database-buffs.mjs`: buff ATK, bốn hệ nguyên tố, bốn Black Orb, bốn buff theo mùa, Demon Altar, kiểm tra và lấy giá trị spirit. 630 ca đối chiếu thân hàm ARM64 đều đạt; các phụ thuộc dictionary/wish/Silent*/enum được mô hình hóa rõ. 6 kiểm tra hợp đồng thiếu dữ liệu/null đạt. Nguồn tạo buff và dữ liệu tài khoản vẫn cần phân tích tiếp.

- Đã port vòng thời gian trong `logic-step6/port/recovered-skill-timing.mjs`: 20 entry gồm giới hạn cooldown, giảm cooldown, đếm lượt đánh, khóa kỹ năng, stack và hai coroutine. **820 ca đối chiếu thân hàm/hiệu ứng chuẩn hóa đạt** trên 41 snapshot; thêm 4 kiểm tra chuyển frame; bộ flow có thêm 100 ca cho các đầu vào NaN. Account getter, Unity UI, cấp phát iterator, bản địa hóa và wrapper mã hóa vẫn được mô hình rõ; không nhận là chạy Unity.

- Đã port thân hàm `PlayerBase.GetDmg` trong `logic-step6/port/recovered-player-damage.mjs`, gồm né/kháng, giảm sát thương, khiên, HP, cứu tử và yêu cầu callback/hiệu ứng theo thứ tự. 103 tình huống GetDmg và 103 tình huống PenaltyDmg đối chiếu đạt; downstream Death/WaterReflect/Unity và getter/RNG vẫn được mô hình rõ, chưa nhận là đã chạy toàn bộ lifecycle.
- Đã port ba getter phòng thủ trong `logic-step6/port/recovered-defense-stats.mjs`; 198 ca đối chiếu và ghi cache đạt.
- Đã kiểm kê 5.271 file trong 10 APK con; đọc thêm đường IFix, ServerPrefs, API trang bị/nâng cấp/tiến trình và thưởng offline. Phân biệt mã client còn chưa đọc hết với payload runtime hoặc implementation máy chủ chưa có trong đầu vào; xem `logic-step6/OFFLINE_BOUNDARY.md`.

## Phát hiện mới cần giữ

- Siêu chí mạng trong ATK thường chỉ được tính lại nếu xác suất chí mạng >=100; nhánh còn lại giữ giá trị trước đó. Preset xử lý khác.
- Chí mạng dùng bước làm tròn float32 về số nguyên chẵn khi đúng nửa đơn vị. Không dùng `Math.round` của JavaScript thay trực tiếp.
- Nhánh tăng HP của spirit ID 9 chỉ được xét trong khối `Spirit_Hp > 0`.
- Native `playerHpUpdate` là callback bắt buộc ở cuối chuỗi HP; module tính toán trả mô tả hiệu ứng, `applyHpState` nhận runtime callback để áp dụng đúng thứ tự.

## Bổ sung bước 7 — tiếp tục phân tích

- `logic-step7/REWARDS_AND_ACQUISITION.md`: chuỗi quái chết, RNG/rơi đồ, nhặt tài nguyên và batch AcquireItems; phân biệt tạo object rơi với thời điểm cộng tài khoản.
- `logic-step7/AI_LIFECYCLE_AND_UPGRADE.md`: coroutine nhịp đánh quái, chọn quái, nhánh hồi sinh/thất bại, cấp tối đa và giá nâng vũ khí; ghi rõ các hàm con chưa dịch/đối chiếu.
- Đã dịch và tạo corpus đối chiếu có giới hạn cho rơi đồ/vàng/EXP/chọn quái, iterator đánh quái, iterator hồi sinh/thất bại, hai overload xếp tài nguyên và các entry số học/điều kiện nâng vũ khí. Kết quả và phạm vi chính xác ở `logic-step7/VALIDATION_SUMMARY.json`.
- Bước 7 có bản nháp `EnemyBase.GetDmg` nhưng **chưa đối chiếu toàn thân**. Helper bước 4 đúng không tự chứng minh bản nháp orchestration này đúng.
- Các enum trạng thái, chế độ trận, dungeon, tiền tệ và hồi sinh được đọc từ metadata thật trong `logic-step7/recovered-enums.json`.
- Đã dựng lại corpus bước 6 sau khi bổ sung hỗ trợ lệnh cho trình diễn giải; 2.268 ca cũ vẫn đạt. Không chạy thư viện native, Unity, live IFix hay backend.

## Bổ sung bước 8 — trang bị và tiền tệ

- `logic-step8/EQUIPMENT_FLOW_NOTES.md`: đã dịch/đối chiếu 9 entry chỉ số trang bị và thay đóng góp vào tổng sở hữu; phân biệt ATK double với chí mạng/vàng float32, base int64 với giá base int32. 1.359 ca đạt.
- Đã nối Upgrade_Func → ApplyEquipment → Level_Value_Setting, UpgradeStat_Apply, PointerUp và hai coroutine, gồm thân hàm trừ cube/ghi sổ CurrencyData gốc. 421 ca đạt; thêm 3 chuỗi nối tiếp với 9 lần chuyển trạng thái. Phụ thuộc UI/quest/telemetry/audio, callback, Player.Atk_Cal và API vẫn được mô hình rõ, không nhận là trọn gameplay hoặc mạng.
- Đã xác định tự flush batch ngay bên trong Level_Value_Setting khi chạm cap, trước phần tăng tổng số nâng; coroutine giữ nút áp dụng ATK ở nhánh kết thúc và chỉ khi nâng đúng vũ khí đang trang bị. Hằng chờ lấy từ ELF: 0,2 / 0,03 / 0,1 giây float32.
- CurrencyData.Gain/Use instance/static đã qua 384 ca đối chiếu signed int64 và callback sau khi ghi đủ hai trường. Năm entry APIValidator chụp/so sánh Amount/TotalGet/TotalUsed qua 483 ca và 4 hợp đồng null. Đường request/async response ItemUpgrade được đọc tĩnh thêm, chưa dịch toàn queue/RPC/ngoại lệ hoặc PostLog.
- Tổng bước 8: 2.647 ca theo phạm vi; kết quả thực chạy ở `logic-step8/VALIDATION_SUMMARY.json`. Không lấy số ca làm tỷ lệ hoàn thành. Các trường fixture không phải mặc định khởi tạo tài khoản offline.

## Bổ sung bước 9 — EXP và lên cấp

- `logic-step9/EXPERIENCE_AND_LEVEL_NOTES.md`: 3 đường nhận EXP (đầy đủ / bỏ spirit / bỏ buff), AddBuffs và scroll, getter cap và dự đoán cấp đã qua 1.232 ca có giới hạn. Phân biệt BigInteger EXP, hệ số float32/long, thứ tự nhân buff và RNG có điều kiện.
- Đã đọc cách OnEnable đăng ký LevelUp_Callback; đã nối thân callback/LevelDisplay thật vào corpus Button_LevelUp. Mỗi lần bấm đủ EXP trừ cost cũ, tăng cấp và cộng 3 điểm trước callback; callback cập nhật MaxExp mới trước Fill_Update. Mọi subscriber khác vẫn chưa khôi phục đầy đủ.
- 8 entry áp dụng cấp/callback/hiển thị/request/dừng/thả/giữ/debounce qua 832 ca; thêm 7 chuỗi với 32 lần chuyển trạng thái và hợp đồng null callback. Các mốc unlock và tự flush request được đối chiếu theo scope; downstream UI/quest/tutorial/unlock/get_SyncExp/API vẫn là phụ thuộc rõ ràng.
- UserLevelBaseData có 5.001 dòng, nhưng native get_UserMaxLevel lấy UpdateMaxValues[5] = 4.000. Không dùng dòng cuối bảng làm cap hoặc đếm số dòng thành số hệ thống đã khôi phục.
- Tổng bước 9: 2.064 ca theo phạm vi, báo cáo thực chạy ở `logic-step9/VALIDATION_SUMMARY.json`. Không thực thi game, gọi server, tạo asset hay triển khai H5.

## Bổ sung bước 10 — nguồn EXP và request lên cấp

- `logic-step10/EXP_DATA_AND_REQUEST_NOTES.md`: đã dịch/đối chiếu get/set ExpAdd, getter cộng mảng spirit, get_SyncExp và Exp_Sync; 910 ca, thêm 7 hợp đồng null/parse. Giữ thứ tự ghi cache float32, wrap int32, double sum và trạng thái dở dang khi parse trường EXP thứ hai lỗi.
- Đã thay scalar ExpAdd trong bộ đối chiếu nhận EXP bằng thân getter gốc: 704 ca nối AddBuffs/3 đường Get_Exp đạt. Mọi nguồn gán buff/array và các subscriber vẫn chưa khôi phục đầy đủ.
- Đã đọc thân gốc tạo request LevelUp/AddRequest/RequestData.Create và đưa nhánh api 13 vào corpus: 64 ca + 3 chuỗi/9 chuyển trạng thái. Getter cập nhật object cached; request giữ tham chiếu object đó trong phạm vi trước xử lý queue. AcquireItems/delegate/collection và transport còn là phụ thuộc rõ ràng, không nhận là đã kiểm chứng gói mạng thực tế.
- Async response LevelUp được đọc tĩnh thêm, chưa đối chiếu toàn RPC/ngoại lệ/IsValidCode. Không áp quy tắc currency snapshot của ItemUpgrade sang LevelUp.
- Tổng bước 10: 1.678 ca theo phạm vi, kết quả thực chạy ở `logic-step10/VALIDATION_SUMMARY.json`. H5 tiếp tục tạm dừng; không chạy native game, gọi server hoặc tạo asset thay thế.

## Bổ sung bước 11 — lưu, queue và phản hồi

- `logic-step11/SAVE_QUEUE_AND_RESPONSE_NOTES.md`: đã đối chiếu 24 entry ServerPrefs/Value (2.304 ca) và 14 entry API controls/IsValidCode (1.344 ca). Giữ identity Value, quy tắc không sửa chuỗi parse lỗi, dirty/load/save/remove và điều kiện CanRequest dùng dấu `<` nghiêm ngặt.
- Đã nối thân sync/callback/Signal/UniTaskWait/ResetAllDirty trong 192 chuỗi, và RequestLoop bình thường trong 96 chuỗi. Sequence lấy từ phản hồi; mã lỗi bình thường vẫn có thể Dequeue/reset counters trong loop. UI, queue, Task/UniTask và RPC là phụ thuộc khai báo rõ.
- **Kết luận được làm rõ bằng 102 chuỗi mạnh hơn:** API SetClientData (api 255) chỉ gọi callback ServerPrefs khi IsValidCode thành công. Với phản hồi mã khác 1, hai frame tiếp theo trong corpus vẫn chờ, một request đã tạo. Vòng ba lần gửi trong ServerPrefs không đủ để khẳng định mọi lỗi sẽ tự retry; 192 chuỗi riêng tiêm callback trực tiếp là phạm vi yếu hơn.
- Đã đối chiếu riêng 140 chuỗi fragment retry tại 0x481ad28 với context register/stack được dựng rõ. Giữ ngưỡng 6/3, Delay 2 giây, mã 17/4. Chưa đối chiếu lối vào catch, phân loại exception hoặc unwind gRPC.
- Tổng bước 11: **3.648 ca entry**, báo riêng **393 chuỗi nối/1.585 action**, **140 chuỗi fragment/180 action**, 36 hợp đồng và 4 ca signal. Kết quả thực chạy và phạm vi trong `logic-step11/VALIDATION_SUMMARY.json`; số ca không phải tỷ lệ hoàn thành.
- Không tạo lại corpus cũ trong bước này; chỉ bổ sung ORR/LDURB/STURB cho các thân mới trong trình diễn giải. Không nạp game native, gọi dịch vụ, tạo asset hoặc triển khai H5.

## Bổ sung bước 12 — quái nhận đòn và sát thương bất thường

- `logic-step12/ENEMY_HIT_AND_ABNORMAL_NOTES.md`: đã đối chiếu toàn thân orchestration EnemyBase.GetDmg với các thân MissProbability, WinType, Abnormal/Burn/Ice, hai mastery và IsBurning gốc; 250 ca + 4 hợp đồng. Normal/Boss/SpecialBoss modifier và DmgResult/death là phụ thuộc fixture rõ ràng, chưa nối toàn lifecycle vào cùng corpus.
- Đã làm rõ khác biệt missing mastery của tag12/13/14 với mastery dưới 2; giữ cờ băng đúng lúc HitEffect; đọc isDead sau DmgResult trước quest43; recording giữ thứ tự. Bản nháp bước7 được giữ như lịch sử, không tự nhận là đã được chứng minh bởi module mới.
- Đã đối chiếu ScheduleAbnormalAddDamage/factory/ctor/iterator trong 244 ca + 3 chuỗi/29 action. Ngưỡng chờ ELF 0,1 giây float32, chụp hai cờ chí mạng vào queue, tránh start coroutine trùng, xử lý từng phần tử và clear khi chết/inactive sau bước chờ. ExecuteAbnormalAddDamage còn là sink; thân thật skill1004 đã đọc tĩnh thêm.
- Tổng bước12: **494 ca theo scope**, 4 hợp đồng và 3 chuỗi/29 action; kết quả thực chạy ở `logic-step12/VALIDATION_SUMMARY.json`. Thêm CMN/UBFX/BFXIL cho interpreter và UXTW indexed load trong subclass EnemyHitVM; không tạo lại corpus cũ.
- Chưa phân tích hết game. Không nạp native, gọi dịch vụ, tạo asset, dựng/host tiếp H5 hoặc công khai website.

## Bổ sung combat sau bước12 — HP, chết, loot và WaveCount

- `logic-step13/ENEMY_HP_DEATH_LOOT_AND_WAVE.md`: 288 ca nối GetDmg → HP/result/instant-kill → Death → ba subscriber theo thứ tự → StageItemDrop; 7 hợp đồng và 3 chuỗi/9 action. Giữ HP âm, guard Death, clear tag sau callback và replay/quest dùng tag local.
- 162 ca mạnh hơn nối modifier Normal/Boss/Special, hệ nguyên tố, full/high/low HP, orb/theme/beast/spirit vào cùng chuỗi. Không dùng modifierReturns trong bộ này. Upstream stat/getter/secure/RNG và warm EnemyNormal profile vẫn là dependency rõ.
- 72 ca + 1 hợp đồng nối EnemyRemove/Enemy_Dead chế độ0: list removal/deactivate, chỉ tăng WaveCount khi list trống, mốc9→10 tạo yêu cầu rương và các nhánh spawn/restart. Spawn/UI/coroutine vẫn là sink, chưa có full stage clear.
- Tổng bổ sung522 ca theo phạm vi, 8 hợp đồng và 3 chuỗi/9 action; báo cáo thực chạy ở `logic-step13/VALIDATION_SUMMARY.json`. Có quan sát native entry và hỗ trợ NEON .2s cần cho nhánh rương; không tạo lại corpus cũ.
- Vẫn chưa phân tích hết, chưa dựng/host tiếp H5; không gọi dịch vụ, nạp game native hoặc tạo asset thay thế.

## Bước 14 — sinh wave, rương thưởng và chạy lại màn

- `logic-step14/WAVE_SPAWN_BOX_AND_RESTART.md` ghi công thức vị trí float32 từ bảng khoảng cách gốc, chọn chỉ số quái, khởi tạo HP/scale/chỉ số của quái và rương. 188 ca và 26 hợp đồng đối chiếu đạt.
- Đã nối đòn kết liễu quái cuối wave 9 → tạo rương wave 10 → callback rương vỡ → iterator restart → Stage_Restart → sinh wave 0. 16 chuỗi và 96 thao tác đối chiếu đạt, thêm 3 chuỗi hợp đồng và 18 thao tác. Callback rương và SceneChange được bước trực tiếp. Pool, OnEnable, giao diện, Unity scheduler và nhận tài nguyên vẫn là các ranh giới riêng.
- Rương thường tạo 10 yêu cầu vàng và 10 yêu cầu EXP. Theme khả dụng loại 2 tạo 100 yêu cầu mỗi loại. Stage_Restart tiếp tục dùng CurrentStageInfo hiện tại. Phần chuyển màn sau boss đi qua luồng riêng đã trích ASM để phân tích tiếp.

## Bước 15 — cảnh mở đầu và nhân vật chính

- `logic-step15/MAN_MO_DAU_VA_NHAN_VAT_CHINH.md` nối SignIn → startscene hoặc GearMain_RPG, giải mã các nhánh hội thoại và sprite mà intro tham chiếu. Hai nút tạo nhân vật chính truyền 0 (nam) và 1 (nữ). Bảng FriendClass xác nhận Archer, Warrior, Ninja và Mage là đồng hành ở tập chỉ số riêng.
- Đã xác định `startscenePlayer` dùng `slayer_01_*` và `slayer_02_*` theo AnimationClip gốc. Cảnh chiến đấu gắn PlayerBase và Animator_Players_Costume. Bộ sprite mặc định trong trận, thời gian từng frame và StageCurrent đầu tiên còn cần xác minh. Các bằng chứng, đường dẫn và mã tái lập nằm trong `logic-step15/`.

## Bước 16: Sprite Slayer gốc và hoạt ảnh trong trận

- `logic-step16/SLAYER_SPRITES_VA_ANIMATION_TRAN.md` xác nhận 55 PNG gốc từ hai atlas, đủ 20 sprite được sáu clip intro tham chiếu. Manifest giữ tọa độ cắt, pivot, pixels-per-unit và định danh nguồn.
- Đọc 31 liên kết clip thay thế trong Animator chiến đấu, 16 clip chính và 70 sự kiện. `Players_Attack` gọi `Attack_Func` ở khoảng 0,183 giây và kết thúc hành động ở 0,417 giây theo thời gian trong clip.
- Đối chiếu 78/78 ca JavaScript về chọn pose và ghi lớp áo/thân với lệnh ARM64. Đã xác định đường chọn khóa và các ví dụ atlas áo, thân, mặt, tóc trong `skin.apk`. Thứ tự sprite trong mảng chiến đấu và ngoại hình hồ sơ mới vẫn cần đối chiếu.

## Công việc tiếp theo, chưa hoàn tất

1. Ưu tiên nối StageCurrent, map/quái và hồ sơ đầu tiên với các lớp sprite gốc, thứ tự nạp và tốc độ Animator. Tiếp tục nguồn tạo buff, wish, getter vàng/EXP và trạng thái tài khoản. Không bịa dữ liệu tài khoản mới để lấp chỗ thiếu.
2. Tiếp tục BossClear, cập nhật stage sau boss, lớp quái khác và các mode khác. Nối đường đánh rương, OnEnable và asset/animation. Nối executor skill1004 với hàng đợi bất thường, HP/death và nhặt đồ. Đọc tiếp hồi máu, phản đòn, animation event và di chuyển.
3. Đọc tiếp nhận từng loại tài nguyên/trang bị, nguồn gán trường buff/array, lifecycle scroll và downstream Fill_Update/training; equip/fusion/awakening đầy đủ, subscriber callback và xử lý queue/serialization/RPC/ngoại lệ/APIValidator.PostLog; tiến trình màn và khởi tạo/lưu. Bước 8–11 đã có corpus giới hạn cho chuỗi nâng, nhận EXP/lên cấp, nguồn ExpAdd/get_SyncExp/Exp_Sync, dựng request LevelUp, ServerPrefs/SetClientData, queue bình thường và fragment retry; không coi chúng là mọi nguồn account hoặc implementation máy chủ.
4. Nội dung IFix đang hoạt động và logic phía máy chủ không có trong phần đã khôi phục. Phải tách các giới hạn này khỏi kết quả native baseline, không tự nhận là đã khôi phục.
5. Tiếp tục phân tích trước khi trở lại dựng H5. Khi tới bước đó chỉ ghép asset gốc, kiểm thử mobile/desktop và giữ riêng tư; không công khai website.

## Kiểm tra checkpoint

```bash
node logic-step4/port/verify-native-math.mjs
node logic-step5/port/verify-stats-skills.mjs
node logic-step5/port/verify-skill-damage.mjs
node logic-step6/port/verify-native-flow.mjs
node logic-step6/port/verify-database-buffs.mjs
node logic-step6/port/verify-skill-timing.mjs
node logic-step6/port/verify-player-damage.mjs
node logic-step6/port/verify-defense-stats.mjs
python3 logic-step7/tools/write_validation.py
python3 logic-step8/tools/write_validation.py
python3 logic-step9/tools/write_validation.py
python3 logic-step10/tools/write_validation.py
python3 logic-step11/tools/write_validation.py
python3 logic-step12/tools/write_validation.py
python3 logic-step13/tools/write_validation.py
python3 logic-step14/tools/write_validation.py
node logic-step16/port/verify-player-pose.mjs
```

Để tạo lại flow vector từ đầu vào đã giải mã ở bước 3:

```bash
python3 logic-step6/tools/generate_flow_vectors.py --source reproduced-step3 --out logic-step6
node logic-step6/port/verify-native-flow.mjs
```

Vẫn giữ các giới hạn kiểm chứng ở tài liệu bước 4–5. Không lấy số test hoặc số hàm quét được làm phần trăm hoàn thành game.
