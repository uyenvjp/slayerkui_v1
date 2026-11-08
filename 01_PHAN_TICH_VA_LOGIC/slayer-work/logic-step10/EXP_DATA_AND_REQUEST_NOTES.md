# Nguồn EXP và request lên cấp — native baseline

Tất cả địa chỉ dưới đây thuộc `.so` đã kiểm tra hash trong `DOC_TRUOC.md`. Đối chiếu giữa trình diễn giải lệnh gốc có giới hạn và bản dịch JavaScript dưới fixture phụ thuộc rõ ràng. Không phải chạy Android/Unity, replay gameplay, giải toàn bộ BCL/culture, live IFix hay backend.

## 1. get_ExpAdd: các nhóm không được cộng/phân phối lại tùy ý

`DatabaseManager.get_ExpAdd` tại `0x4d4d664` trả SilentFloat và ghi nhiều giá trị trung gian vào cache `expAdd` ở offset 3264. `set_ExpAdd` tại `0x4d4d9c8` sao chép wrapper 72 byte trong baseline; wrapper đã giải mã được mô hình hóa, không nhận đã tái tạo mọi chi tiết chống sửa giá trị.

| Thứ tự | Trường gốc | Kiểu số và cách áp dụng |
| --- | --- | --- |
| 1 | PlayerOption_ExpAdd | int32 cộng 100, có wrap, rồi chuyển float32 |
| 2 | FriendOption_ExpAdd, Accessory_HavePower_Exp | Cộng lần lượt float32 |
| 3 | SkinOption_ExpAdd, SkillMasteryOption_ExpAdd | Mỗi int32 chuyển float32 rồi cộng lần lượt; ghi cache lần đầu |
| 4 | Spirit_ExpAdd | Nếu double > 0: chuyển float32, cộng 100 float32, nhân cache float32 rồi chia 100 float32; ghi lại |
| 5 | FriendPassive_ExpAdd, ImmortalTreeSubNodeOption_TotalExpAdd, StarNodeOption_TotalExpAdd | Float32 friend + 100, cộng từng int32 đã chuyển float32; nhân cache và chia 100; ghi lại |
| 6 | ImmortalTreeSubNodeOption_ExpAdd, StarNodeOption_ExpAdd | Hai int32 cộng nhau rồi cộng 100 với wrap int32; chuyển float32, nhân cache/chia 100; ghi lại |
| 7 | ThemeDungeonBuff_ExpAdd | int32 cộng 100 có wrap, chuyển float32, nhân cache/chia 100; ghi cuối |

Mỗi phép nhân, cộng và chia float32 đều làm tròn ở bước tương ứng. Không gom các hệ số thành một phép nhân double hoặc cộng chung mọi chỉ số. Nhánh Spirit_ExpAdd dùng so double > 0; NaN/âm/0 bỏ nhánh. Giá trị dương cực nhỏ vẫn vào nhánh dù chuyển xuống float32 có thể thành 0. Getter không tự gọi `get_Spirit_ExpAdd_Cal` để ghi lại Spirit_ExpAdd trước khi tính.

`get_Spirit_ExpAdd_Cal` tại `0x4d58948` cộng mảng `SpiritAbility_ExpAdd` (offset 16328) bằng **double theo thứ tự phần tử**, khởi đầu 0. Mảng rỗng trả 0, null đi NullReference. Getter này không ghi cache Spirit_ExpAdd ở offset 16360. Nguồn tạo/đổi mảng và thời điểm gán cache đó còn phải lần tiếp.

910 ca = 182 snapshot × 5 entry của nhóm dữ liệu (hai getter/setter trên, getter mảng spirit và hai entry sync ở phần sau). Có fixture riêng từng thành phần, wrap int32, float32 roundoff, double cancellation theo thứ tự, giá trị lớn/âm và nonfinite. So bit số hữu hạn, infinity/zero và từng lần ghi cache; NaN được so theo phân loại, **không nhận bit payload/sign NaN là đã tái hiện phần cứng ARM**. Fixture là dữ liệu kiểm thử, không phải account default được khôi phục.

