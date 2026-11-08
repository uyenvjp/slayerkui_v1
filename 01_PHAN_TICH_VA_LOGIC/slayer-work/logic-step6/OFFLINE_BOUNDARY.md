# Phần có thể và không thể kết luận từ XAPK 705

Đây là phân tích mã client, chưa phải game H5. Chưa có kiểm thử gameplay Android, Unity, mobile hoặc desktop. Không gọi dịch vụ game, không đăng nhập, không chạy libil2cpp.so và không công khai nội dung.

## IFix: có đường tải logic bổ sung khi chạy

Bằng chứng từ metadata/ARM64 gốc:

| Nguồn | Bằng chứng | Ý nghĩa |
|---|---|---|
| `Integration.ServerStatus` | `iFixData_` tại 48, `iFixDataW_` tại 56 | Dữ liệu vá được vận chuyển trong trạng thái máy chủ. Có khai báo trường không đồng nghĩa đã có giá trị phản hồi. |
| `Integration.ServerChannelMetaDataResponse` | `iFixData_` tại 40, `iFixDataW_` tại 48 | Có thêm nguồn cấu hình vá theo kênh. |
| `IFixRuntimePatcher.IFixStatus` | `url` 16, `version` 24, `isReleased` 28, `hash` 32 | Client biết định dạng thông tin vá. |
| `StartPatch.MoveNext`, 0x51b93a4 | 0x51b98c8 đọc version; 0x51b98f4/98f8 đọc URL/hash; 0x51b997c gọi DownloadDataWithRetry với tham số 10; 0x51b9750 ghi byte xuống file; 0x51b9760 gọi ApplyIFixPatchFromBytes | Phần native là baseline có thể bị thay khi chạy. Không suy ra byte bản vá từ tên trường, URL chưa quan sát hoặc mã tải file. |

`package-file-audit.json` liệt kê 5.271 đường dẫn trong 10 APK con. Không có file mang đuôi `.wasm` hoặc tên IFix/patch rõ ràng trong phép lọc tên đã chạy. **Đây chỉ là kiểm kê tên file**: không chứng minh không có dữ liệu vá/cấu hình bên trong bundle có tên khác. Chưa đọc hết mọi object Unity/asset bundle; không lấy kiểm kê tên làm bằng chứng vắng mặt toàn bộ payload.

Không có phản hồi trạng thái máy chủ, byte vá tải xuống hoặc cache của một lần chạy online trong đầu vào đã quan sát. Vì thế không thể xác nhận hành vi live đã vá chỉ bằng các thân hàm native hiện được đối chiếu.

## Tiến trình, vật phẩm và lưu trạng thái

| Đường mã | Đã thấy trong client | Chưa xác nhận |
|---|---|---|
| `ServerPrefs.Load`, 0x51efc7c / 0x51efd24 | Đọc chuỗi client data từ object đầu vào, deserialize và reset dirty flag; bước 11 đã đối chiếu. Chưa có bằng chứng lớp mật mã riêng trong thân này | Nội dung thật của tài khoản; chính sách máy chủ chấp nhận hoặc sửa trạng thái |
| `ServerPrefs.RequestServerSync.MoveNext`, 0x51f19c0 | Bước 11 nối native sync/callback/signal/wait và api255 response guard; callback chỉ được gọi khi IsValidCode thành công. Vòng ba lần gửi riêng không chứng minh mọi mã lỗi sẽ tự thử lại | Không có chương trình máy chủ hay phản hồi thật trong phép phân tích này |
| `APIManager.ItemUpgrade`, 0x50c2808 | Tạo ItemUpgradeRequest và chuyển AddRequest | Quy tắc xác nhận, RNG hoặc sửa trạng thái phía máy chủ nếu có |
| `APIManager.WeaponEquip`, 0x50c8334 | Tạo WeaponEquipRequest và chuyển AddRequest | Chưa phân tích đầy đủ callback, phần cập nhật tối ưu cục bộ và phản hồi |
| `APIManager.WishUpgrade`, 0x50e5d54 | Chuyển AddRequest | Chưa khôi phục trọn chuỗi tăng wish |
| `APIManager.EnterStage` / `ClearBossStage` | Tạo request và chuyển AddRequest | Điều kiện xác nhận/chuyển màn phía máy chủ nếu có |

