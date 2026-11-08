# Bước 11 — lưu trạng thái, queue và phản hồi

**Chưa phân tích hết. H5 vẫn tạm dừng.** Đây là phân tích baseline của XAPK 700.0.4/code 705 bằng disassembly và trình diễn giải lệnh có giới hạn. Không nạp thư viện native, chạy game, đăng nhập hay gọi dịch vụ. Không tạo/sửa/thay asset và không triển khai website.

## Kết luận quan trọng từ chuỗi nối mạnh hơn

`ServerPrefs.RequestServerSync.MoveNext` có vòng gửi tối đa ba lần nếu callback đã báo thất bại rồi đánh tín hiệu. Tuy nhiên, **đường SetClientData nguyên bản chỉ gọi callback khi IsValidCode thành công**. Với mã trả về khác 1, trong các thân hàm đã nối, callback của ServerPrefs không được gọi và vòng chờ chưa được đánh tín hiệu. Không được biến nhánh ba lần gửi thành một chính sách retry đã xác nhận cho mọi phản hồi lỗi.

192 chuỗi ServerPrefs riêng dùng callback làm đầu vào phụ thuộc. 102 chuỗi mạnh hơn nối thêm API tạo request, thân nhận phản hồi và IsValidCode. Bộ mạnh hơn xác nhận sự khác biệt này cả khi Task trả ngay và khi phải chờ, trên các mã lỗi/giới hạn int32 trong fixture. Sau hai frame tiếp theo, ca mã khác 1 vẫn chờ với một request đã tạo. Đây là kết luận về các thân hàm và các phụ thuộc đã khai báo, không khẳng định toàn game bị treo: còn lifecycle manager, khởi động lại, exception và IFix chưa khôi phục đủ.

## Bằng chứng địa chỉ

| Thân mã | Địa chỉ | Phạm vi đã đọc/đối chiếu |
|---|---|---|
| ServerPrefs.Load(account/string), Save | 0x51efc7c / 0x51efd24 / 0x51effe4 | Đọc ClientData, thay/clear dictionary, reset dirty, quyết định gửi toàn dictionary |
| ServerPrefs.ResetAllDirtyFlag | 0x51f02e4 | Duyệt Value và gọi thân ResetDirtyFlag gốc |
| Value constructor, IsDirty, SetDirty | 0x51f09dc / 0x51f186c / 0x51f18b4 | Giá trị chuỗi, dirty flag, tạo object thay thế |
| Value.ResetDirtyFlag | 0x51f0484 | Xóa dirty flag |
| ServerPrefs sync MoveNext / callback | 0x51f19c0 / 0x51f198c | Đếm lần gửi, chờ, nhận ResultCode tại offset 32, reset khi thành công |
| WaitForSignal.Signal / Reset | 0x4745d14 / 0x4745d60 | Baseline không IFix: đặt/xóa cờ offset 16 |
| AwaitForSignal.UniTaskWait.MoveNext | 0x47460f4 | Chờ DelayFrame(1,8), tiêu thụ rồi xóa tín hiệu |
| APIManager.SetClientData | 0x50d1630 | Tạo packet Content, closure callback, AddRequest api 255 |
| SetClientDataRequest ctor / set_Content | 0x894eed4 / 0x894eff0 | Content mặc định chuỗi rỗng, setter có phụ thuộc kiểm tra non-null |
| SetClientData response MoveNext | 0x51ce4fc | Chờ Task, gọi IsValidCode, chỉ gọi callback ở nhánh thành công, lưu result |
| APIManager controls / CanRequest | 0x50c1140–0x50c18bc | Statics, trạng thái busy, mốc thời gian, so sánh nghiêm ngặt |
| Network.Request.IsValidCode | 0x5428284 | Mã 1 trả true; dispatch báo lỗi/UI/log theo mã khác |
| APIManager.RequestLoop.MoveNext | 0x4819ffc | Queue bình thường, chờ Task/NextFrame, sequence, dequeue, reset counters, KickOut |
| Retry disposition | 0x481ad28 | Fragment bắt đầu sau chẩn đoán lỗi; context register/stack được dựng rõ bằng fixture |
| Shared counter helpers | 0x4824160 / 0x48241bc / 0x4824218 | Ghi FailCount, ghi RetryCount, đọc FailCount; cùng metadata cell APIManager 0xa7768d8 |

