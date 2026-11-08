# Slayer Legend 700.0.4 — Gói bàn giao phân tích

Gói gom các kết quả đã tìm được của dự án port XAPK sang H5 offline. Giải nén ba ZIP vào cùng một thư mục. Mở `BUOC_TIEP_THEO.md` để xem thứ tự làm việc và tiêu chí hoàn thành.

| ZIP | Nội dung |
| --- | --- |
| `Slayer_Legend_01_Phan_Tich_Va_Lo_Trinh.zip` | Mã phân tích, bảng dữ liệu, mã JavaScript đã đối chiếu, bằng chứng ARM64, sprite intro, tài liệu và lộ trình |
| `Slayer_Legend_02_PNG_Nhan_Vat_Trang_Bi_UI.zip` | PNG gốc nhóm 01, 02, 05, 06, 07 — vũ khí, nhân vật và skin, vật phẩm, hiệu ứng, giao diện |
| `Slayer_Legend_03_PNG_Quai_Va_Map.zip` | PNG gốc nhóm 03, 04 — quái, boss, map và cảnh nền |

## Tra cứu nhanh

- `slayer-work/ANALYSIS_STATUS.md` là mục lục checkpoint liên tục đến bước 16. Các thư mục `logic-full` và `logic-step4` đến `logic-step16` giữ cấu trúc mã và bằng chứng.
- `slayer-work/reproduced-step3/` có `libil2cpp.so`, `global-metadata.dat` gốc, `global-metadata.decoded.dat`, các bảng và bản đồ symbol phục vụ chạy lại công cụ phân tích. Bảng gốc đã giải mã và script khôi phục nằm trong `logic-full/`.
- `slayer-work/logic-step15/` có luồng mở đầu, phân biệt Slayer và companion. `slayer-work/logic-step16/` có hai atlas và 55 PNG Slayer gốc, manifest crop/pivot, clip chiến đấu, mã chọn pose và kết quả kiểm tra.
- `nghien-cuu-bo-sung/` giữ tài liệu và script của các nhánh nghiên cứu độc lập. Bước 16 trong nhánh này phân tích hồ sơ ngoại hình, còn bước 16 của checkpoint liên tục phân tích sprite và hoạt ảnh.
- `nghien-cuu-bo-sung/Slayer_Legend_Buoc19_Monster_Map_Drop_Research/` có bảng Stage/Monster, PathID sprite quái và layer map, đoạn ARM64 và script kiểm định.
- `danh-muc/SLAYER_LEGEND_PNG_INDEX.csv` tra tên, gói nguồn, PathID, kích thước và đường dẫn ảnh. Đường dẫn cột cuối trỏ đến thư mục cấp đầu trong ZIP 02 hoặc 03. Các PNG trong hai ZIP này gồm 43.771 tệp từ bảy nhóm, tính riêng sprite và atlas. PNG intro và tài nguyên thử nghiệm cũ có danh mục riêng trong ZIP 01.
- `tham-chieu-ban-thu-cu/` giữ mã H5 thử nghiệm và hồ sơ nguồn asset để tham khảo. Các bộ hình và trạng thái dùng trong những bản thử cũ chưa được xác minh là nhân vật hoặc màn bắt đầu của game.
- Mỗi ZIP có bảng SHA-256 riêng để đối chiếu từng tệp. Hai nhóm ảnh phụ hero và map đã có bản trùng byte trong bảy nhóm chính, nên phần bàn giao giữ một bản ảnh và giữ manifest của lần xuất phụ trong `danh-muc/`.

## Tệp XAPK gốc

Dùng [Slayer Legend 700.0.4 XAPK gốc](https://chatgpt.com/library?file_id=libfile_5b435a0b996c81918a9a431983c28ef4&account_id=personal) khi cần trích thêm asset hoặc kiểm tra lại nguồn. Ba ZIP chứa các kết quả đã trích và tài liệu. Tệp nguồn 439.306.207 byte được giữ riêng để tránh tải lặp.

| Tệp | SHA-256 |
| --- | --- |
| XAPK | `b8c19d5fdf4da70c8c45cddf3f7e6b8a850863fd55b09b087c6d06d7001d6098` |
| `libil2cpp.so` ARM64 | `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537` |
| `global-metadata.dat` gốc | `0f0c21c82432adab3421ea6c82e2662b032a8fc2fc17f81defe166b2ce294c46` |

Một báo cáo xuất PNG đời đầu ghi giới hạn của bản đầu vào lúc đó. XAPK theo SHA-256 ở trên mở được bảng ZIP và có các APK con `contents.apk` và `emoticon.apk`. Việc hai gói xuất hiện trong XAPK chưa xác nhận chúng đã được xuất hết ra PNG.
