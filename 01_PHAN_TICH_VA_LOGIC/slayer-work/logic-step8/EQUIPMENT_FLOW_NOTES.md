# Bằng chứng bước 8 — client native baseline

Mọi địa chỉ dưới đây là VA của `.so` ARM64 có SHA-256 ghi trong `DOC_TRUOC.md`. Trình diễn giải đọc lệnh được xuất từ file này, mô hình hóa các phụ thuộc đã khai báo và dừng nếu gặp lệnh/call/field chưa hỗ trợ. Kết quả là đối chiếu trong phạm vi phương thức và fixture, không phải thực thi Android/Unity, so với recording của game, hay chứng minh mọi đường đi.

## 1. Chỉ số vũ khí và tổng giá trị sở hữu

| Entry | VA | Hành vi đọc được |
| --- | --- | --- |
| AtkValue_Cal | `0x4e9bea8` | Chọn base của trang bị, hoặc base awakening khi index >= 24 và AwakeningWeapon >= 1; gọi EquipmentValue |
| HavePowerCritical_Cal | `0x4e9c0c4` | Đọc base chí mạng từ trang bị trước; có thể thay bằng base awakening; nhân hệ số cấp float32 |
| HavePowerGoldAmount_Cal | `0x4e9c2ec` | Cùng cấu trúc, với base vàng sở hữu |
| Equipment_HavePower_Atk_Renew | `0x4e9c514` | Trừ đóng góp cũ, ghi đóng góp mới, cộng lại tổng bằng double |
| Equipment_HavePower_Critical_Renew | `0x4e9c654` | Cùng thứ tự, làm tròn float32 ở từng phép tính |
| Equipment_HavePower_GoldAmount_Renew | `0x4e9c794` | Cùng thứ tự float32 |
| AtkValue_Cal_Awakening | `0x4e9c8d4` | Preview grade truyền vào, dùng Level của trang bị index 24 |
| HavePowerCritical_Cal_Awakening | `0x4e9cb10` | Preview base grade truyền vào và Level của index 24 |
| HavePowerGoldAmount_Cal_Awakening | `0x4e9cd5c` | Tương tự với vàng sở hữu |

`EquipmentValue` nhận base **int64**, khác `UpgradePrice` nhận base **int32**. Module dùng lại số học bước 7: nhân/tràn signed int64 và chia cắt về 0 theo native, không thay bằng đường cong fit từ bảng.

Hệ số sở hữu chí mạng/vàng có thứ tự float32: `f32(f32(f32(level) * f32(0.1)) + 1)`, rồi nhân base và làm tròn float32. Không dùng số thực double của JavaScript cho toàn biểu thức. ATK sở hữu do `Level_Value_Setting` tạo từ giá trị ATK int64 chuyển sang double rồi nhân `0.3` double.

Ba hàm renew ghi tổng trung gian sau phép trừ trước khi thay dictionary entry, sau đó mới ghi tổng cuối. Corpus so sánh cả bit số và thứ tự ghi này. Cần entry cũ đã có trong dictionary; bản dịch báo thiếu dữ liệu thay vì tự chèn 0.

1.359 ca = 151 snapshot × 9 entry. Trong đó có 25 slot vũ khí và 30 grade awakening từ bảng thật, cùng 96 fixture số học/nhánh, có NaN/Infinity cho các đường float. Fixture là đầu vào kiểm thử, không phải dữ liệu tài khoản đã khôi phục. Đây cũng không phải kiểm tra mọi cấp của mọi slot; bước 7 giữ corpus riêng cho 1.701 dòng bảng cấp.

## 2. Chuỗi nâng cấp nối tiếp

| Entry | VA |
| --- | --- |
| Upgrade_Func | `0x4e9d270` |
| ApplyEquipment | `0x4e9d64c` |
| Level_Value_Setting | `0x4e9b1e0` |
| UpgradeStat_Apply | `0x4e9db80` |
| PointerUp | `0x4e996b4` |
| Upgrade_coroutine.MoveNext | `0x4ea3fc4` |
| UpgradeDelay_IE.MoveNext | `0x4ea3ebc` |

`Upgrade_Func` giữ gate cấp tối đa, Lock, số cube và kiểm tra hCount đã phân tích ở bước 7. Khi được nâng, tăng số lần nâng chờ gửi trước khi gọi `ApplyEquipment`. Thân `ApplyEquipment` không lặp lại gate; corpus gọi trực tiếp thân này với cấp còn hợp lệ để truy cập preview trong bảng gốc.

Thứ tự chính trong `ApplyEquipment`:

