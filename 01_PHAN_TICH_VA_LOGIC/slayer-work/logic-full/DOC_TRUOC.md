# Slayer Legend — kết quả giải mã bước 3

Đầu vào duy nhất là XAPK `com.gear2.growslayer`, bản **700.0.4 / mã 705**, Unity **6000.3.10f1**. Đây là bộ dữ liệu và công cụ phân tích để port; **chưa phải bản H5 chơi được**, chưa có triển khai website mới.

## Kết quả đã kiểm chứng

| Phần | Kết quả |
|---|---:|
| Metadata LIKEY | Đã giải mã đủ 33.085.012 byte; magic `0xfab11baf`, phiên bản 39 |
| Kiểu dữ liệu / tên kiểu | 32.782 / 32.782 |
| Trường / tên trường | 187.282 / 187.282 |
| Bản ghi phương thức | 252.578, thuộc 182 assembly |
| Địa chỉ hàm native khác nhau có tên | 230.746 |
| Bảng dữ liệu được giải mã và giải nén | 423 / 423; 13.791.916 byte |
| Bảng chuyển thành JSON | 423 / 423; 44.777 dòng |
| Chạy lại độc lập từ XAPK | 430 đầu ra so sánh đều giống từng byte |

Các thông số trên là kết quả phân tích file tại chỗ. Ánh xạ tên hàm sang địa chỉ **không đồng nghĩa đã chuyển nội dung mọi hàm thành mã nguồn**.

Metadata đã giải mã có SHA-256:

`670133f0efe52104a72c582a79139b33f238c5dc43c2999cdbb8ce7c0aad3e20`

`metadata-decode-verification.json` ghi lại header, 31 vùng dữ liệu, cấu hình và dấu vết khôi phục. Trường gốc tại byte 8 trong header LIKEY được giữ dưới tên `opaque_header_field_8`; chưa khẳng định ý nghĩa checksum của trường này.

## Nội dung để tiếp tục port

- `global-metadata.decoded.dat`: metadata đã giải mã, gồm phần đầu 2.315.951 byte trước đây còn bị che.
- `table-json/`: 423 bảng gốc, có tên thuộc tính lấy từ metadata và hàm Deserialize của game. Có dữ liệu màn 0–2999, quái, boss, vật phẩm, giá nâng cấp, tỉ lệ, kỹ năng và kinh nghiệm.
- `game-tables/`: bản nhị phân sau giải mã và giải nén. 421 bảng dùng MemoryPack; 2 bảng vốn là JSON UTF-8 (`SpiritSpiritInventoryData`, `SeasonRankingBattleRewardData`).
- `table-schemas.json`, `table-enums.json`: cấu trúc trường và 115 enum dùng trong các bảng.
- `all-method-map.csv`, `all-module-map.json`: ánh xạ phương thức của 182 assembly. Các địa chỉ bằng 0 cần xét generic/AOT; không được kết luận chúng không có cách triển khai.
- `field-map.csv`, `type-map.csv`, `parameter-map.csv`, `native-type-map.csv`: tên, kiểu và vị trí phục vụ đối chiếu mã máy.
- `core-logic/`: mã ARM64 gốc của các hàm đã chọn, có chú thích tên hàm đích.
- `recovered-rules.json`: sáu công thức nhỏ đã xác định; phạm vi là nhánh native chưa bị IFix thay thế.
- `tools/`: bộ tái tạo từ XAPK, không chạy APK hoặc nạp thư viện game để thực thi.

BigInteger trong JSON được giữ bằng **chuỗi thập phân** để tránh mất chính xác khi dùng JavaScript. Các hàm Deserialize gốc còn gọi setter `*Serialized` sau khi đọc payload BigInteger native; JSON dùng đúng giá trị thập phân cuối cùng do setter này gán. Payload nhị phân ban đầu vẫn nằm trong `game-tables/`. Bộ đọc kiểm tra số dòng, số trường, độ dài chuỗi và việc tiêu thụ hết dữ liệu từng file.

## Một số logic đã xác định thêm

