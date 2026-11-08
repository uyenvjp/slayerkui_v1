# Rơi đồ và nhận tài nguyên — chứng cứ native baseline

Nguồn: `libil2cpp.so` SHA-256 `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`, XAPK versionCode 705. Địa chỉ dưới đây là VA ARM64. Tất cả kết luận là baseline **không có IFix patch**; không suy ra trạng thái live server.

## Từ quái thường chết tới đối tượng rơi

`EnemyNormal.DeadEvent` (`0x50f9388`) gọi rơi đồ theo game mode, xử lý các hiệu ứng đặc thù rồi gọi `GameManager.Enemy_Dead(enemy, true)`. Chưa dịch đầy đủ mọi mode trong `Enemy_Dead`.

`EnemyNormal.StageItemDrop` (`0x50f9804`) làm theo thứ tự:

1. Đọc `GameManager.CurrentStageInfo`. Có một `Random.Range(float 0,100)` ngay đầu; kết quả không dùng tiếp trong thân hàm. Giữ việc tiêu thụ RNG, không xóa vì thấy thừa.
2. Mặc định tạo một CoinEffect và một DropEffect EXP. Khi ThemeDungeonEventManager usable và DungeonType==2, lặp **10 lần**, với dropType ThemeDungeon=4; mỗi lần lấy vàng ngẫu nhiên riêng.
3. Dice: `Probability(0.5)`, số lượng là StageInfo.Dice. Đây không phải xác suất 50%.
4. UpgradeCube: `Probability(10)`, lấy StageInfo.Cube; buff quảng cáo còn >=1 thì nhân 3 bằng int32. EventBuff_Active(3) thì nhân hệ số EventBuff_UpgradeCube bằng int32 rồi chia 100.
5. Trang bị: xác suất StageInfo.EquipmentProb, buff quảng cáo còn >=1 thì nhân đôi float32. Khi trúng, tạo Weapon=100 hoặc Accessory=101. Với chỉ số màn không âm thông thường, Accessory khi `(Index+1)%5==0`; module giữ đúng phép toán word32 của ASM cho cả biên tràn. `EquipmentIndex` là giá trị truyền vào DropEffect; chưa cộng kho ở bước này.
6. Stone: `Probability(StageInfo.StoneProb)`, số lượng `Range(int 1,11)`, chọn `Range(int 0,4)` lần lượt Fire=5, Water=11, Earth=3, Wind=12.
7. Soul chỉ xét khi ContentsOpenData.SoulWeapon==true; tra StageSoulInfo theo MainNumber. SoulType==None thì bỏ qua. Nếu trúng SoulProb, lấy `Range(float 0.9,1.1)` và tính ceil bằng double trên số lượng long, tối thiểu 1 trước buff sự kiện; trường hợp overflow/infinity có nhánh riêng trong native. EventBuff_Active(5) nhân hệ số int64 rồi chia 100. Sau đó `Range(int 0,8)`: 0..5 giữ loại; 6/7 gọi SoulDivision(false/true).

SoulDivision (`0x50fab10`): Green→Blue/Red, Blue→Red/Green, các giá trị khác→Green/Blue. Không tự thêm nhánh White riêng.

`UsefulManager.Probability` (`0x4d18120`) luôn rút float Range(0,100), rồi so sánh **nhỏ hơn**, không `<=`, không tự clamp phần trăm; NaN cho false.

## Vàng và EXP

| Hàm | Hành vi đã xác định |
| --- | --- |
| `GameManager.get_StageGoldAmount`, `0x4e513b4` | Lấy `stageGold`, nhân `Range(int 90,111)`, chia 100 bằng BigInteger; ghi cache stageGoldAmount. Getter này không trả hằng số nguyên bản của bảng. |
| `GameManager.GoldAmount_Nobuff`, `0x4e514d8` | Vẫn gọi `DatabaseManager.get_GoldAmountAdd`, nhân rồi chia 100; không suy diễn “không buff” từ tên hàm. |
| `DatabaseManager.Gold_Cal`, `0x4d4d544` | Cùng số học `amount × GoldAmountAdd / 100`, dùng BigInteger. Nguồn toàn bộ getter buff vẫn đang đọc. |
| `DatabaseManager.Exp_Cal`, `0x4d4da60` | Lấy ExpAdd float32, nâng double rồi nhân 1000, đổi int64 theo nhánh native; `amount × factor / 100000` bằng BigInteger. |
| `DatabaseManager.Gold_Get`, `0x4d46f04` | UserGold+=amount; preGold+=amount; minusGold-=amount; TotalGoldGet+=amount; sau đó GoldSafeCheck, GoldUpdate. Thân hàm không tự clamp số dư. GoldSafeCheck được mô hình rõ trong đối chiếu. |

## Nhặt rồi mới cộng

`ObjectPooler_Effect.CoinEffect/DropEffect` tạo và cấu hình object Unity; không phải bằng chứng tài nguyên đã được cộng ở thời điểm quái chết.

- `CoinEffect.OnTriggerEnter2D`, `0x5019fdc`: kiểm tra tag; lấy SpiritSkillValue(6); nếu >0 và Probability thành công thì nhân đôi số vàng trong object, rồi mới gọi Gold_Get. Tiếp theo ItemDropLog, ActiveFalse và âm thanh. Nhánh spirit và collider đã đọc tĩnh, **chưa có corpus đối chiếu toàn thân hàm**.
- `DropObject.OnTriggerEnter2D`, `0x506f7d4`: phân nhánh theo CurrencyTypes. EXP gọi StatManager.Get_Exp; cube, dice và soul còn đi qua các hàm Cal tương ứng; vũ khí/phụ kiện gọi AddEquipment. Bởi vậy các số truyền vào DropEffect chưa phải tổng nhận cuối cùng. Mới đọc tĩnh luồng này, chưa dịch/đối chiếu toàn bộ.
- Coroutine FollowPlayer/PassItem/PassCoin là chuyển động hiệu ứng. Chúng không thay thế kiểm tra collider và logic nhận tài nguyên.

## Gom thưởng và ranh giới mạng

Hai overload AddCurrency (`0x50701d8`, `0x507043c`) so sánh dungeonType/mainIndex/subIndex với context static của batch. Nếu khác, gọi AcquireItems **trước** khi ghi context mới. Sau đó tạo record, yêu cầu GainCurrency cục bộ và thêm record vào danh sách tương ứng.

`DropObject.AddEquipment`, `0x5070720`, cũng có bước flush context cũ, xếp AcquiredEquipment, cập nhật equipment client qua EquipmentSync; SlayerClass còn yêu cầu flush ngay. Đã đọc thân hàm, **chưa đối chiếu toàn bộ** các nhánh vũ khí/phụ kiện/class.

`APIManager.AcquireItems`, `0x50c1b80`:

- Nếu tổng số record của ba danh sách bằng 0 thì thoát.
- Tạo request giữ context hiện tại, clone các record sang request.
- Xóa ba danh sách client trước AddRequest(115, callback, request) trong đường thành công đã đọc.
- Callback là async; `MoveNext` tại `0x4712448` lấy FrontClient, chờ phản hồi và gọi Network.Request.IsValidCode. Implementation máy chủ, tác động đầy đủ của bộ xử lý lỗi và các middleware chưa có bằng chứng đã khôi phục.

Không thể coi thao tác xóa request mạng là đã port phần thưởng offline đúng hành vi. Module hàng đợi chỉ mô hình đường client với hook flush/GainCurrency được khai báo; không xác nhận thưởng máy chủ hay cơ chế retry/rollback.
