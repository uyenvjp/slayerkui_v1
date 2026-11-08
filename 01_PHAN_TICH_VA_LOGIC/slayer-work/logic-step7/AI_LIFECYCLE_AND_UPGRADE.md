# AI, lifecycle và nâng cấp — phần đã đọc tiếp

## Coroutine nhịp đánh quái

`EnemyBase.<Attack_Coroutine>d__43.MoveNext`, `0x50be5dc`:

- State 0: SetState(Idle=1), waitTime=0.
- Khi waitTime<=virtual AttackSpeed, cộng GameDeltaTime bằng float32, yield null và giữ state 1. Dấu bằng vẫn chờ thêm lượt; không đổi thành `>=` để đánh ngay.
- Khi vượt ngưỡng, lấy **enemyX−playerX**, không dùng trị tuyệt đối. Nhỏ hơn AttackRange thì SetState(Attack=10); còn lại gọi virtual AttackReady và iterator kết thúc.
- Không đồng nhất đổi state Attack với việc HP đã bị trừ. `EnemyBase.Attack_Func`, `0x50b6568`, là lời gọi riêng tới Player.GetDmg; animation event và các lớp ghi đè còn phải nối tiếp.
- Corpus có NaN/±Infinity và một chuỗi tiếp tục cùng iterator. Transform, getter tốc độ, State setter và GameDeltaTime được mô hình theo fixture. Chưa nhận là toàn AI đã port.

`GameManager.get_StageMonsterIndex`, `0x4e51718`: chọn một trong ba slot; nếu slot ra 0, rút lại đúng một lần trong hai slot đầu. Không dùng vòng lặp “rút tới khi khác 0”.

`GameManager.MakeEnemy_Stage`, `0x4e517d8`, đã đọc: gán HP từ EnemyHpValue, HP_cur=HP_max; gán **Atk=0** trong thân hàm; đặt AttackRange=8, AttackSpeed=0.7; lấy miss/accuracy từ StageInfo và dữ liệu sprite từ Monster. Không tự dùng BossAtk làm sát thương quái thường. Vẫn phải đọc các lớp ghi đè, đường khởi tạo và event sau kích hoạt trước khi kết luận mọi tình huống quái thường đều có chỉ số cuối như vậy.

## Hồi sinh / thất bại

`Co_FakeDeath.MoveNext`, `0x4f08838`:

1. Chạy âm thanh virtual, SetState(Dead=3), đặt vận tốc Rigidbody2D về 0, BlackOut, SkillUsing_ON, SetRebornState(REBORNING=1); chờ secondToReborn.
2. Khi tiếp tục, đặt iterator state=-1 và kiểm tra BattleTime. <=0 thì kết thúc nhánh này. Không tự sinh hồi sinh ở trận đã hết thời gian. FCMP với NaN có hành vi khác phép “>0”; module giữ điều kiện native.
3. Nhánh còn lại tạo hiệu ứng tại vị trí người chơi + (0,2.5,0), scale (3,3,1), kích hoạt; đặt HP_cur=0 rồi gọi Hp_Heal_Skill(hpPercent). Sau đó BlackBackground_OFF, SkillUsing_OFF, chuyển Move qua StopAndGoIE_State, SetRebornState(BUFFED=2); chờ buffDuration.
4. Khi tiếp tục lần nữa, SetRebornState(FINISHED=3), kết thúc.

`Hp_Heal_Skill`, `0x4ef2724`: phần số học trước lời gọi Hp_Heal dùng HP_max × int32(hpPercent) /100. Chưa có đối chiếu toàn hàm này hoặc Hp_Heal/callback/clamp downstream; helper chỉ mô tả số lượng truyền vào.

`SetRebornState`, `0x4ef8850`: ghi backing field trước, nếu có delegate ReBornAction thì gọi sau. Có corpus cho hợp đồng thứ tự; chưa có mô phỏng toàn multicast delegate của Unity.

`DefeatCoroutine.MoveNext`, `0x4f095d8`: GameManager.DefaultSetting → WaitForSeconds(2) → PlayerBase.BattleEnd(false). BattleEnd tiếp tục phân nhánh theo chế độ; không được thay bằng một lệnh reset tài khoản mặc định.

## Nâng cấp vũ khí

| Entry | Kết luận baseline |
| --- | --- |
| EquipmentValue, `0x4e9af74` | Tham số giá trị cơ sở là **int64**, không phải int32; signed int64(baseValue × EquipmentInfo.Value) /100000, chia về 0. |
| UpgradePrice, `0x4e9b0a8` | signed int64(InitPrice × EquipmentInfo.Price) /1800, chia về 0; không dùng Number double cho tích long. |
| get_WeaponMaxLevel, `0x4e98704` | int32(200 +50×DatabaseManager.AwakeningWeapon), không lấy grade của món đang chọn thay vào. |
| MaxLevel_AwakeningGrade, `0x4e987d4` | Cùng số học với tham số grade trực tiếp. |

Bảng EquipmentInfoBaseData gốc có **1.701 mức**, Level 0..1700. Level 0 Price=1837, Value=100000; với InitPrice=1 thì giá nâng là 1 cube. Không tạo đường cong thay cho bảng gốc.

`Upgrade_Func`, `0x4e9d270`: món Lock thì thoát; Level>=WeaponMaxLevel thì PointerUp; cube<CurrentEquipment_Price thì báo thiếu rồi PointerUp. Đường cho phép tăng upgradeCount và yêu cầu ApplyEquipment. Các mức giá <=0 hoặc <=999 ở level>=150 còn có bộ đếm chẩn đoán hCount; không xóa nhánh này vì “có vẻ lỗi”.

`ApplyEquipment`, `0x4e9d64c`, **đã đọc tĩnh, chưa đối chiếu toàn thân**:

- UseCurrency(UpgradeCube=6, CurrentEquipment_Price), cập nhật UI cube.
- Tăng level, gọi Level_Value_Setting(equipment,true) để tính lại giá trị/giá và các chỉ số sở hữu liên quan.
- Tăng bộ đếm manager và EquipmentUpgradeCount, gọi thống kê/quest/hiệu ứng/âm thanh.

`PointerUp`, `0x4e996b4`: tắt holding; upgradeCount>=1 thì `APIManager.ItemUpgrade(index, Weapon=1, count)`, đặt upgradeCount=0, âm thanh. Vì vậy client có cập nhật lạc quan và batch lượt nâng; không thể nói tất cả chỉ do server tính.

`APIManager.ItemUpgrade`, `0x50c2808`: tạo ItemUpgradeRequest, lấy APIValidator.GetCurrency(6), xếp AddRequest(36,...). Callback async và đối chiếu phản hồi cần đọc tiếp. Không gọi endpoint thật, không tự giả phản hồi thành công.

Trong corpus điều kiện nâng, ApplyEquipment và PointerUp downstream được hook rõ; PointerUp được kiểm riêng. Đối chiếu số học toàn bộ bảng không đồng nghĩa đã kiểm toàn chuỗi nâng, giữ nút, UI hoặc server.
