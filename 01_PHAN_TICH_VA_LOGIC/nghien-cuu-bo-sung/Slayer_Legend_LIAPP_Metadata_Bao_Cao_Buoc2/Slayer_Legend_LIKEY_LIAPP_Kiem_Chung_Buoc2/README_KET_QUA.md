# SLAYER LEGEND 700.0.4 — PHÂN TÍCH TĨNH / BƯỚC 2

Nguồn: file XAPK do người dùng cung cấp. Chỉ có báo cáo tĩnh; **chưa giải mã hoàn chỉnh metadata hoặc mã gameplay**.

## Xác minh trực tiếp

- Metadata được tách trước đó **trùng SHA-256** với `assets/bin/Data/Managed/Metadata/global-metadata.dat` trong APK chính: **True**.
- Dung lượng metadata: **33,085,012 bytes**. SHA-256: `0f0c21c82432adab3421ea6c82e2662b032a8fc2fc17f81defe166b2ce294c46`.
- Header gốc: `4c 49 4b 45 59 7f 00 00 df 02 53 df af 56 23 00`; bắt đầu bằng `LIKEY`: **True**.
- Gói APK chính chứa `assets/LIAPP.ini`, `assets/.eufxww.dex`; split arm64 có `lib/arm64-v8a/libeufxww.so`.
- File `assets/LIAPP.ini` ghi rõ: `This application is protected by LIAPP(Lockin Company's mobile security solution).`. Đây là **bằng chứng xác nhận LIAPP**, không còn chỉ là giả thuyết về tên `LIKEY`.
- Phép XOR key `43 44 45 46 47 48 49 4A` đọc được một số chuỗi, nhưng không sinh header metadata chuẩn ở đầu file. **Không có file dump.cs**.
- Vùng 0x000000–0x22FFFF có entropy ~7.99 bit/byte tính theo block 64 KiB; sự chuyển tiếp sang vùng ít entropy hơn nằm gần `0x235600`–`0x235800`. Đây là phép đo thống kê, **không phải offset giải mã đã được xác định**.

## Chuỗi được tìm thấy sau XOR (chỉ chứng minh có định danh, KHÔNG chứng minh đã khôi phục logic)

| Chuỗi | Lần xuất hiện | Offset ví dụ |
|---|---:|---|
| `Assembly-CSharp` | 77 | `0x72dbb6` |
| `GrowSlayer` | 6,719 | `0x306e19` |
| `GameManager` | 479 | `0x295cb2` |
| `Xls_Skill` | 25 | `0x27d8d9` |
| `Xls_AdventureInfo` | 5 | `0x27cb1a` |
| `Xls_WeaponSkin` | 5 | `0x27e1b7` |
| `SkillName` | 38 | `0x2796d7` |
| `UnityEngine` | 6,300 | `0x30702d` |
| `MetadataRegistration` | 0 | `(không thấy)` |

## File bàn giao
- `EVIDENCE_VERIFIED.json`: bằng chứng tên tệp, marker, kích thước, SHA, offset được đọc trực tiếp.
- `METADATA_REGION_ENTROPY.csv`: bảng entropy của metadata theo vùng (bao gồm vùng chuyển tiếp).
- `LIAPP_ini_from_XAPK.txt`: nội dung gốc 220 byte, không sửa đổi.
- `reproduce_static.py`: script tái lập bằng Python chuẩn (không cần cài thư viện).

## Phần chưa làm được
- Chưa giải được vùng metadata đầu, chưa có bảng offset/type/method hợp lệ, chưa xuất được `dump.cs` hoặc `script.json`.
- Chưa phục hồi công thức sát thương, nâng cấp, AI hay backend của Slayer Legend.
- Chưa xác định chính xác thuật toán/khóa giải mã LIAPP của bản game này.
- Không dùng bất kỳ hình, texture hoặc gameplay tự chế nào trong gói phân tích.

## Cách chạy lại trên máy Windows
`python reproduce_static.py "Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" global-metadata.dat ket_qua`

## Đối chiếu với libil2cpp.so (bổ sung từ bảng export ELF)

Thư viện `libil2cpp.so` của XAPK là ELF AArch64 **đã strip** nhưng vẫn có API `il2cpp_*` trong bảng `dynsym`.

Ví dụ đã đối chiếu bằng `readelf -W --dyn-syms`:
- `il2cpp_init`: `0x4597AA8` (44 byte)
- `il2cpp_domain_get`: `0x45980CC` (4 byte)
- `il2cpp_class_get_name`: `0x4597C34` (4 byte)
- `il2cpp_runtime_invoke`: `0x45984F0` (4 byte)
- `il2cpp_method_get_name`: `0x4598410` (4 byte)
- Chuỗi đường dẫn `global-metadata.dat` có mặt ở offset **`0x1F2D62E`** của file `.so`.

SHA-256 của `libil2cpp.so`: `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`.

Các địa chỉ trên là **giá trị symbol của API runtime**, không phải địa chỉ các hàm gameplay như sát thương hoặc nâng cấp. Không được coi chúng là bảng mapping method đã được khôi phục.

`ELF_NATIVE_SYMBOLS.json` chứa offset và tên export thu được bằng `readelf`; có thể tái lập bằng `readelf -W --dyn-syms libil2cpp.so` trên Linux/WSL.
