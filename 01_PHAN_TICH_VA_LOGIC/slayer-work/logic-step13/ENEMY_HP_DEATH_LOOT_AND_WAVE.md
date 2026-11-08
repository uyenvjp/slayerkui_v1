# Nối quái nhận đòn, HP, chết, rơi đồ và wave

**Chưa hoàn tất phân tích game. H5 tiếp tục tạm dừng.** Công việc dùng ELF/metadata từ XAPK 700.0.4/code705 đã cung cấp, không chạy thư viện game, gọi dịch vụ, tạo/thay asset hoặc triển khai website.

## Phần mới đã nối và kiểm tra

| Bộ | Kết quả chạy | Phạm vi |
|---|---:|---|
| Hit → HP → kết liễu → chết → callback/rơi đồ | 288 ca, 7 hợp đồng; 3 chuỗi/9 action | DmgResult, DOT, HP accessors, InstantKill, Death, ba subscriber, StageItemDrop; modifier output còn là phụ thuộc riêng trong bộ này |
| Biến thể mạnh hơn với modifier thật | 162 ca | Nối cả 15 thân modifier/helper gốc cùng hệ nguyên tố và chuỗi HP/chết/rơi đồ; bỏ hoàn toàn modifierReturns khỏi fixture |
| EnemyRemove/Enemy_Dead chế độ thường | 72 ca, 1 hợp đồng | Đòn trueDamage để cố định đòn chết; list removal, deactivate, WaveCount, mốc rương; spawn/UI/restart coroutine là sink |

Tổng 522 ca theo phạm vi, 8 hợp đồng và 3 chuỗi/9 action. Các bộ mạnh hơn có kiểm tra lại thân hàm cũ; số ca không phải tỷ lệ hoàn thành. Kết quả thực chạy, giới hạn và hash module trong VALIDATION_SUMMARY.json. Tất cả native entry được diễn giải trên lệnh đã trích, không nạp/thực thi libil2cpp.so.

## Chuỗi HP và chết

`DmgResult` (0x50bafb0) đọc HP hiện tại, trừ BigInteger damage và ghi HP qua accessor gốc. Không tự clamp về 0 hoặc hpMax. Sau khi trừ, nếu HP còn dương và MonsterType=1 thì gọi NormalEnemyInstantKill (0x50bb184). Tiếp đó HP<=0 gọi virtual Death, còn HP dương gọi hiệu ứng thanh HP. `DotDmgResult` (0x50baf38) chuyển tiếp sang virtual DmgResult; không được tạo một luật trừ HP riêng cho DOT.

Nhánh kết liễu chỉ xét spirit7 khi enemy chưa isDead, SpiritSkillValue>0 và SpiritSkillCheck thành công. Nó chuyển HP current/max sang double để tính tỷ lệ rồi so với float32 spirit value được nâng lên double và nhân 0,01. Nếu đạt ngưỡng, có thể ghi DmgStackEvent cho lượng HP còn lại, đặt HP=0 rồi gọi SpiritSkillEffect_EnemyTarget(7,1). Việc tính double là bằng chứng từ thân gốc; chuyển BigInteger↔double vẫn là phụ thuộc BCL của corpus, chưa đối chiếu mọi implementation/giới hạn BCL. Các ca HP 10^30 và 10^60 quanh ngưỡng cho thấy không được tự thay phép này bằng so sánh số nguyên chính xác và nhận là tương đương.

`Death` (0x50bbf20) thoát nếu isDead đã bật. Lần đầu nó đặt isDead=true, hit_ing=false trước khi đọc transform/scale, yêu cầu EnemyDeadEffect rồi gọi EnemyDead_Event. Callback là bắt buộc trong thân này. Hợp đồng null giữ cả trạng thái đã ghi và những hiệu ứng xảy ra trước lỗi; không gọi thiếu callback ở fixture là một lỗi của toàn game khi BaseSetting bình thường có đăng ký callback.

Ba chuỗi đánh liên tiếp xác nhận đòn đầu làm HP còn100, đòn tiếp theo xuống−100 tạo rơi đồ một lần, đòn sau xuống−300 nhưng Death guard không gọi lại callback/rơi đồ. Đó là warm fixture còn HitPossible; lifecycle deactivation/Unity thực tế nằm ở phần tiếp theo, không khẳng định game thật cho phép tiếp tục đánh object đã chết.

## Thứ tự callback có bằng chứng

BaseSetting (0x50b50e4) đã được đọc tĩnh: Combine EnemyDead_Event với virtual DeadEvent (vtable MethodInfo +1312), rồi PlayerKillCountEvent, rồi CheckLastSkillIndex. Hai metadata usage 0xa432738 và 0xa4335c8 giải về method index36683/36685, lần lượt 0x50bbe68 và 0x50bc040. Corpus dùng phụ thuộc multicast giữ đúng thứ tự và gọi các thân subscriber thật; **không nhận là đã thực thi/đối chiếu toàn BaseSetting hoặc mọi lần enable/disable**.