## 2. Nối nguồn ExpAdd vào nhận EXP

704 ca kiểm tra lại AddBuffs, Get_Exp, Get_Exp_WithOutSpiritSkill và Get_Exp_NoBuff của bước 9, sử dụng thân get_ExpAdd gốc cùng Exp_Cal/scroll/Probability. Fixture bỏ scalar `expAdd` cấp ngoài cho caller và cung cấp các trường gốc; nếu trình diễn giải rơi lại vào hook cũ thì thiếu đầu vào và báo lỗi.

Bản dịch dùng getter tương ứng để tính giá trị khi Exp_Cal đọc, đồng thời ghi nhận ExpAdd.Write trước các hiệu ứng tiếp theo. So CurrentExp/TotalExp, cache cuối, thứ tự ghi cache/EXP và RNG tiêu thụ. Đường NoBuff giữ cache ban đầu, không được vô tình tính lại getter hay tiêu thụ RNG.

Các manager, Silent*/Liapp*, spirit/event getter, RNG trả về, UI Fill_Update, log và Cave callback vẫn là mô hình phụ thuộc đã khai báo. Chỉ thay một phụ thuộc trước đây bằng thân hàm gốc không biến cả chuỗi thành Unity/account/server parity.

## 3. get_SyncExp dùng object được lưu sẵn

`DatabaseManager.get_SyncExp` tại `0x4d403d0`:

1. Đọc `syncExp` ở offset 344.
2. Chuyển CurrentExp thành chuỗi và ghi UserExp.Value (offset 24).
3. Chuyển TotalExp thành chuỗi và ghi UserExp.TotalValue (offset 32).
4. Trả lại `syncExp` ở offset 344.

Thân này không cấp phát UserExp mới và không Clone object. Corpus kiểm tra **identity trả về bằng object cached**, không chỉ so hai giá trị. Hai setter string UserExp tại `0x89a2a64` và `0x89a2ae8` được diễn giải bằng thân gốc; generic non-null precondition, metadata và wrapper ToString được mô hình. Cache null đi NullReference.

`DatabaseManager.Exp_Sync` tại `0x4d4046c` xử lý remote UserExp theo thứ tự:

- Parse remote.Value rồi ghi CurrentExp.
- Parse remote.TotalValue rồi ghi TotalExp.

Nó không gán remote thành `db.syncExp`, không ghi level hoặc gọi UI trong thân này. Nếu parse trường đầu thất bại thì EXP chưa đổi; nếu trường thứ hai thất bại thì CurrentExp **đã đổi**, TotalExp giữ cũ. Không thêm rollback vào bản dịch rồi nhận là native có tính nguyên tử. Bảy hợp đồng null/lỗi parse so cả trạng thái dở dang và hiệu ứng đã xảy ra.

BigInteger Parse/ToString trong BCL và SilentBigInt là phụ thuộc mô hình. Fixture Parse dùng số thập phân có dấu và ASCII whitespace được khai báo; kiểm tra invalid/null nhằm xác minh thứ tự gọi/ghi, **không chứng minh parser mọi culture, mọi Unicode whitespace hoặc ngoại lệ BCL đầy đủ**. Không dùng `BigInt('')` hoặc parser chấp nhận hex để suy ngược rằng native chấp nhận các format này. Module nhận parser qua runtime.

## 4. Request LevelUp giữ tham chiếu UserExp trong phạm vi đã đọc

| Entry | VA | Phạm vi |
| --- | --- | --- |
| APIManager.LevelUp | `0x50cc2b4` | Thân gốc được đưa vào corpus request |
| APIManager.AddRequest | `0x50c1a44` | Nhánh api 13 được đưa vào corpus |
| RequestData.Create | `0x481e4c4` | Thân gốc được đưa vào corpus |
| LevelUp async response MoveNext | `0x51bf48c` | Chỉ đọc tĩnh trong lượt này |

