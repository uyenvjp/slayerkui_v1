# Phân tích tiếp logic client — XAPK build 705

**Chưa hoàn tất phân tích game, chưa có H5 chạy được.** Không có asset mới, hình vẽ thay thế, tài khoản giả hoặc website đã host trong gói này. Fixture là đầu vào tổng hợp để kiểm tra số học/nhánh, không phải luật chơi hoặc dữ liệu tài khoản.

## Các module JavaScript đã bổ sung

| Module | Phạm vi | Ca đối chiếu thân hàm |
|---|---|---:|
| `port/recovered-player-aggregation.mjs` | Bốn thân hàm ATK, HP/Heal thường và preset | 414 |
| `port/recovered-database-buffs.mjs` | 16 getter buff, nguyên tố, Black Orb, season, Demon Altar, spirit | 630 |
| `port/recovered-skill-timing.mjs` | 20 entry cooldown, đếm lượt đánh, stack, khóa và hai coroutine | 820 |
| `port/recovered-player-damage.mjs` | PlayerBase.GetDmg và PenaltyDmg, kèm kiểm tra Player_MissProbability và accessor HP/khiên | 206 |
| `port/recovered-defense-stats.mjs` | Ba getter né đòn, kháng, giảm sát thương và ghi cache | 198 |

Tổng **2.268 ca** ở các phạm vi trên. Không lấy số này làm tỷ lệ hoàn thành hay bằng chứng chơi giống bản Android. Các module số học bước 4–5 được giữ nguyên, không đổi tên các ca cũ thành kiểm chứng gameplay.

## Điều đã xác định rõ

- ATK và HP có các hệ số tràn số int32/int64 khác nhau; đặc biệt Black Orb không dùng chung một helper tùy tiện.
- Chí mạng có bước làm tròn về số nguyên chẵn khi đúng nửa đơn vị. Nhánh ATK thường có thể giữ giá trị siêu chí mạng cũ; preset xử lý riêng.
- SpiritSkillCheck kiểm tra enum trong mảng, không tung xác suất. SpiritSkillValue có cờ ban và chỉ đọc ID 1–12.
- Các dictionary buff được cộng theo thứ tự liệt kê gốc. Float32 được làm tròn sau từng phép cộng/nhân có trong native.
- Cooldown vượt qua 0 trong một frame vẫn yield; lần MoveNext sau mới đánh dấu sẵn sàng. Delay coroutine dùng maxCooltime gốc và delta time; coroutine thường dùng MaxCooltimePlus và hệ số giảm/tăng.
- `ActiveType`: CoolTime=2, Count=4, CountSkill=8, CountKillEnemy=10, StackCoolTime=11; không gộp tất cả thành một timer.
- `trueDamage` ở PlayerBase.GetDmg không miễn toàn bộ hệ số hay kiểm tra né. Chỉ bỏ nhóm giảm sát thương ban đầu; hệ số ở phía sau vẫn xét.
- HP_cur và Shield_Cur setter trong baseline ghi thẳng giá trị BigInteger. Không tự clamp HP về 0 ở đây.
- Callback HP là bắt buộc tại những điểm gọi đã thấy; lỗi null xảy ra sau thay đổi HP/khiên. Không chữa bằng một callback rỗng hoặc bỏ qua lỗi.
- Client có phép tính và cộng thưởng offline cục bộ trước đồng bộ. Có API không đồng nghĩa mọi quy tắc thưởng ở server. Chi tiết và giới hạn ở `OFFLINE_BOUNDARY.md`.

## Phương pháp và giới hạn

Nguồn `libil2cpp.so` được ghim SHA-256 `e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537`. Mã ASM và manifest giữ token, native VA, tên trường theo metadata gốc.

`tools/native_flow_vm.py` diễn giải tập lệnh ARM64 có giới hạn, không nạp/chạy thư viện game. Lệnh/call/field thiếu đều báo lỗi. Các generator ghi rõ đầu vào mô hình: wrapper đã giải mã, phép toán BigInteger, trạng thái manager/preset, dictionary/boxing, getter tài khoản, RNG draw, Unity UI/callback và downstream lifecycle. Các thân hàm được đi qua trong mô hình này; không phải kiểm chứng Android, Unity, đồ họa hay bản vá IFix live.

Bản dịch UI trả các hiệu ứng theo thứ tự để host áp dụng. Localization giữ đầu vào số; chưa giả lập hệ thống chữ/font Unity. Death, WaterReflect, nhiều nguồn buff và getter tài khoản vẫn là phụ thuộc phải khôi phục tiếp.

Danh mục tĩnh `logic-inventory/` chứa 65.440 bản ghi phương thức Assembly-CSharp, 6.871 kiểu và cạnh gọi nhận diện được. Shared/generic có thể nhiều tên chung địa chỉ; indirect call cần phân tích riêng. **Lập danh mục không đồng nghĩa đã dịch/nghiệm chứng tất cả.**

## Chạy kiểm tra phần đã khôi phục

Từ thư mục giải nén gói:

```bash
node logic-step6/port/verify-native-flow.mjs
node logic-step6/port/verify-database-buffs.mjs
node logic-step6/port/verify-skill-timing.mjs
node logic-step6/port/verify-player-damage.mjs
node logic-step6/port/verify-defense-stats.mjs
```

Tạo lại vector từ thư mục bước 3 có `libil2cpp.so`, `field-map.csv`, `native-type-map.json` và các map tương ứng:

```bash
python3 logic-step6/tools/generate_flow_vectors.py --source reproduced-step3 --out logic-step6
python3 logic-step6/tools/generate_db_flow_vectors.py --source reproduced-step3 --out logic-step6
python3 logic-step6/tools/generate_timing_vectors.py --source reproduced-step3 --out logic-step6
python3 logic-step6/tools/generate_player_damage_vectors.py --source reproduced-step3 --out logic-step6
python3 logic-step6/tools/generate_defense_vectors.py --source reproduced-step3 --out logic-step6
```

Cần Python 3 và thư viện/LLVM tương ứng với bộ công cụ giải mã bước 3; Node.js có BigInt để chạy module. Không tải asset hoặc phụ thuộc từ dịch vụ game khi kiểm tra các fixture có sẵn.

## Còn lại

EnemyBase.GetDmg đầy đủ; tốc độ đánh/AI/spawn; death/reflect; tạo và cập nhật buff; wish, nâng cấp/trang bị; thưởng/rơi đồ/tiến trình; khởi tạo/lưu offline; toàn bộ ánh xạ asset Unity; ghép H5, tương tác mobile/desktop và host riêng tư. Dữ liệu và chương trình nằm ngoài XAPK cần phân biệt với mã client chỉ chưa đọc hết; xem `OFFLINE_BOUNDARY.md`.