APIManager có 480 bản ghi phương thức trong danh mục; **không có nghĩa đã hiểu hết 480 phương thức, cũng không khẳng định đó là 480 endpoint**. Các stub request không đủ để suy ra implementation máy chủ. Ngược lại, có mạng không đồng nghĩa toàn bộ quy tắc gameplay ở máy chủ: phải đọc cả logic cục bộ và callback trước khi kết luận.

## Thưởng offline: client có cả phép tính/cộng cục bộ

- `OfflineRewardManager.RewardCheck`, 0x523f594: có chuỗi tính/hiển thị phần thưởng; hiện mới trích và đọc một phần, chưa port đầy đủ.
- `Button_AcceptReconnectReward`, 0x5240934: dùng hệ số 100 hoặc 100 + giá trị từ ConstantAchievementData ID 2; tính `reconnectGold * factor / 100` và `reconnectExp * factor / 100` bằng BigInteger; gọi Gold_Get / Get_Exp_NoBuff. Các phần tiếp theo chưa được port/đối chiếu đầy đủ.
- `APIManager.RewardOffline`, 0x50cfccc: chụp trạng thái tiền/EXP, duyệt phần thưởng, gọi GainCurrency và ghi giá trị xác thực trước khi AddRequest ID 131. Không được mô tả nó như một hàm chỉ gửi mạng và chờ máy chủ cộng tất cả.

Có thể tiếp tục khôi phục phép tính và chuyển các thay đổi trạng thái cục bộ sang runtime offline. Để bảo đảm tương đương nguyên bản online, vẫn cần xác định callback, đối chiếu dữ liệu và phần phản hồi/logic bên ngoài XAPK. Không tự gán phần chưa đọc thành công thức mới hoặc dữ liệu thật.

## Phân biệt ba loại công việc còn lại

1. **Còn mã client, chưa đọc/port hết:** EnemyBase.GetDmg trọn chuỗi; AI, tốc độ đánh, spawn, death/reflect, tiến trình, rơi đồ, nâng cấp, buff population, tài khoản và lưu offline. Đây là việc phân tích tiếp, không được đổ hết cho thiếu máy chủ.
2. **Đầu vào runtime chưa quan sát:** giá trị tài khoản, thời gian và event đang hoạt động, trạng thái manager, byte IFix tải ngoài. Fixture kiểm tra là dữ liệu tổng hợp; không dùng làm tài khoản hoặc luật thưởng game.
3. **Chương trình ngoài client:** implementation máy chủ không xuất hiện chỉ vì metadata có request/response. Không thể giải mã một chương trình chưa có trong đầu vào.

Chưa đạt điều kiện “phân tích hết”, chưa dựng hoặc host H5. Có thể phát triển bản offline dựa trên baseline đã khôi phục, nhưng không được gọi phần chưa khôi phục là đầy đủ hoặc giống tuyệt đối bản online.

## Cập nhật bước 11

ServerPrefs/Value, API controls/IsValidCode, queue bình thường và fragment retry đã có corpus theo phạm vi ở `../logic-step11/VALIDATION_SUMMARY.json`. Chuỗi mạnh hơn chứng minh callback SetClientData bị chặn khi mã phản hồi không hợp lệ; không được dùng callback thất bại tiêm trực tiếp để suy ra chính sách retry toàn chuỗi. JSON/BCL/Task/RPC/scheduler vẫn có phụ thuộc mô hình; catch/unwind, tài khoản, IFix/backend và các hệ client còn lại chưa đầy đủ.

## Cập nhật bước 12

EnemyBase.GetDmg orchestration/status và hàng đợi bất thường đã có corpus có giới hạn ở bước12. Còn phải nối modifier, result/HP/death/loot và executor skill1004, không được đổi kết quả fixture thành mặc định game. Vòng chiến đấu, animation event và các lớp ghi đè vẫn chưa đủ; không dùng số ca làm phần trăm hoàn thành.