APIManager.LevelUp tạo closure và GrowSlayer.LevelUpRequest, ghi level int32 ở offset 24 và **tham chiếu UserExp truyền vào ở offset 40**, gắn request vào closure, tạo delegate rồi gọi AddRequest(api=13, delegate, request). Không gọi UserExp.Clone trong thân này.

Constructor không tham số được gọi tại `0x8936f00` chỉ chuyển tới System.Object constructor. Copy constructor khác ở `0x8936f08` có lời gọi UserExp.Clone, nhưng **không phải constructor mà đường LevelUp đang gọi**. ASM cả hai được giữ để không suy từ việc tồn tại Clone rằng request này đã clone.

AddRequest với api 13 gọi AcquireItems trước, sau đó RequestData.Create. Factory giữ delegate ở offset 16, api ở 24, đặt direct-show-loading khi set chứa api. AddRequest ghi tham chiếu payload request vào offset 32 rồi đưa RequestData vào queue. Trong corpus, allocation/constructor/delegate, HashSet, AcquireItems và Queue.Enqueue là phụ thuộc khai báo; thân ba phương thức client được diễn giải.

64 ca kiểm tra cấu trúc, thứ tự AcquireItems → Contains → Enqueue, level int32, loading flag, captured delegate/payload và cùng object sync. Ba chuỗi/9 chuyển trạng thái kiểm tra:

1. Getter ghi cache rồi đưa request thứ nhất vào queue.
2. Exp_Sync đổi account EXP; object cached và request đã queue vẫn giữ chuỗi cũ.
3. Getter lần tiếp theo ghi lại cached UserExp và tạo request thứ hai: **cả hai request đang giữ cùng object nên đều nhìn thấy chuỗi mới**, còn level riêng trên từng request giữ nguyên.

Đây là hệ quả của tham chiếu trong các thân đã chọn dưới fixture. **Chưa kiểm tra thời điểm queue được xử lý/serialize, retry, scheduler, việc AcquireItems thật thay đổi tài khoản/queue hoặc hành vi server**; không kết luận gói đã gửi trên mạng cũng đổi, cũng như không tự gọi đây là lỗi game.

## 5. Phản hồi lên cấp khác phản hồi nâng trang bị

MoveNext LevelUp đọc tĩnh chờ FrontClient, lấy response, gọi IsValidCode(response.Code) tại `0x51bf610`, rồi đi tiếp phần hoàn thành Task. Trong thân này không có nhánh theo giá trị trả về đó để gọi APIValidator.CheckValue hay Exp_Sync như các đường khác đã đọc. Không lấy quy tắc ItemUpgrade/currency snapshot của bước 8 áp sang LevelUp.

IsValidCode, completion callback, exception/unwind, queue processor và server có thể có xử lý riêng; những phần đó chưa được dịch/đối chiếu trong corpus request này. Quan sát trên không chứng minh toàn request không kiểm tra lỗi hoặc không có đồng bộ ở nơi khác.

## 6. Trình diễn giải và phần còn thiếu

Đã thêm hỗ trợ lệnh BIC với shifted operand ASR vào trình diễn giải chung để đọc vòng cộng mảng spirit. Đây là opcode trước đây chưa hỗ trợ; không đổi cách diễn giải các opcode đã có. Corpus bước này đi qua lệnh thật trong getter mảng. Các corpus cũ không được tái tạo trong lượt này và không được đếm lại thành kết quả mới.

Nguồn gán mọi trường buff/mảng, scroll lifecycle, gameplay callbacks, Fill_Update/training, account init/deserialization/lưu, queue/serialization/RPC, toàn body combat và nhiều hệ thống tiến trình/equipment/animation vẫn còn thiếu. Các JSON fixture không được dùng như dữ liệu hồ sơ gốc để dựng H5. Tiếp tục giữ ranh giới native unpatched, IFix live và server implementation.
