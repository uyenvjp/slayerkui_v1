# Slayer Legend — mốc phân tích logic bước 4

Đây là **mã lõi tính toán và hồ sơ phân tích, chưa phải game H5 chơi được**. Đầu vào duy nhất vẫn là XAPK Slayer Legend 700.0.4, mã phiên bản 705. Không tạo hoặc thay asset; chưa triển khai website.

## Đã làm được

- Khôi phục và chạy lại bộ giải mã bước 3 từ XAPK: đủ 423 bảng, 44.777 dòng; ánh xạ 252.578 phương thức.
- Trích mã ARM64 của 45 phương thức liên quan chiến đấu, tổng 37.584 byte, có tên đích gọi để tiếp tục phân tích. Đây là số phương thức trích mã, **không phải số phương thức đã chuyển hoàn chỉnh**.
- Chuyển một phần chuỗi `NormalMonsterDmg_Cal` / `BossMonsterDmg_Cal` sang JavaScript độc lập giao diện: hệ nguyên tố, sát thương theo buff, giảm HP đầu đòn, ngưỡng HP, thứ tự các phép nhân/chia và sự kiện cộng dồn.
- Chuyển các phép tính nhỏ của trạng thái choáng/cháy/đóng băng, mastery ×120%, và xác suất né đòn. Điều kiện kích hoạt toàn bộ kỹ năng/trạng thái chưa được chuyển đầy đủ.
- Xác minh virtual slot 38 của Character, EnemyBase và PlayerBase đều trỏ tới `Character.DmgType_Cal` trong metadata này. Kết quả có trong `resolved-virtual-slots.json`; không suy rộng sang mọi lớp con.

## Kiểm chứng mới

`js-verification-report.json`: **1.800 ca số học thuộc 18 đoạn ARM64 được chọn đều khớp**, cùng **23 kiểm tra nhánh/thứ tự**.

Kết quả mong đợi được tạo bằng bộ đọc và diễn giải một tập lệnh ARM64 nhỏ trong Python từ các file `asm/`, tách khỏi công thức JavaScript. Các lời gọi BigInteger được mô hình bằng số nguyên Python; phép chia cắt về 0, float32 được làm tròn sau từng phép toán, phép toán int32 giữ hành vi tràn số. Có kiểm tra số rất lớn và điểm sát ngưỡng.

**Giới hạn:** không chạy APK hoặc thư viện game; không phải kiểm chứng gameplay với ứng dụng Android đang chạy. Bộ diễn giải chỉ chấp nhận những đoạn số học đã chọn, không mô phỏng Unity, toàn bộ hàm, ngẫu nhiên Unity hay IFix. Các phần khôi phục này thuộc nhánh native gốc, trước khi có bản vá trực tuyến.

`port/recovered-combat.mjs` yêu cầu người gọi truyền rõ các đầu vào buff và hàm kiểm tra kỹ năng chưa khôi phục. Thiếu trường sẽ báo lỗi; không tự đặt số liệu mặc định để giả làm gameplay hoàn chỉnh. Những thay đổi HP và hiệu ứng được trả thành kết quả/sự kiện; chưa có hệ thống game xử lý chúng.

## Điểm đã xác định từ mã gốc

- Spirit tăng sát thương boss dùng ID **4**, quái thường dùng ID **5**.
- Nhánh giảm HP khi quái còn đầy máu chạy trước kiểm tra buff HP cao; ngưỡng HP cao là **lớn hơn** 70%, ngưỡng HP thấp là **nhỏ hơn hoặc bằng** giá trị cấu hình.
- Mỗi bước nhân/chia được làm tròn riêng. Gộp các hệ số rồi chia một lần có thể sai kết quả.
- Hệ số Black Orb / Theme có phép nhân int32; không được thay bằng phép toán số lớn vô hạn ở bước tạo hệ số.
- Né đòn dùng `miss / (accuracy + miss + UserLevel)` với thứ tự float32 cụ thể. TrueDamage bỏ qua phép kiểm tra xác suất này, nhưng trong `GetDmg` vẫn còn nhánh MissState sớm và các nhánh trạng thái khác cần phân tích tiếp.

## Còn thiếu trước khi dựng H5

1. Hoàn tất tổng hợp chỉ số người chơi (`Atk_Cal`, `Hp_Cal`), kỹ năng và toàn bộ `EnemyBase.GetDmg`, boss đặc biệt, sát thương theo thời gian, AI và vòng chiến đấu.
2. Hoàn tất rơi đồ, nâng cấp, tiến trình và lưu offline; phân định rõ phần client có sẵn với phần do máy chủ quyết định.
3. Xác định nội dung IFix đang được máy chủ chọn hoặc giới hạn rõ bản port theo native baseline. Chưa khôi phục nội dung bản vá đang hoạt động; chưa có triển khai logic máy chủ.
4. Sau đó ghép asset gốc, kiểm thử gameplay/mobile/desktop và host riêng tư. **Hiện chưa có H5, chưa kiểm thử tương tác trình duyệt và chưa có URL mới.**

## Cấu trúc và chạy lại

Gói ZIP chứa `logic-full/` (mốc bước 3) và `logic-step4/` (mã/phân tích mới) đặt cạnh nhau. Không đóng lại thư viện IL2CPP lớn; tái tạo nó từ XAPK gốc:

```bash
python3 logic-full/tools/recover_full_data.py /duong-dan/slayer-source.xapk --out reproduced-step3
python3 logic-step4/tools/inspect_combat.py --source reproduced-step3 --out logic-step4
python3 logic-step4/tools/resolve_virtual_slots.py --source reproduced-step3 --out logic-step4/resolved-virtual-slots.json
python3 logic-step4/tools/generate_native_vectors.py --source reproduced-step3 --out logic-step4
node logic-step4/port/verify-native-math.mjs
```

Bước giải mã cần Python với numpy/cryptography; bước disassemble cần `libLLVM.so.20.1`; bước xác minh JavaScript dùng Node hỗ trợ BigInt/ES modules. Có thể chỉ chạy lệnh Node cuối trên bộ vector đóng kèm để kiểm tra phần JavaScript.

Hash IL2CPP: `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`. Tất cả địa chỉ và cấu trúc trong gói chỉ dành cho phiên bản đầu vào này.