1. `DatabaseManager.UseCurrency(6, currentPrice)`; cập nhật hiển thị cube.
2. Tăng Level int32 và gọi `Level_Value_Setting(item, true)`.
3. Tăng bộ đếm kiểm tra int32 và tổng số nâng trang bị int64.
4. Gọi quest/telemetry, hiệu ứng nâng, âm thanh và telemetry tiếp theo theo thứ tự native.

`Level_Value_Setting` tính lại ATK cache và giá cache từ cấp hiện tại. Nếu chưa tối đa, nó tính cả preview cấp tiếp theo, cập nhật nút/text, thay đóng góp ATK sở hữu; nhánh chí mạng/vàng chỉ vào khi **base trên item gốc khác 0**, rồi dùng getter có thể chọn base awakening. So sánh float native khiến NaN cũng vào nhánh khác 0. Nếu không yêu cầu áp dụng, nó vẫn tính preview/hiển thị nhưng không thay tổng sở hữu.

Khi chạm cấp tối đa `200 + 50 × AwakeningWeapon`, hàm tắt nút, đổi màu rồi gọi **PointerUp bên trong Level_Value_Setting** trước phần đổi tổng sở hữu và trước hai bộ đếm ở bước 3. PointerUp tắt isHolding; nếu pending >= 1 thì gọi `APIManager.ItemUpgrade(index, Weapon=1, pending)`, xóa pending rồi phát âm thanh. Không dời việc gửi batch xuống sau toàn bộ ApplyEquipment.

`UpgradeStat_Apply` chỉ ghi `DatabaseManager.EquipmentAtk` và gọi `PlayerBase.Atk_Cal` khi index đang nâng bằng index đang trang bị. Cập nhật ownership vẫn xảy ra cho đồ không trang bị. Trong corpus bước 8, `Atk_Cal` là sink theo dõi lời gọi; thân tổng hợp ATK có corpus riêng ở bước 6, chưa ghép mọi nguồn buff/account vào chuỗi này.

Coroutine giữ nút:

- State 0 xóa pending, gọi nâng ngay, kể cả khi isHolding đang false, rồi chờ **0,2 giây float32** và chuyển state 1.
- Resume state 1/2 nếu còn giữ: gọi nâng, luôn chờ **0,03 giây float32** và chuyển state 2. Nếu lời gọi nâng tự thả nút do chạm cap, lần resume này vẫn yield; lần resume tiếp theo mới áp dụng ATK và kết thúc.
- Nếu đã thả: gọi UpgradeStat_Apply, xóa pending còn lại và phát âm thanh nếu cần. Nhánh này không tự gọi ItemUpgrade; PointerUp là nơi gửi batch đã đọc.
- Coroutine debounce riêng đặt cờ bận, chờ **0,1 giây float32**, rồi xóa cờ ở resume.

Các hằng thời gian được đọc từ ELF, không suy từ tốc độ bản thử. 421 ca từ 72 snapshot; thêm 3 chuỗi nối tiếp kiểm tra nâng 198→199→200 và tự flush, nâng rồi PointerUp rồi kết thúc, cùng hai pha debounce. So sánh trạng thái, bit tổng sở hữu và thứ tự hiệu ứng được chuẩn hóa; text UI chỉ so tên sink, không kiểm tra bản địa hóa/render.

## 3. Trừ cube và ghi sổ tiền tệ

| Entry | VA |
| --- | --- |
| DatabaseManager.get_UpgradeCube | `0x4d40850` |
| DatabaseManager.UseCurrency(CurrencyTypes, long) | `0x4d462a0` |
| CurrencyData.Get | `0x501ba70` |
| CurrencyData.Gain instance / static | `0x501b524` / `0x501bcd4` |
| CurrencyData.Use instance / static | `0x501b5f4` / `0x501bda4` |

Gain cộng amount vào Amount và TotalGet; Use trừ amount khỏi Amount và cộng vào TotalUsed. Cả hai ghi xong hai trường mới gọi `_events` nếu có. Corpus 384 ca kiểm tra wrap signed int64, giá trị âm và snapshot mà callback quan sát. **Trong những thân hàm này không có clamp hay gate đủ số dư**; gate nâng nằm ở caller, không suy rằng cả hệ thống không kiểm tra số dư.

Chuỗi 421 ca dùng lớp `NativeCurrencyEquipmentFlowVM`, đọc thân UseCurrency/get_UpgradeCube/Get/Use/getter gốc thay hook trừ cube tạm trong lớp cơ sở. Với cube type 6: Use xong mới cập nhật UI tiền tệ; nếu currency shop sự kiện bằng 6 thì yêu cầu cập nhật chấm đỏ. Các fixture có/không callback và shop khác/giống 6. Subscriber callback, EventManager getter, UI và chấm đỏ vẫn được mô hình hóa rõ.

