# Trạng thái giao thức gốc Slayer Legend 700.0.4

**Chưa có giao thức đăng nhập tương thích với APK Unity gốc.** Dịch vụ ở cổng 8000 chỉ là JSON API thử nghiệm độc lập.

## Bằng chứng hiện có

Từ dữ liệu phân tích trong repository và báo cáo bước 35 về đăng nhập gốc:

- Engine: Unity 6000.3.10f1, IL2CPP ARM64, có IFix runtime patching.
- \`SignManager.AnonymousLogin_Button\` gọi \`FirebaseManager.SignInGuest\`, dẫn tới \`FirebaseAuth.SignInAnonymouslyAsync\`. Đây là Guest qua Firebase, không phải username/password local.
- Các luồng \`LookupServerLogin\`, \`Integration.LookupLoginResponse.jwt_\`, \`SignInRequest.integrationJwtToken_\`, \`NetworkHandler.SetupJWT\` và \`UserInfoLoad.Load\` xuất hiện trong phân tích tĩnh.
- \`GrowSlayer.LoginResponse\` có \`jWT_\`, \`userInfo_\`, \`authKey_\`, \`sequenceNumber_\`.
- \`APIManager.SetClientData\` sử dụng ID 255 và \`ServerPrefs\` duy trì queue / ack theo phân tích \`logic-step11\`.
- Đường request/response chứa các DTO protobuf; một số xử lý sử dụng gRPC. Chưa thu được đầy đủ wire tags, URL thực, TLS/LIAPP behavior, IFix payload đang áp dụng, và điều kiện phản hồi runtime.

## Những gì project này làm được

1. JSON API: \`POST /api/v1/register\`, \`POST /api/v1/login\`, \`GET/POST /api/v1/profile\`, \`POST /api/v1/logout\`.
2. Web dashboard 127.0.0.1:8765 chạy lệnh ADB thật trên máy tính cho thiết bị được cấp quyền.
3. Tải hoặc upload XAPK 700.0.4, kiểm tra SHA256, giải nén split và cài lên Android.
4. Không thay đổi APK, không can thiệp TLS/certificate, không đụng vào server chính thức.

## Điều kiện phải xác minh để APK login vào server riêng

1. Xác định endpoint game thực sự gọi từ bản Android đang chạy và đường chọn môi trường. Có thể cần bản build client kiểm thử do chủ sở hữu cho phép chỉnh địa chỉ server.
2. Xác nhận gRPC service/method, cấu trúc protobuf và thứ tự Login → Lookup → UserInfo; giữ trace đã loại bỏ token/PII.
3. Lập bảng request/response cùng code lỗi, phiên bản, sequence, nội dung \`UserInfo\` ban đầu và điều kiện preload.
4. Dùng test account độc lập; tuyệt đối không sao chép hoặc giả mạo JWT/credential của dịch vụ gốc.
5. Tạo adapter \`original-client-protocol\` khi đủ bằng chứng; giữ JSON API tách biệt.

**Quan trọng:** Không thay kết quả kiểm thử ADB install thành kết luận client đã đăng nhập game.
