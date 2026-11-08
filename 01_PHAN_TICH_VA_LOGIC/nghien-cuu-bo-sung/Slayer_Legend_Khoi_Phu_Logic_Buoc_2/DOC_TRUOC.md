# Slayer Legend 700.0.4 — khôi phục logic, bước 2

**Trạng thái: đã khôi phục một phần cấu trúc và phân tích một số luồng native thật. Chưa giải mã toàn bộ game, chưa có mã C# đầy đủ, chưa tạo bản H5 trong bước này.**

Đầu vào duy nhất là XAPK đã cung cấp. Không chạy APK, không liên hệ máy chủ game, không chỉnh sửa file gốc, không tạo hoặc thay asset.

## Kết quả có thể kiểm chứng

- Đọc được 32.782 bản ghi lớp/kiểu; 28.032 tên lớp vượt qua kiểm tra chuỗi.
- Đọc được 187.282 bản ghi field, trong đó 160.709 tên đọc được; nối được với bảng offset field native và phân biệt field static.
- Đọc được 215.457 bản ghi tham số; 115.886 tên đọc được. Điểm cuối bảng tham số khớp chính xác điểm đầu bảng field.
- Đối chiếu 113.720 bản ghi phương thức của 4 module với CodeGenModule trong ELF. Tất cả đều khớp token và khoảng phương thức của lớp khai báo.
- Riêng Assembly-CSharp.dll: 65.440 bản ghi, 30.045 tên đọc được; 29.519 bản ghi có tên và địa chỉ native khác 0. Đây là bản đồ phương thức, **không phải 29.519 thân hàm đã dịch ngược hoàn chỉnh**.
- Đọc bảng native gồm 127.861 kiểu. Số lớp 32.782 khớp bảng field offset native, cung cấp kiểm tra chéo độc lập.
- Chạy lại từ XAPK trong thư mục mới: 6 tệp JSON kết quả khớp về nội dung. Xem `reproduction-verification.json`.

Các tên nằm trong vùng còn được bảo vệ được giữ `null` hoặc `<encrypted_type_N>`. Không tự đặt chúng thành tên gốc.

## Những luồng logic đã đọc trực tiếp

| Hàm gốc | Token | Địa chỉ ELF VA |
|---|---|---|
| GameManager.GoldAmount_Cal | 0x06006bdf | 0x04e50c80 |
| EquipmentSlotManager.HavePowerCritical_Cal | 0x06006fde | 0x04e9c0c4 |
| EnemyBase.NormalMonsterDmg_Cal | 0x06008f38 | 0x050b8b60 |
| EnemyBase.BossMonsterDmg_Cal | 0x06008f39 | 0x050b8cbc |
| EnemyBase.LowHpDmg_Cal | 0x06008f49 | 0x050ba354 |
| JsonCryptoCompressor.LoadEncryptedByte | 0x0600bae5 | 0x053f3688 |

Địa chỉ trên là VA trong ELF, không phải địa chỉ tuyệt đối của tiến trình Android sau ASLR. Bản `.asm` kèm theo là disassembly; lời gọi tới các hàm đã xác định được có nhãn đối chiếu.

### Luồng sát thương quái thường

`NormalMonsterDmg_Cal` nhận `_damage` kiểu `System.Numerics.BigInteger`, `atkType`, `atkDmgType`, `skillDmg` kiểu bool. Tên kiểu của `atkDmgType` vẫn nằm trong vùng bảo vệ.

Nhánh native gọi theo thứ tự:

1. `NormalEnemyHpDecrease`.
2. Khi `skillDmg` bật: một lời gọi virtual chưa xác định đầy đủ, rồi `NormalEnemyAddDmg_Cal`.
3. `BlackOrb_NormalEnemyAddDmg_Cal`.
4. `ThemeDungeon_NormalEnemyAddDmg_Cal`.
5. `HighHpEnemyAddDmg_Cal`.
6. `LowHpDmg_Cal`.
7. Nếu `DmgStack_State` bật, gọi `DmgStackEvent`; sau đó trả kết quả.

`DmgStack_State` được kiểm chứng ở offset instance 680 bằng cả metadata field và native field-offset table. Danh sách trên mô tả thứ tự lời gọi, chưa thay thế bằng một công thức sát thương tổng tự suy đoán.

### Phép nhân trong chỉ số trang bị

Nhánh native của `HavePowerCritical_Cal` trả về `float`. Hai đối số đều là `int`; tên gốc của chúng chưa đọc được nên ký hiệu là `p1`, `p2`.

Phần tính toán cuối hàm ở 0x04e9c2b4–0x04e9c2e4 thực hiện:

```text
result = float32(baseValue * float32(1.0f + float32(float32(p2) * 0.1f)))
```

Hằng số được đọc trực tiếp từ native VA 0x01f29834: byte `cd cc cc 3d`, giá trị float32 xấp xỉ 0.10000000149. Đây là **0.1**, không phải 0.01.

