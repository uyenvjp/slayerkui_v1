SLAYER LEGEND 700.0.4 — KIỂM TRA APK VÀ BẢN H5 OFFLINE THỬ NGHIỆM

Cách dùng: mở index.html bằng Chrome trên PC hoặc điện thoại. Game không cần internet.
Đây là prototype tự xây dựng; KHÔNG phải bản port hoàn chỉnh/giữ nguyên hình ảnh từ APK.
Chức năng chơi được: tự động đánh quái, tấn công bằng chạm, kỹ năng Q/R, nâng sát thương, hồi máu, boss theo mốc, vàng, level, tự lưu tiến độ localStorage, thưởng lúc offline.
Mã nguồn nằm trong một file HTML, có thể chỉnh sửa. icon_from_xapk.png là icon trích nguyên vẹn từ XAPK gửi kèm (chưa được sử dụng trong bản prototype).

Kết quả phân tích XAPK:
- XAPK chứa 12 phần; APK gốc com.gear2.growslayer.apk 97.5MB.
- Unity version: 6000.3.10f1 (Unity 6).
- Có thư viện libil2cpp.so trong config.arm64_v8a.apk: C# đã biên dịch thành mã native Android, không thể chạy nguyên trạng trên trình duyệt.
- Hero, Monster, Map, Contents nằm trong các asset pack UnityFS riêng. Hero pack đã được giải nén ở mức dữ liệu nhị phân bằng công cụ nội bộ.
- Có thư viện Firebase, có khả năng kết nối dịch vụ mạng/tài khoản; chưa xác nhận mức độ gameplay phụ thuộc server.

Các phần CHƯA có:
- Chưa giải mã và ghép Texture2D/Sprite/Animator thực tế từ Unity.
- Chưa dựng lại nhiệm vụ, các hệ thống nâng cấp, event, shop hay các quy tắc drop thật.
- Chưa tái hiện trận đánh, chiến thuật, nhân vật, map và UI gốc.
- Chưa thể coi là game Slayer Legend bản H5 hoàn chỉnh.

Tiếp theo để chuyển thật: giải mã Unity texture & sprite atlas -> phân loại PNG hero/monster/map/effect -> mô phỏng gameplay -> tích hợp save offline IndexedDB -> thử nghiệm mobile, PC.