UseCurrency còn nhánh None/SelectItem và nhánh riêng cho type 239 đã đọc trong ASM. Corpus chuỗi này chỉ gọi cube 6, không nhận là đã kiểm chứng mọi currency hoặc mọi overload BigInteger. Các Amount/TotalGet/TotalUsed trong fixture được khai báo rõ; không dùng chúng làm mặc định tạo hồ sơ offline.

## 4. Snapshot và phản hồi ItemUpgrade

| Entry | VA | Phạm vi |
| --- | --- | --- |
| APIValidator.GetCurrency | `0x481fbb4` | Đã đối chiếu thân hàm |
| GetTotalGetValue / GetTotalUsedValue | `0x481fe88` / `0x481ff24` | Đã đối chiếu thân hàm |
| CheckValue(snapshot) | `0x480fd24` | Đã đối chiếu thân hàm |
| CheckValue(amount, totalGet, totalUsed) | `0x48202bc` | Đã đối chiếu thân hàm |
| APIManager.ItemUpgrade | `0x50c2808` | Đọc tĩnh; sink API trong corpus nối tiếp |
| ItemUpgrade async response MoveNext | `0x4712f24` | Đọc tĩnh; chưa đối chiếu toàn RPC/ngoại lệ |

GetCurrency gọi CurrencyData.Get theo type yêu cầu. Nếu có record, nó **sao chép Type của record thật**, Amount, TotalGet, TotalUsed sang object mới; không gán Type theo tham số lookup. Không có record thì GetCurrency trả null, hai getter total đi vào NullReference. CheckValue cần remote/snapshot khác null; 4 hợp đồng null được kiểm tra riêng.

CheckValue so sánh chính xác ba số int64 theo thứ tự Amount → TotalGet → TotalUsed. Mỗi trường lệch phát yêu cầu PostLog với api ID, **type lấy từ remote**, expected và actual. Năm thân hàm đã đối chiếu không trực tiếp sửa số dư; chưa dịch PostLog nên không suy rộng về hậu quả xử lý lỗi của toàn hệ thống.

Đường request đọc từ ASM bước 7: ItemUpgrade ghi EquipmentType ở offset 24, Index ở 28, Count ở 32; tạo snapshot cube type 6 và lưu vào closure trước khi AddRequest(api=36). Trong baseline này snapshot được tạo lúc PointerUp gửi batch, sau các lần trừ cube tại client. Không phải số dư chụp trước mọi lần nâng.

MoveNext phản hồi chờ kết quả FrontClient, kiểm tra `IsValidCode`, và chỉ ở nhánh hợp lệ mới gọi `CheckValue(36, response.Currency, capturedSnapshot)`. Đây là so với snapshot đã chụp, không đọc lại số dư hiện hành lúc response về. Các nhánh async scheduling/callback completion/exception và request queue chưa được port/đối chiếu đầy đủ; không gọi server hay tạo phản hồi giả để nhận thành công.

483 ca đối chiếu cho 5 entry snapshot/compare sử dụng getter CurrencyData, constructor/cấp phát và sink PostLog được mô hình hóa. Những helper này có fixture riêng; corpus chuỗi nâng vẫn dừng ở sink ItemUpgrade, không được mô tả là end-to-end mạng.

## 5. Trình diễn giải và giới hạn

Đã sửa SCVTF nhận nguồn `dN` trong `logic-step6/tools/native_flow_vm.py`: nguồn là bit int64 trong SIMD register, không phải thanh ghi general xN hoặc số double đã chuyển. Đường `Level_Value_Setting` dùng biến thể này. Trong ASM bước 6 không có `SCVTF dN,dN`; trong ASM bước 7 chỉ thấy tại Level_Value_Setting, vốn chưa thuộc các range được thực thi trong corpus bước 7. Các kết quả cũ không được gọi là đã tái tạo trong lượt này chỉ từ việc chạy lại bản dịch.

Các generator tạo fixtures có seed cố định; dictionary/wrapper/callback và Unity sinks là mô hình rõ ràng. Không bao phủ mọi null, lỗi cấp phát, patch IFix, subscriber, float payload, scheduler, hoặc mọi state tài khoản. Số địa chỉ/bước lệnh trong báo cáo là những địa chỉ/bước đã đi qua ở phạm vi kiểm tra, không phải phần trăm độ bao phủ toàn client.
