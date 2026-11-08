# Kiểm tra khả năng port Slayer Legend sang H5 offline

Ngày kiểm tra: 02/11/2026. Trạng thái: đã kiểm tra cấu trúc gói và tài nguyên; chưa có bản H5 chạy được.

## Kết luận

Gói cung cấp là bản phát hành Unity Android IL2CPP, không phải project Unity hoặc bản Web. Từ các dữ liệu hiện có, chưa thể thực hiện một bản port nguyên game sang H5 có thể kiểm chứng mà không phục hồi hoặc có thêm mã logic có thể build lại. Chưa tạo hoặc vẽ asset thay thế.

## Gói đã kiểm tra

- Tên: Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(3).xapk
- Kích thước: 439.306.207 byte.
- SHA-256: b8c19d5fdf4da70c8c45cddf3f7e6b8a850863fd55b09b087c6d06d7001d6098
- Package: com.gear2.growslayer; version_name 700.0.4; version_code 705.
- XAPK chứa 10 APK con, icon.png và manifest.json.
- Header các AssetBundle xác nhận Unity 6000.3.10f1.

## Tài nguyên thực tìm thấy

Đã tách tám AssetBundle nguyên bản và đọc bảng nội dung UnityFS bằng giải nén LZ4. Cả tám có kích thước khai báo khớp kích thước thực. Đây là kiểm tra container; chưa xuất toàn bộ texture, sprite hoặc animation sang định dạng web.

| Pack | Kích thước bundle (byte) | Định dạng | Số mục nội bộ |
| --- | ---: | --- | ---: |
| hero | 7,148,808 | UnityFS | 2 |
| monster | 22,199,924 | UnityFS | 2 |
| map | 12,145,919 | UnityFS | 2 |
| popup | 37,899,387 | UnityFS | 2 |
| skin | 5,029,162 | UnityFS | 2 |
| sound | 31,336,525 | UnityFS | 2 |
| contents | 8,030,236 | UnityFS | 2 |
| emoticon | 69,566 | UnityFS | 2 |

Tổng kích thước tám bundle nén: 123,859,527 byte.

## Phần mã game và điểm chặn

- config.arm64_v8a.apk chứa lib/arm64-v8a/libil2cpp.so (180.105.648 byte) và libunity.so (23.982.160 byte).
- assets/bin/Data/ScriptingAssemblies.json liệt kê 231 tên assembly, gồm Assembly-CSharp.dll, GrowSlayer.DataTableClient.dll và GrowSlayer.ProtoGenScripts.dll. Những tên này là tham chiếu assembly, không phải mã nguồn hoặc DLL game có sẵn để build lại.
- Không tìm thấy tệp mã C#, DLL game, Lua, HTML hoặc WebAssembly có thể dùng làm nguồn port trong danh mục tệp APK đã quét. JavaScript tìm thấy là res/raw/omsdk_v1_5_3.js, không phải logic game.
- global-metadata.dat có kích thước 33.085.012 byte và bắt đầu bằng LIKEY; APK cũng có assets/LIAPP.ini. Đây là dấu hiệu metadata đã qua bảo vệ/biến đổi; chưa xác định thuật toán và chưa phục hồi được phần mã.
- Chưa xác định đầy đủ chức năng nào phụ thuộc máy chủ. Có tham chiếu Firebase, gRPC và protobuf; chỉ sự hiện diện thư viện không chứng minh toàn bộ gameplay chạy ở đâu.
- Chưa có project Unity với Assets/, Packages/, ProjectSettings/ cùng scripts/logic để build Web và thay các phụ thuộc online bằng xử lý offline.

## Đầu vào cần bổ sung để tiếp tục port đúng game

1. Ưu tiên project Unity gốc đầy đủ: Assets/, Packages/, ProjectSettings/ và scripts C#.
2. Nếu không có project gốc: cần một bản project phục hồi có mã logic có thể biên dịch, hoặc nguồn client và dữ liệu gameplay tương đương đủ để kiểm chứng hành vi.
3. Phần phụ thuộc server cần được kiểm tra riêng sau khi có nguồn client. Không tự bịa bảng chỉ số, công thức chiến đấu hoặc tiến trình để lấp chỗ thiếu.

## Tài liệu nền tảng đã đối chiếu

- Unity 6.3, scripting back ends: https://docs.unity.com/en-us/engine/6000.3/manual/programming-environment/scripting-backends/intro
- Unity 6.3, Web Build folder: https://docs.unity.com/en-us/engine/6000.3/manual/platform-specific/webgl/building-distribution/building
- Unity 6.3, AssetBundle platform considerations: https://docs.unity.com/en-us/engine/6000.3/manual/assets-and-media/assets-managing-runtime/assetbundles-section/platforms

Unity mô tả IL2CPP là chuỗi biên dịch từ C#/assembly qua C++ sang binary cho nền tảng đích. Web build có runtime JavaScript, WebAssembly và dữ liệu/scene riêng. AssetBundle phụ thuộc nền tảng; không thể coi bundle Android là bundle Web chỉ bằng đổi tên.