Warm profile ở đây gắn virtual DeadEvent của EnemyNormal (0x50f9388). Thân đó gọi DatabaseManager.MonsterKill (static offset216) trước; gameMode0 gọi StageItemDrop, mode4 gọi MineItemDrop; tiếp theo DeadEffect/SlashEffect, rồi hành vi theo enemyType8/9/7: DarkMap, buff cooldown/sáu drop effect, hoặc slow player. Cuối cùng gọi GameManager.Enemy_Dead(enemy,true).

PlayerKillCountEvent kiểm tra callback player optional. CheckLastSkillIndex đọc tag: CombinedDemon có callback riêng nếu tồn tại; boxed int gọi CheckDeadBuffBySkillIndex; sau đó xóa _lastDamageSkillIndex. Tag local của GetDmg vẫn được giữ để recording/replay và quest43 sau DmgResult. Không dùng field tag đã xóa làm tag replay của chính đòn vừa kết liễu.

StageItemDrop và các helper thưởng gốc từ bước7 được nối vào cùng chuỗi, gồm RNG/effect trace. **CoinEffect/DropEffect là yêu cầu tạo object rơi, không đồng nghĩa tài nguyên đã cộng tài khoản.** Nhặt đồ/acquisition và backend vẫn chưa nối đầy đủ. MineItemDrop, dead-buff/kill subscribers bên ngoài, Unity và đa phần game modes vẫn có dependency/sink đã khai báo.

## Thay modifier output giả lập bằng thân thật

Biến thể FullDamageVM nối NormalMonsterDmg_Cal (0x50b8b60), BossMonsterDmg_Cal (0x50b8cbc), SpecialBossDmg_Cal (0x50b8e74), DmgType_Cal (0x5018334), WinType/DefeatType và các helper full/high/low HP, spirit, orb, theme, beast. Không dùng các hằng701/702/703 làm damage trong biến thể này. Dữ liệu đầu vào stat/getter là fixture kiểm tra, không phải account hoặc luật chơi tự tạo.

- NormalEnemyHpDecrease có thể trừ HP bằng spirit11 **trước** các phép tăng damage và trước DmgResult; ghi HP, stack rồi SpiritSkillEffect_EnemyTarget theo thứ tự gốc.
- Boss modifier tăng BossHitCount int32 tại static offset304, kể cả khi có overflow; không gán sang số nguyên JavaScript vô hạn.
- Orb nhận SilentLong nhưng factor được tạo ở int32; theme nhận SilentInt. Giữ wrap và gate theo đúng kiểu số.
- HighHpCheck là strict `current > max*70/100`; LowHpCheck dùng ngưỡng int32 lấy từ float32 rồi so sánh BigInteger. HP dùng ở đây có thể đã đổi bởi spirit11.
- SpecialBoss bỏ phần beast bonus khi tag là DivineBeastDmgInfoData; các phép hệ nguyên tố và DmgStack vẫn giữ đường đi riêng theo thân gốc.

Upstream nguồn gán buff/stat, secure wrapper, SpiritSkillValue/Check và RNG vẫn là phụ thuộc rõ. Warm EnemyNormal callback được dùng để kiểm tra composition số học; không coi đó là đã khôi phục lifecycle của mọi EnemyBoss hoặc boss override.

## Chế độ thường: còn quái sống thì chưa tăng wave

Đã nối thêm `GameManager.EnemyRemove` (0x4e46518) và `Enemy_Dead` (0x4e466f8) trên nhánh gameMode0. Remove enemy khỏi list trước, sau đó SetActive(false) khi cờ destroy bật. Nếu list vẫn còn phần tử, thân mode0 không tăng WaveCount.

Khi list trống, WaveCount (field1416) tăng int32. Kết quả <=9 yêu cầu Start_MakeEnemy_Stage và StageBar_Update; đúng10 yêu cầu MakeEnemy_RewardBox tại `endPos + rightVector*35`, rồi StageBar_Update; lớn hơn10 đi Stage_RestartIE và StartCoroutine. Đây là WaveCount, không tự đồng nhất với ID màn hoặc toàn bộ hoàn thành stage.

72 ca bao gồm list còn0/1/2 quái sau remove, các mốc−1/0/8/9/10/int32Max, vị trí float32 và vector phải fixture. Native NEON DUP/FADD/FMUL .2s và MOV scalar lane được bổ sung để kiểm tra phép tính rương bằng lệnh thật. Giá trị static rightVector được khai báo trong fixture. Spawn, cập nhật UI stage và coroutine restart vẫn là sink; chưa nhận là đã dựng đầy đủ object quái mới hoặc hoàn tất stage-clear.

## Nối tiếp

Cần đọc/đối chiếu Start_MakeEnemy_Stage và MakeEnemy_Stage toàn chuỗi, thưởng/rương và restart/clear; các mode và subclass boss thật; nhặt item và cộng account; executor skill1004/queue bị trì hoãn; animation event, di chuyển, replay và quest thật. Các giới hạn IFix runtime và implementation server từ bước trước vẫn giữ. Chỉ trở lại dựng H5 sau khi phần phân tích cần thiết được hoàn thành theo yêu cầu; lúc đó dùng asset gốc và giữ riêng tư.
