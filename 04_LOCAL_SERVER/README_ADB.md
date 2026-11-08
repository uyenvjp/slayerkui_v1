# Slayer Legend Local Project — Login API + Web cài XAPK qua ADB

Project chạy **chỉ trên máy Windows cá nhân** (127.0.0.1), dùng Python 3 standard library. Không cần XAMPP. Đây là server thử nghiệm + công cụ cài Android; **chưa phải server đăng nhập tương thích APK gốc**.

## Chạy trong 3 bước

1. Cài Python 3.10+ và **Android SDK Platform-Tools (ADB)** từ https://developer.android.com/tools/releases/platform-tools . Giải nén công cụ vào \`04_LOCAL_SERVER/tools/platform-tools/\` hoặc thêm \`adb.exe\` vào PATH.
2. Kết nối điện thoại Android bằng cáp USB, bật Developer Options → USB debugging, đồng ý cấp quyền trên điện thoại. Mở PowerShell gõ \`adb devices -l\` hoặc để web hiển thị thiết bị.
3. Nhấn đúp \`START_WINDOWS.bat\` ở thư mục project. Web tự mở tại **http://127.0.0.1:8765**. Backend JSON thử nghiệm tại **http://127.0.0.1:8000/health**.

Nếu \`server.py\` cũ đang chạy ở cổng 8000, project phát hiện và tái sử dụng; có thể dừng nó trước nếu muốn chạy sạch bằng một cửa sổ.

## Tải và cài XAPK

Trong dashboard:
- Nhấn **Lấy XAPK từ GitHub LFS** (phụ thuộc quota của GitHub), hoặc chọn XAPK sẵn có rồi nhấn **Tải XAPK lên web**.
- Chỉ bản gốc 700.0.4 kích thước **439306207** byte, SHA-256:
  \`b8c19d5fdf4da70c8c45cddf3f7e6b8a850863fd55b09b087c6d06d7001d6098\` mới được nhận.
- Nếu file XAPK đã có trên máy, có thể đặt trực tiếp tại \`data/Slayer_Legend_700.0.4.xapk\`. Web xác minh hash trước khi cài.
- Chọn serial ADB ở danh sách thiết bị, nhấn **Cài Slayer Legend vào thiết bị**, xem log.
- Nếu XAPK có nhiều APK mà \`manifest.json\` không chỉ ra \`split_apks\`, công cụ **từ chối đoán** việc cài ghép những package khác nhau. Cần nghiên cứu thêm layout.
- Nếu có OBB đã khai báo, script đưa vào \`/sdcard/Android/obb/com.gear2.growslayer/\`. Android đời mới có thể hạn chế thao tác này; lỗi sẽ hiện ở log.

Lệnh tương đương để tự dùng:
\`\`\`powershell
py -3 download_xapk.py
py -3 run_all.py
\`\`\`

## Kiểm tra JSON login API

Trong web có form thử tài khoản đã đăng ký trên local API; token không được trả ra frontend. Nếu chưa có account:

\`\`\`powershell
Invoke-RestMethod -Uri "http://127.0.0.1:8000/api/v1/register" -Method Post -ContentType "application/json" -Body '{"username":"testplayer","password":"ChangeMe12345!"}'
\`\`\`

Tài khoản dùng trong thử nghiệm không phải Firebase/Google account. Không dùng mật khẩu tài khoản thật.

## Cấu trúc

- \`server.py\`: local SQLite JSON API, tài khoản và session token.
- \`run_all.py\`: chạy API 8000 và dashboard 8765.
- \`adb_dashboard.py\`: HTTP server localhost, kiểm tra XAPK, ADB devices, install.
- \`dashboard.html\`, \`style.css\`, \`app.js\`: giao diện quản lý web.
- \`download_xapk.py\`: lấy XAPK gốc từ Git LFS, kiểm tra SHA-256.
- \`PROTOCOL_STATUS.md\`: phân định dữ liệu giao thức xác minh với phần chưa giải.
- \`data/\`: XAPK do người dùng upload/download, không đưa lên GitHub.
- \`slayer_local.db\`: SQLite, không đưa lên GitHub.

## Bảo mật

Web chỉ bind \`127.0.0.1\`, chống trang ngoài gọi lệnh qua host/origin check và CSRF token, không có endpoint shell tuỳ ý. Dashboard không log password hoặc token. ADB install chỉ nhận serial đang ở trạng thái \`device\`, và XAPK phải có SHA-256 đúng. Không mở port 8000/8765 ra Internet hay dùng làm dịch vụ production. Trên máy tính không tin cậy, chỉ chạy dashboard khi cần.

## Nguồn

Repository: https://github.com/uyenvjp/slayerkui_v1

XAPK trên GitHub là Git LFS: file Git thông thường chỉ là pointer 134 byte; công cụ tìm đúng byte gốc trên GitHub LFS, không nhầm pointer là game.

**Tình trạng:** code đã được đóng gói để tải và tự chạy; chưa được kiểm thử cài đặt thực tế trên điện thoại của bạn hoặc kết nối login với APK gốc.
