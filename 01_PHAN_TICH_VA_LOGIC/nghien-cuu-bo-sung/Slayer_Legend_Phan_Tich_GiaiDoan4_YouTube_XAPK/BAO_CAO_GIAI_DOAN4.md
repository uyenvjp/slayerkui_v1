# Slayer Legend 700.0.4 — Giai đoạn 4: Đối chiếu gameplay công khai và asset XAPK

**Nguồn nội bộ:** `Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk` do người dùng cung cấp.  
**Phương pháp:** đọc trực tiếp đối tượng UnityFS trong `hero.apk` và `skin.apk`, đối chiếu tên loại asset với các trường TypeTree đã ghi nhận ở giai đoạn 3. Thông tin gameplay bên ngoài được ghi riêng, không nhận là công thức gốc lấy từ XAPK.

## A. Bằng chứng mới từ XAPK (kiểm tra bằng script đi kèm)

| Assetpack | Sprite (ClassID 213) | Texture2D (ClassID 28) | Tổng đối tượng serialized |
|---|---:|---:|---:|
| `hero` | 5.116 | 239 | 5.356 |
| `skin` | 15.718 | 1.453 | 17.273 |

Trong `hero` có các nhóm tên sprite `warrior_*` (1.268), `archer_*` (1.268), `ninja_*` (1.268), `mage_*` (1.248), `campaign_character_*` (64). **Đây không phải bằng chứng về các class nhân vật chính do người chơi chọn.** Theo thông tin người chơi cung cấp, các nhóm warrior/archer/ninja/mage thuộc hệ thống bạn đồng hành.

Trong `skin` xuất hiện các nhóm tên sprite `skin_costume*` (8.864), `skin_body*` (893), `skin_face*` (694), `skin_hair*` (654), `skin_hat*` (584), `sword*` (571), `skin_facedeco*` (404), `skin_cloak*` (396), `skin_hairback*` (270), cùng nhiều nhóm hiển thị khác. Đếm theo **tên đối tượng**, không phải số vật phẩm độc nhất: một bộ trang phục có thể gồm nhiều frame.

## B. Cấu trúc ghép hình nhân vật gốc (từ TypeTree Unity)

Bộ phân tích giai đoạn 3 ghi nhận lớp `PlayerInGameDisplay` từ bundle `monster` thuộc `Assembly-CSharp`, có **10 đối tượng** và các trường hiển thị sau: `Body`, `Costume`, `CostumeEffect`, `Head`, `Hair`, `Hat`, `Hair_Back`, `Hair_Light`, `Face`, `FaceDeco`, `Earring`, `Cloak_Front`, `Cloak_Back`, `Lens`, `Leg_Body`, `Leg_Costume`, `Hands`, `Costume_Hands`, `Equipment_SpriteRenderer`, `WeaponSpriteEffect`, `SwordEffectColorCode`.

**Suy luận kỹ thuật có căn cứ:** nhân vật chính dùng nhiều lớp hiển thị (body/hair/costume/weapon...) chứ không phải cứ lấy một atlas Warrior trong `hero` rồi chạy animation. Nhưng **chưa tìm thấy cấu hình ID của bộ mặc định cho người chơi mới**. Chưa gắn nhãn `skin_body_000`, `skin_costume_000` hay `sword_...` là trang bị khởi đầu nếu không có bằng chứng khởi tạo.

## C. Đối chiếu gameplay với video hướng dẫn và các nguồn công khai

**YouTube:**
- Elkamyst – Progression Guide: https://www.youtube.com/watch?v=XTjSePKxXSw (được nhúng tại https://sites.google.com/view/slayerlegends/video-guides/progression-guide)
- Elkamyst – video được cộng đồng tham khảo cho build/boss: https://www.youtube.com/watch?v=ZDHDGi-RY7Q
- Video được cộng đồng tham khảo tiếp: https://www.youtube.com/watch?v=Rxp1sXq_7YQ

