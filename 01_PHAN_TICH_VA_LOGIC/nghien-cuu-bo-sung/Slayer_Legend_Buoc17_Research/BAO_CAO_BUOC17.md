# SLAYER LEGEND 700.0.4 — BƯỚC 17
## Truy phản hồi đổi nhân vật và vào Stage (phân tích tĩnh)

**Nguồn:** `libil2cpp.so` trích từ XAPK Slayer Legend 700.0.4 do người dùng cung cấp, bản đã lưu trong `Slayer_Legend_700.0.4_libil2cpp_global_metadata_GOC.zip`. Dùng `all-method-map.csv` và `field-map.csv` từ checkpoint phân tích metadata trước đây (không giả định là source code).  
**SHA-256 libil2cpp.so:** `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`.

**Cách làm:** giải mã các lệnh ARM64 bằng `llvm-objdump`, kiểm tra lại opcode/đích nhảy trực tiếp từ byte ELF và đối chiếu offset trường dữ liệu. Không kết nối server, không mở app Android, không giải mã patch IFix. Không vẽ hoặc thay asset.

## A. Phản hồi ChangeSkinData — có callback kiểm tra dữ liệu, không chỉ có coroutine

### 1) Schema được đối chiếu

| Trường của `GrowSlayer.ChangeSkinDataResponse` | Offset |
| --- | ---: |
| `resultCode_` | `0x18` |
| `usingCharacterIndex_` | `0x1c` |
| `characterChangeCount_` | `0x20` |
| `skinData_` | `0x28` |
| `updateCurrencies_` | `0x30` |

- `APIManager+<>c__DisplayClass91_0+<<ChangeSkinData>b__0>d.MoveNext` (VA `0x4814950`): ở `0x4814acc` đọc result code, `0x4814ad4` gọi `Network.Request.IsValidCode` (VA `0x5428284`). Trong nhánh hợp lệ, `0x4814ae0` đọc `updateCurrencies_` và `0x4814aec` gọi `APIValidator.CheckValue` (VA `0x4808898`), rồi gọi delegate callback tại `0x4814b08` nếu có. **Không đồng nhất tên APIValidator.CheckValue với thao tác ghi tiền trực tiếp**.
- Chính callback `SkinManager.<Button_CharacterChange_Confirm>b__169_0` (VA `0x536b50c`) *có* truy cập các trường không được coroutine tự đọc:
  - VA `0x536b584` và `0x536b588`: so sánh `DatabaseManager.CharacterNumber` (`+0x568`) với `ChangeSkinDataResponse.usingCharacterIndex_` (`+0x1c`).
  - VA `0x536b5c0` và `0x536b5c4`: so sánh `DatabaseManager.CharacterChangeCount` (`+0x56c`) với `response.characterChangeCount_` (`+0x20`).
  - VA `0x536b5d8`–`0x536b5f0`: so sánh `DatabaseManager.CharacterNumber` với `response.skinData_.characterNumber_` (`+0x18`).
  - VA `0x536b5fc`–`0x536b634`: đọc `DatabaseManager.get_UsingSkin` và `response.skinData_.usingSkin_` (`+0x20`), so sánh bool.
- Ba phép so sánh đầu gọi `DatabaseManager.Compare` tại VA `0x4d5c818`; phép bool gọi overload `0x4d5c9b8`. Đọc mã native của `Compare` cho thấy nó ghi `DatabaseManager.Log` khi bằng nhau và `DatabaseManager.LogError` khi khác nhau. **Không thấy phép gán sửa lại 4 giá trị trong callback này.**

**Kết luận có căn cứ:** client đổi nhân vật local trước request (bước 16), sau đó callback đối chiếu trạng thái client với dữ liệu server. Đây là **kiểm tra nhất quán**, chưa phải cơ chế rollback/cập nhật lại chắc chắn. Còn phải kiểm tra IFix, error handling khác và lưu trạng thái sau khi thất bại.

## B. Phản hồi EnterStage — phát hiện nhánh mã 16 và quay về màn trước

### 1) Callback phản hồi

`APIManager+<>c__DisplayClass154_0+<<EnterStage>b__0>d.MoveNext` tại VA `0x51cbdf8`:

