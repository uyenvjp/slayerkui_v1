# Bước 16 — Sprite Slayer và hoạt ảnh trong trận

## Màn mở đầu

Đã giải mã hai atlas ETC2 RGBA gốc `slayer_01` và `slayer_02` (1024 × 1024) từ XAPK. Tách 55 PNG trong suốt, mỗi khung 204 × 128, theo hình chữ nhật gốc. Manifest ghi tọa độ cắt, pivot, pixels-per-unit, file nguồn và pathID. Sáu clip intro của hai biến thể Slayer tham chiếu tổng cộng 20 sprite riêng biệt. Cả 20 tham chiếu khớp chính xác file và pathID của ảnh đã trích. Dùng các sprite này cho nhân vật chính trong intro theo kết quả Bước 15.

## Hoạt ảnh trong trận

Đọc liên kết từ `Player` trong `level1` đến `Animator_Players_Costume` và controller nền `Animator_Player`. Bảng bằng chứng có 31 cặp clip thay thế, 16 clip đã phân tích và 70 sự kiện Unity gốc. Các mốc sau là thời gian trong clip. Tốc độ Animator và time scale có thể thay đổi thời gian thực.

| Clip | Sự kiện | Giây |
| --- | --- | ---: |
| `Players_Attack` | `Animation_Atk_SpriteSetting` | 0, 0,066667, 0,166667, 0,266667, 0,333333, 0,4 |
| `Players_Attack` | `Attack_Func` | 0,183333 |
| `Players_Attack` | `AttackAction_End` | 0,416667 |
| `Players_Attack3` | `AttackAction_End` | 0,466667 |

Đối chiếu 78/78 ca JavaScript với kết quả chạy các đoạn lệnh ARM64 đã chọn qua trình thông dịch. Có chín ca lỗi hoặc cập nhật một phần để kiểm tra thứ tự ghi lớp áo và thân. Ví dụ, sự kiện đánh thường chọn chỉ số áo/thân 8 khi đối số là 0 và 9 cho đối số 1–4. Tóc dùng dãy riêng `[0,1,2,2,0]`. Khi đi bộ, lớp áo/thân dùng đối số cộng 1 và áo choàng dùng dãy `[1,2,3,1,2,3]`. Việc chọn phần tử mảng và việc xác định thứ tự các PNG trong mảng là hai phần riêng.

## Lớp ngoại hình

- `SkinManager.CostumeSetting_Default` chọn skin đang dùng nếu hồ sơ bật skin. Nhánh còn lại chọn ngoại hình từ cấp Slayer và mức thức tỉnh. `DataManager.GetCostume` cấp dữ liệu trang phục.
- `PlayerBase.SkinSetting` nạp tóc trước, bật hoặc tắt lớp thân qua `BodyBase`, chọn tên sprite nữ khi `CharacterNumber == 1` và `SameSprites` tắt. Thân, mặt, trang trí mặt và áo choàng có đường nạp riêng. `AssetManager.GetSkinSprites` lưu mảng theo khóa trong bộ nhớ đệm.
- Khóa áo và thân dùng tiền tố `Skin/Costume/skin_costume_` và `Skin/Body/skin_body_`. Mã đến 999 dùng định dạng `D3`. Nhánh áo có hai bộ hình dùng hậu tố `_1` cho bộ thứ hai trong phạm vi này.

Đối chiếu các ví dụ sau với bảng AssetBundle trong `skin.apk → assets/assetpack/skin`, một UnityFS LZMA. File serialized là `CAB-9393da9bf61e2069a80d40c5299214e0` và có tệp `.resS` tương ứng. Chỉ số preload là vị trí bắt đầu trong bảng. Các số lượng không gồm đối tượng Texture2D.

| Đường dẫn dưới `assets/03_assetpack/skin/` | Chỉ số preload | Sprite | Texture2D pathID |
| --- | ---: | ---: | ---: |
| `body/skin_body_000.png` | 10702 | 32 | `1886253969101445470` |
| `costume/skin_costume_000.png` | 17277 | 32 | `-4462426247493030095` |
| `face/skin_face_000.png` | 13203 | 4 | `2846187631017977211` |
| `hairs/skin_hair_000.png` | 15854 | 6 | `-7945313932203237708` |

Các đường dẫn trên xác nhận nơi chứa hình gốc cho từng lớp. Chúng là ví dụ ID 0 trong dữ liệu. Hồ sơ tài khoản mới, thứ tự mảng sprite do loader trả về, cách ghép khung hoàn chỉnh và tốc độ trận thực tế vẫn cần đối chiếu. Bộ PNG đi kèm bước này là sprite intro.

## Chạy lại kiểm tra

Từ thư mục gốc checkpoint, với XAPK gốc và dữ liệu giải mã Bước 3:

```bash
python3 logic-step16/tools/extract_slayer_sprites.py "$SLAYER_XAPK" --opening-evidence logic-step15/opening-scene-evidence.json --out logic-step16
python3 logic-step16/tools/read_battle_animation.py "$SLAYER_XAPK" --opening-evidence logic-step15/opening-scene-evidence.json --out logic-step16/battle-animation-evidence.json
python3 logic-step16/tools/generate_pose_vectors.py --source reproduced-step3 --out logic-step16
node logic-step16/port/verify-player-pose.mjs
```