`baseValue` lấy từ một hàng dữ liệu ở offset 172. Khi `p1 >= 24` và một giá trị được chuyển về int từ dữ liệu lưu đạt ít nhất 1, hàm chuyển sang hàng khác ở offset 40. Chưa gán tên ngữ nghĩa cho hàng đầu tiên hoặc tên gốc hai đối số vì chưa kiểm chứng đủ. Phép nhân trên không đồng nghĩa đã xác định đầy đủ mọi cơ chế critical.

### Vàng và dữ liệu

Trong thân `GoldAmount_Cal` đã thấy lời gọi `DatabaseManager.get_GoldAmountAdd`, `HotTimeScrollManager.ApplyGold` và thao tác với field `stageGold_nobuff`. Các nhánh còn lại được giữ trong disassembly; chưa tuyên bố đã khôi phục công thức vàng tổng.

Đã tìm thấy 440 TextAsset trong các file Unity của APK chính, gồm dữ liệu game cùng một số dữ liệu thư viện. Các tệp game có tên kết thúc `Data` được lưu nguyên byte trong `encrypted-game-data/`; tên và hash nằm trong `game-data-inventory.json`. Ví dụ: `StageInfoBaseData`, `SkillBaseData`, `EquipmentBaseData`, `AwakeningWeaponBaseData`. **Đây là dữ liệu đã trích xuất, chưa phải bảng giá trị đã giải mã.**

Đã xác định được các hàm `GetKeyBase64`, `GetIVBase64`, `GetAesKey`, `GetAesIV`, `LoadEncryptedByte` của `JsonCryptoCompressor`. Routine tạo key ghép 6 chuỗi, routine IV ghép 3 chuỗi; các chuỗi literal cần thiết vẫn nằm trong vùng metadata chưa phục hồi. Chưa suy đoán key/IV hoặc tỷ lệ rơi vật phẩm.

## Phần chưa giải quyết

- Metadata gốc bắt đầu `LIKEY`; XOR một lớp làm lộ nhiều bảng phía sau, nhưng vùng đầu và header vẫn không hợp lệ. Không có file metadata hoàn chỉnh dùng được cho dumper trong gói này.
- Bố cục đọc bảng phù hợp cấu trúc chỉ số độ rộng thay đổi của Unity 6.3; trường version trong header gốc chưa được đọc trực tiếp. Không sửa magic/version để giả làm file đã giải mã.
- Các hàm gameplay có kiểm tra IFix (`IsPatched`, `GetPatch`) trước thân native. Ví dụ sát thương quái thường dùng patch ID 31606. Chưa khôi phục nội dung patch đang hoạt động; thân native là logic nền có thể bị thay thế.
- Chưa kiểm chứng logic chạy thực tế trên Android, chưa có toàn bộ code server, chưa đủ để tuyên bố port H5 nguyên vẹn.

## Đọc gói và chạy lại

- `method-map.csv`: bảng module, lớp, tên phương thức, tham số/kiểu trả về và địa chỉ native.
- `field-map.csv`, `type-map.csv`: tên kiểu/field và offset; nhớ xem cột `is_static`.
- JSON tương ứng giữ dữ liệu có cấu trúc; `focused-methods.json` chứa các hàm đang ưu tiên.
- `asm/`: các hàm đã tách để kiểm tra và một số routine crypto.
- `verification.json`, `reproduction-verification.json`: phạm vi và kiểm tra chéo.

Python 3, thư viện chuẩn là đủ cho phần khôi phục bảng:

```bash
python tools/run_logic_recovery.py "Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(3).xapk" --out recovered
```

Thêm `--asm` nếu môi trường có `libLLVM.so.20.1` với disassembler AArch64. Công cụ chỉ chấp nhận đúng hash metadata và thư viện native đã kiểm tra; không áp dụng các offset này cho phiên bản khác. Bản gốc được giữ nguyên. Không chạy file `.so`.

## Dấu vết nguồn

Metadata SHA256: `0f0c21c82432adab3421ea6c82e2662b032a8fc2fc17f81defe166b2ce294c46`.

libil2cpp.so SHA256: `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`.

Tài liệu đối chiếu cấu trúc: [Unity 6.3 — thay đổi cách lưu index](https://unity.com/releases/editor/whats-new/6000.3.0f1), [schema phương thức của Cpp2IL](https://github.com/SamboyCoding/Cpp2IL/blob/development/LibCpp2IL/Metadata/Il2CppMethodDefinition.cs), [schema kiểu của Cpp2IL](https://github.com/SamboyCoding/Cpp2IL/blob/development/LibCpp2IL/Metadata/Il2CppTypeDefinition.cs). Các kết quả số và luồng ở trên được lấy từ file người dùng, không lấy từ hướng dẫn bên ngoài.