- `0x51cbf74`: đọc `EnterStageResponse.resultCode_` (`+0x18`).
- `0x51cbf7c`: gọi `Network.Request.IsValidCode`.
- Nếu IsValidCode trả về true, nhánh tại `0x51cbf80` bỏ qua block xử lý mã 16.
- Khi không hợp lệ, `0x51cbf88` so sánh `resultCode_` với `0x10` (**thập phân 16**). Nếu bằng 16 và callback tồn tại, mã tại `0x51cbfac` gọi callback của `EnterStage`.
- **Chưa giải được tên symbolic của ResultCode=16 trong build này**. Không tự nhận nó có ý nghĩa gì từ enum/nguồn khác.

### 2) Callback được truyền từ StageManager thực hiện gì?

`StageManager.SelectStage` tại `0x53a2688`:

1. `0x53a276c`: kiểm tra `StageManager.MovePossible` ở offset `0x70`.
2. Nếu đi vào nhánh cho phép, `0x53a2798` chuyển `DatabaseManager.StageCurrent` (kiểu `LiappSecureInt`) thành số nguyên và `0x53a279c` lưu số này vào closure `StageManager+<>c__DisplayClass22_0.prevStage` (`+0x18`).
3. `0x53a27ac` đọc `StageInfo.Index` (`+0x20`); `0x53a27f8` gọi `APIManager.EnterStage`.
4. `0x53a2820`–`0x53a2844` chuyển index mới thành `LiappSecureInt` và ghi vào `DatabaseManager.StageCurrent` (offset `0x78`); `0x53a2874` gọi `GameManager.SceneChage_BlackOut_StageInit` để bắt đầu chuyển cảnh theo đường local.
5. Callback `StageManager+<>c__DisplayClass22_0.<SelectStage>b__0` tại `0x53a3494`: `0x53a34cc` lấy `prevStage`, `0x53a34e4`–`0x53a3508` ghi lại `StageCurrent` cũ, `0x53a3530` gọi `SceneChage_BlackOut_StageInit` một lần nữa.

**Kết luận có căn cứ:** tại đường native được kiểm tra, client bắt đầu chuyển Stage local **trước phản hồi** và có một **đường quay lại Stage cũ** được callback kích hoạt khi EnterStage trả mã 16. Không suy rộng rằng mọi lỗi mạng đều được rollback; chưa kiểm tra tất cả nhánh/patch.

### 3) Đầu vào/đầu ra Stage vẫn thiếu

`EnterStageResponse` chỉ gồm `resultCode_`, `stageIndex_`, `sequenceNumber_`. Callback nói trên không cho thấy hàng dữ liệu quái HP/ATK/EXP. Những con số Stage phục hồi từ bảng ở checkpoint cũ vẫn cần được nối với map, quái và cách game tính toán khi chiến đấu. Giá trị `initial_stageCurrent` của tài khoản mới vẫn chưa xác minh.

## C. Kiểm chứng có thể chạy lại

`verify_step17.py` chạy **53/53 phép đối chiếu đạt** trên các nguồn gốc đã lưu:

- 10 kiểm tra địa chỉ method (map metadata).
- 15 kiểm tra offset field (map metadata).
- 17 kiểm tra opcode lệnh ARM64 ở vị trí cố định.
- 10 kiểm tra nhánh BL/B trực tiếp cùng đích gọi.
- 1 nhóm kiểm tra byte điều kiện cho nhánh mã 16 và MovePossible.

Đây là đếm kiểm tra máy, **không phải tỷ lệ khôi phục gameplay**, không chứng minh behavior runtime IFix hoặc backend.

Dùng Python 3 (stdlib):

```bash
python verify_step17.py libil2cpp.so all-method-map.csv field-map.csv > step17_evidence.json
```

## D. Việc tiếp theo (bước 18)

1. Truy cách xử lý khi `ChangeSkinDataResponse` *không hợp lệ* (cập nhật local đã xảy ra; phải kiểm tra handler lỗi mạng/cơ chế đồng bộ khi đăng nhập lại).
2. Lần theo `GameManager.SceneChage_BlackOut_StageInit` → `Stage_Init` để tìm cách lấy `StageInfo`, map, nhóm quái, rồi nối dữ liệu 3.000 Stage đã trích.
3. Duy trì `default_character` và `initial_stage_current` ở trạng thái **CHƯA XÁC MINH** cho đến khi có bằng chứng trực tiếp từ dữ liệu khởi tạo tài khoản.

Không có H5 mới trong bước này; chỉ bổ sung bằng chứng reverse engineering từ asset/mã game đã cung cấp.