## ServerPrefs: các chi tiết cần giữ khi port sau này

- Dictionary chứa Value với dirty tại offset 16 và chuỗi nullable tại 24. Thay nội dung tạo Value mới và dirty=true; ca không đổi giữ object và cách viết chuỗi trước đó.
- SetInt/SetBool không sửa được bản ghi đã tồn tại nếu TryParse chuỗi đó thất bại: thân hàm trả về. Giá trị hợp lệ nhưng bằng nhau vẫn giữ `+001` hoặc `true`, không chuẩn hóa lại. Khi đổi giá trị mới thì dùng Int32/Boolean.ToString qua phụ thuộc BCL.
- GetInt/GetBool dùng fallback khi parse thất bại. GetString trả cả null đã lưu nếu key tồn tại. HasKey(null/chuỗi rỗng) trả false trước khi truy cập dictionary. Remove không có bước kiểm tra này.
- Remove chỉ xóa key, không đánh dirty cho bản ghi khác hay một dirty flag toàn cục trong thân đã đọc. Nếu còn lại không bản ghi dirty, Save(false) có thể bỏ qua gửi. Không gọi đây là lỗi toàn game khi chưa đọc hết caller/forceSave.
- Load chuỗi không rỗng thay dictionary bằng kết quả deserializer rồi reset dirty; chuỗi null/rỗng clear dictionary hiện tại. Load(account) bỏ qua account/ClientData null. Không thấy bằng chứng đủ để gọi bước deserialize ở đây là một lớp giải mã mật mã riêng.
- Save kiểm tra Any(IsDirty) hoặc force, serialize **toàn dictionary**, rồi yêu cầu sync. Thân Save không tự xóa dirty. Dirty được reset trong coroutine khi nhận tín hiệu thành công.
- Reset sau thành công quét dictionary tại thời điểm đó, không kiểm tra revision trong thân này. Fixture sửa một key trong lúc chờ xác nhận cũng bị reset dirty khi ACK thành công. Chuỗi JSON trong packet vẫn là snapshot cũ. Chưa khẳng định chính sách lưu toàn game chỉ từ điểm này.
- 34 tên EKey được trích từ metadata thật trong prefs-keys.json. Parse ASCII, Enum.ToString, JSON serializer/deserializer được khai báo thành phụ thuộc; không nhận là đã khôi phục BCL theo mọi culture hoặc byte JSON tương thích.

## Queue, sequence và thông báo lỗi

Processing trả true nếu cờ riêng đang bật hoặc queueCount >= 1; nhánh cờ riêng bật không cần đọc queue null. Khi busy, getter còn gọi LogError. Bool setter mask bit thấp; counters là signed int32 và CurrentSequence signed int64.

CanRequest trả true khi chưa có key. Nếu có, điều kiện là `last.AddSeconds(delay) < UtcNow`: đúng bằng deadline vẫn false, một tick sau mới true. Provider UTC/DateTimeOffset/BCL nằm trong fixture, chưa đối chiếu ngoại lệ lịch/overflow hoặc múi giờ khác.

RequestLoop dùng Peek, gán CurrentSequence vào packet trước khi gọi request. Khi có phản hồi bình thường, nó lấy sequence từ phản hồi, đánh log dirty, Dequeue, đặt FailCount/RetryCount về 0 rồi xử lý tiếp. Không tăng sequence bằng một công thức tự đặt. Mã phản hồi khác 1 vẫn đi nhánh hoàn thành này; IsValidCode của từng request được xử lý bên trong delegate response riêng. Mã 17 có Post_DataLog trước cập nhật sequence trong thân loop đã đối chiếu.