**Giới hạn truy cập:** hệ thống truy xuất YouTube trong phiên này bị chặn tải dữ liệu khung hình và transcript; vì vậy không ghi là đã xem hết hình ảnh/video. Các điều dưới đây được đối chiếu từ mô tả hướng dẫn và tài liệu cộng đồng, **không phải thông số được đọc từ IL2CPP của XAPK**.

- **Vòng lặp chiến đấu:** Slayer đi sang phải, tự đánh quái; quái xuất hiện theo đợt, vượt Boss để sang màn; khi chưa vượt Boss thì farm ở màn hiện tại.
- **Các tab chính:** Character/Slayer, Skill, Equipment, Companion, Adventure, Shop. Kỹ năng chủ động có MP/cooldown và Auto, không phải hai phím Q/R như bản demo H5 cũ.
- **Bạn đồng hành:** Ellie, Zeke, Miho, Luna (đây là **tên nhân vật theo tài liệu**, chưa có xác nhận atlas warrior/archer/ninja/mage tương ứng với từng tên nào).
- **Màn đầu:** Stage 1 thuộc Beginning Forest. Bảng wiki cho stage 1 ghi quái HP 8, Boss HP 40, Boss ATK 1, Gold/kill 14, EXP/kill 15, drop Weapon Common 4. Cần đối chiếu chính bảng dữ liệu 700.0.4 trước khi dùng những số này như dữ liệu game đã xác minh.
- **Tiến trình mở khóa tham khảo:** stage 40 Emergency Request, stage 80 Soul Weapon, stage 100 Cyclic Forest, stage 120 Class. Các mốc có thể thay đổi theo bản cập nhật; không khẳng định chúng giống 100% bản 700.0.4 nếu chưa kiểm tra cấu hình gốc.

Nguồn đối chiếu:
- https://slayerlegend.wiki/getting-started/core-mechanics
- https://slayerlegend.wiki/getting-started/ui-guide
- https://slayerlegend.wiki/companions
- https://slayerlegend.wiki/stages/stages-1-200
- https://www.reddit.com/r/SlayerLegend/comments/191vgju
- https://www.reddit.com/r/SlayerLegend/comments/14os61s

## D. Điều đã biết và chưa biết

**Đã kiểm tra trực tiếp:** số lượng và tên asset gốc trong `hero`/`skin`; danh sách trường của `PlayerInGameDisplay` từ bản phân tích TypeTree giai đoạn 3.

**Chưa kiểm tra được:** ID tạo hình mặc định của Slayer; cách chọn/tổ hợp frame khi đi/đánh; công thức sát thương/tốc độ/skill; logic máy chủ; tỷ lệ thưởng cụ thể của v700.0.4; thân hàm IL2CPP do metadata `LIKEY` chưa được khôi phục.

## E. Nguyên tắc port cho giai đoạn kế tiếp

1. Không sử dụng Sprite `warrior`, `archer`, `ninja`, `mage` làm nhân vật chính.
2. Xác định bộ layer mặc định của `PlayerInGameDisplay` bằng cấu hình khởi tạo (không đoán).
3. Xác định animation/tốc độ di chuyển/tấn công từ asset và hành vi đã đối chiếu.
4. Khôi phục hoặc đối chiếu bảng stage, quái, phần thưởng và skill trước khi viết gameplay.
5. Giữ tất cả asset hình/âm thanh đúng từ XAPK được cung cấp; tài liệu và video bên ngoài **chỉ dùng tham khảo**, không lấy hình để đưa vào game.

## F. Tái lập kiểm chứng

Chạy từ thư mục `analysis_utils` (Python 3, thư viện Python chuẩn, cần `lz4` theo cấu trúc parse bundle):

```bash
python verify_hero_skin.py "/duong/dan/Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" ".."
```

Kết quả: `XAPK_original_sprite_names.csv` và `XAPK_Hero_Skin_Verified.json`. Danh mục lưu Class ID, PathID và tên mỗi đối tượng. Script chỉ đọc, không giải mã hay vẽ art ngoài.