1. `Equipment` khởi tạo trực tiếp từ `DataTable.Client.EquipmentBaseData`. `InitValue` được gán sang `Equipment.Value` ở offset 160; hai giá trị cộng sở hữu nằm ở offset 172 và 176. Không cần suy đoán từ bảng Excel cũ.
2. `EquipmentSlotManager.EquipmentValue` dùng hệ số `EquipmentInfoBaseData[level].Value`, nhân kiểu `long` rồi chia 100.000, làm tròn về 0. Phải giữ hành vi tràn số 64 bit nếu muốn khớp nhánh ARM64. Phép chia tối ưu trong mã máy đã được đối chiếu với phép chia chính xác ở 20.011 trường hợp.
3. `HavePowerCritical_Cal` nhân giá trị gốc với `1 + level × 0,1`, theo các bước float32 của mã gốc. Nhánh slot từ 24 có thể dùng hàng vũ khí thức tỉnh.
4. `DatabaseManager.Gold_Cal`: vàng đầu vào × tổng phần trăm `GoldAmountAdd` / 100; còn cần dịch phần tổng hợp buff phía trước để có cả chuỗi thưởng vàng.
5. `DatabaseManager.Exp_Cal`: chuyển `ExpAdd` float32 sang double, nhân 1.000, cắt phần lẻ, nhân kinh nghiệm đầu vào rồi chia 100.000.
6. `Character.DmgType_Cal`: dùng hai bảng tra theo hệ, nhánh nhân 70/100 hoặc nhân 2. Các enum và bảng tra đã lấy trực tiếp từ metadata và vùng chỉ đọc trong thư viện.

Không được dùng riêng sáu công thức này để tuyên bố đã tái hiện đủ gameplay. `PlayerBase.Atk_Cal`, `Hp_Cal`, trạng thái chiến đấu, kỹ năng và nhiều buff còn phải dịch/đối chiếu đầy đủ.

## Phần còn thiếu trước khi dựng game

- Chưa hoàn tất toàn bộ chuỗi sát thương, buff, AI, kỹ năng, rơi đồ, nâng cấp và lưu tiến trình offline.
- Đã tìm thấy `IFixRuntimePatcher` cùng nhánh tải, kiểm tra hash, đọc file cache và áp dụng bản vá. Các DTO `Integration.ServerStatus` có `IFixData` / `IFixDataW`. Nội dung bản vá đang được máy chủ chọn chưa được khôi phục; bản native có thể khác phiên bản chạy sau khi nhận vá.
- Có mã client và giao thức dịch vụ trong APK. Chưa khôi phục được triển khai phía máy chủ. Không suy ra logic máy chủ chỉ từ tên request/response.
- Chưa kiểm thử gameplay tương đương với ứng dụng Android đang chạy; chưa kiểm thử H5 trên mobile/desktop và chưa host H5.

Không tạo, vẽ hoặc thay thế asset. Không truy cập tài khoản game, không gọi dịch vụ trò chơi, không công khai website.

## Chạy lại

Cần Python 3 với `numpy` và `cryptography` đã có sẵn trong môi trường. Không cần Unity editor, Android emulator hoặc thực thi thư viện native của APK.

```bash
python tools/recover_full_data.py /duong-dan/slayer-source.xapk --out recovered
```

Công cụ từ chối metadata và thư viện IL2CPP có SHA-256 khác bản được phân tích. Toàn bộ địa chỉ và cấu trúc trong bộ này dành riêng cho XAPK đó. Đầu ra tái tạo bao gồm thư viện IL2CPP trích từ đầu vào, các bản đồ JSON/CSV đầy đủ và dữ liệu bảng; thư viện lớn không được đóng kèm lại trong gói kết quả.

Hai hash đầu vào quan trọng:

- Metadata: `0f0c21c82432adab3421ea6c82e2662b032a8fc2fc17f81defe166b2ce294c46`
- IL2CPP: `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`

Quy cách MemoryPack được đối chiếu với mã/tài liệu gốc của [Cysharp/MemoryPack](https://github.com/Cysharp/MemoryPack). Tên trường, thứ tự đọc và số liệu game trong gói được lấy từ XAPK, không lấy từ ví dụ hay wiki trò chơi.
