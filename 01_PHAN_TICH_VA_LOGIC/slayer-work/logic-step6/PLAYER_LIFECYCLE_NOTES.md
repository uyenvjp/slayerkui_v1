# Các nhánh lifecycle đã đọc tiếp — chưa port/đối chiếu toàn chuỗi

Phân biệt với hai thân hàm GetDmg/PenaltyDmg đã port trong `port/recovered-player-damage.mjs`. Các nhận xét dưới đây dựa vào ASM tĩnh trong `player-state/`; chưa mô tả là gameplay đã kiểm thử.

## PenaltyDmg, 0x4ef7d64

Đã port và đối chiếu 103 snapshot riêng với entry này. State==3 hoặc isBattle==false thì thoát. Còn lại trừ thẳng HP_cur bằng BigInteger, không dùng khiên, không xét né/kháng hoặc các hệ số của GetDmg, không có nhánh cứu tử World Boss trong thân hàm này. Gọi callback HP bắt buộc, hiệu ứng thanh HP, chữ sát thương; HP<=0 thì yêu cầu FakeDeath(1) nếu cờ ReBorn còn, nếu không yêu cầu Death. Không tự clamp HP.

## WaterReflect, 0x4ef6584

- Gọi hiển thị Miss trước khi xét waterReflectCount.
- Nếu count>=1, đặt count=0 rồi yêu cầu danh sách callback khác null.
- Danh sách có phần tử: lấy **chỉ callback đầu tiên**; nếu khác null thì gọi callback đó. Sau đó xóa toàn bộ danh sách, không vòng lặp gọi mọi callback.
- Với danh sách có phần tử, gọi quest `TryAddCount(17, boxed 1014, 1)` sau bước xóa.
- count<1 hoặc danh sách rỗng đi ra không thêm quest ở nhánh này. Các điểm null ở danh sách/manager/quest vẫn có đường lỗi native.

Chưa port container/delegate và chưa phân tích bên trong callback phản đòn. Không thay bằng việc lấy toàn bộ damage vào rồi nhân một hệ số phản đòn mới.

## FakeDeath, 0x4ef797c

1. Luôn gọi StopFakeDeathCoroutine đầu tiên.
2. Tham số khác 1: thoát ở baseline này.
3. Tham số 1: gọi SkillManager.IsEquippedSkillBlocked(1018). Nếu bị chặn thì chuyển Death.
4. Nhánh không bị chặn đặt `SeasonSkillffect_ReBornAvailable=false`, tra skill 1018 trong danh sách dữ liệu.
5. Mảng giá trị skill phải có ít nhất ba phần tử; các nhánh độ dài 0/1/2 đi tới lỗi index. Không tự cấp ba số mặc định.
6. Truyền ba float của mảng và index 1018 cho Co_FakeDeath, StartCoroutine, giữ coroutine handle ở field 2352.

Còn phải đọc MoveNext của Co_FakeDeath để biết đủ thời gian, trạng thái và phục hồi; factory IEnumerator chưa đủ để kết luận hiệu ứng hồi sinh.

## Death, 0x4ef7b30

Thứ tự trong thân hàm đã đọc: StopFakeDeathCoroutine; ghi 0 vào backing field CurrentRebornState tại 736; gọi delegate static PlayerBase.DefeatEvent tại offset 48 (bắt buộc khác null); gọi Dead; tạo DefeatCoroutine và Start_Defeat; gọi âm thanh qua virtual SoundManager.

Chưa dịch đầy đủ Dead, coroutine defeat, cơ chế chuyển màn và delegate static. Không tự gán state=3 ngay trong Death chỉ dựa vào tên hàm: việc đổi trạng thái phải được xác định từ hàm con thực sự.