LoadingUI bật với delay 0 nếu DirectShow hoặc queueCount > 5, ngược lại delay 2. Khi rỗng, nếu AlarmManager còn tồn tại thì tắt loading với delay 0,5, đặt Processing=false rồi NextFrame. KickOut được kiểm tra trước khi dispatch; thân kết thúc ở đó không tự Dequeue/xóa current request hay hạ cờ Processing. Đặt KickOut trong lúc chờ phản hồi không làm bỏ qua phần nhận phản hồi đã đi qua điểm kiểm tra.

IsValidCode trả true chỉ cho code 1. Mã 3/12/15/16/20 chọn thông báo bản địa hóa; 13 maintenance, 14 update, 22 duplicate login; 4/17 dùng popup có StackTrace. Mọi mã khác 1 có LogError. UI, text chẩn đoán, StackTrace và singleton là phụ thuộc rõ, chưa chạy UI thật.

Fragment retry bắt đầu tại 0x481ad28: nếu RetryCount < 6 thì tăng một và Delay(2000ms,false,timing8), sau đó quay lại Peek cùng queue. Nếu đạt ngưỡng và FailCount < 3 thì tăng FailCount, reset RetryCount, xử lý mã 17 và kết thúc loop; nếu FailCount >= 3 thì reset cả hai, xử lý mã 4 và kết thúc. **140 chuỗi fragment không chứng minh exception catch/unwind hoạt động**: register/stack đầu vào được dựng theo context đã đọc, không giả đã phát sinh gRPC exception trong native game.

## Kết quả kiểm tra và giới hạn

| Bộ kiểm tra | Số ca/chuỗi | Thêm | Phụ thuộc quan trọng |
|---|---:|---|---|
| ServerPrefs/Value 24 entry | 2.304 ca | 18 hợp đồng, 2 chuỗi/14 action | Dictionary, enum, ASCII parse, serialize/deserialize, sync sink |
| API controls/IsValidCode 14 entry | 1.344 ca | 9 hợp đồng, 1 chuỗi/6 action | UTC/BCL, collections, diagnostics, UI |
| Sync/callback/signal/wait riêng | 192 chuỗi/768 action | 4 hợp đồng callback, 4 ca Signal/Reset | Callback được tiêm trực tiếp, UniTask wrapper/builder/scheduler |
| Queue bình thường | 96 chuỗi/310 action | 5 hợp đồng null | Release Deploy=2, queue, tasks, interface dispatch, RPC fixture |
| Retry disposition fragment | 140 chuỗi/180 action | Context được dựng rõ | Không đối chiếu catch/unwind; Delay, diagnostics và continuation |
| Sync nối thêm API/response guard | 102 chuỗi/487 action | Kiểm tra sửa dữ liệu trong lúc chờ | Dispatch queue thủ công, RPC/Task fixture, không nối toàn RequestLoop vào cùng corpus |

Tổng 3.648 ca entry; báo riêng 393 chuỗi nối/1.585 action và 140 chuỗi fragment/180 action, 36 hợp đồng cùng 4 ca signal. Bộ nối mạnh hơn kiểm tra lại một số thân hàm, không cộng số ca thành phần trăm hoàn thành. Kết quả thực chạy và hash module nằm trong VALIDATION_SUMMARY.json.

Trình diễn giải dùng ELF SHA-256 e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537. Đã thêm ORR và LDURB/STURB cho các thân mới; không tạo lại corpus cũ trong bước này. Unsupported instruction/call/field dừng có lỗi. Game .so không được nạp/thực thi. Exception handler, payload IFix thật, serialization đầy đủ, khởi tạo tài khoản, hệ chiến đấu/tiến trình còn thiếu và implementation máy chủ vẫn chưa hoàn tất.
