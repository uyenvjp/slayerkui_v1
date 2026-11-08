# SLAYER LEGEND 700.0.4 — TIẾP TỤC PHÂN TÍCH BẢNG STAGE

**Ngày kiểm tra:** 2026-11-03  
**Nguồn:** Gói checkpoint `Slayer_Legend_Phan_Tich_Lien_Tuc.zip` đã lưu từ dự án XAPK Slayer Legend 700.0.4. Gói chứa dữ liệu bảng nhị phân MemoryPack đã giải mã, schema trích từ IL2CPP, bản JSON đọc trước và các báo cáo hash. **Lượt này kiểm tra lại độc lập ở cấp hàng và trường bằng parser mới trên dữ liệu nhị phân trong checkpoint; chưa chạy lại bước trích xuất từ XAPK nén nguyên bản và chưa chạy game Android.**

## Kết quả mới

- Đọc lại **3.000/3.000 bản ghi** từ 3 tệp binary `StageInfoBaseData.bin`, `StageInfoBase1000Data.bin`, `StageInfoBase2000Data.bin`, mỗi bảng 1.000 bản ghi, có ID tuần tự `0...2999`.
- Tất cả dữ liệu đọc lại **trùng 100% ở cấp trường và giá trị** với JSON đã lưu trong checkpoint; không có byte cuối thừa trong ba tệp nhị phân.
- SHA-256 của cả ba tệp binary và JSON cũng khớp bảng kiểm chứng chứa trong checkpoint.
- Trường `Hp`, `BossHp`, `BossAtk`, `Gold`, `GoldAuto` là số lớn lưu dưới dạng decimal string đã được gán qua `*Serialized`; giữ là chuỗi, không ép qua JS Number.

### Dữ liệu Stage đầu trò chơi (giá trị lưu ở bảng)

| Trường | ID 0 | ID 1 | ID 20 |
|---|---|---|---|
| StageName key | STAGE_NAME_000 | STAGE_NAME_001 | STAGE_NAME_020 |
| MainNumber | 0 | 0 | 1 |
| SubNumber | 0 | 1 | 0 |
| Hp | 8 | 30 | 16347 |
| BossHp | 40 | 300 | 326940 |
| BossAtk | 1 | 1 | 175 |
| Gold | 14 | 20 | 1103 |
| Exp | 15 | 16 | 46 |
| Monster IDs | [6,6,0] | [1,6,0] | [53,53,0] |
| MonsterCount | 1 | 4 | 8 |
| Map ID | 0 | 0 | 2 |
| GoldAuto | 14 | 20 | 19854 |
| ExpAuto | 15 | 16 | 630 |

**Chú ý quan trọng:** `MainNumber=1, SubNumber=0` nằm ở **ID 20**, không phải ID 0. Các trường này là nội dung hàng bảng. Chưa xác minh được game hiển thị/tải ID 0, ID 1 hay ID 20 ở tài khoản mới; không nhầm ID bảng với tên màn chơi người chơi nhìn thấy. `EquipmentProb` và `StoneProb` là float bảng nguồn, chưa chứng minh công thức xác suất rơi đồ runtime.

## Đầu mối IL2CPP để giải tiếp nhân vật ban đầu

Những địa chỉ sau là **native VA trong map mã IL2CPP của checkpoint**, không phải địa chỉ tuyệt đối khi Android nạp thư viện:

| Method | Native VA |
|---|---|
| `PlayerInGameDisplay.InitPlayer_MySkin` | `0x535214c` |
| `PlayerInGameDisplay.InitPlayer_MySkin_ExceptWeapon` | `0x5352554` |
| `PlayerInGameDisplay.WeaponDisplay_Default` | `0x5355744` |
| `SkinManager.GetMyOriginalSkinData` | `0x535ecc4` |
| `SkinManager.CostumeSetting_Default` | `0x535f364` |
| `SkinManager.Skin_Apply` | `0x535e1ac` |
| `PlayerBase.WeaponDisplay_Default` | `0x4eeb7fc` |
| `StageManager.SelectStage` | `0x53a2688` |
| `StageManager.PanelCurrentStageSetting` | `0x53a116c` |

**Chưa giải mã, thực thi hoặc xác minh thân hàm của các method trên trong lượt kiểm tra này.** Các tên là mốc điều tra tiếp theo; không phải bằng chứng game dùng sprite nào mặc định.

## Kết luận và giới hạn

1. Báo cáo giai đoạn 6 ghi "chưa có Stage 1 thực" là đúng ở thời điểm báo cáo đó, nhưng **checkpoint phân tích logic đầy đủ lưu riêng đã có các bảng stage**; lượt này xác minh lại toàn bộ ba bảng từ nhị phân checkpoint.
2. Đây là bước tiến về **dữ liệu Stage**, không phải phục hồi vòng chơi hoặc xác nhận spawn/HP thực trong runtime.
3. Chưa xác định Slayer khởi tạo với `skin_*` và `sword_*` nào; các sprite ở `OtherPlayers`, `PlayerNpc`, `BeastSkillGolem` không đủ chứng minh ngoại hình mặc định.
4. Tiếp theo cần lần theo code `SkinManager.GetMyOriginalSkinData` → `PlayerInGameDisplay.InitPlayer_MySkin` và logic `StageManager.SelectStage`/dữ liệu tài khoản; đối chiếu bằng chứng runtime khi khả thi.
5. Không tạo hay sử dụng hình vẽ/asset thay thế. Không triển khai bản H5 mới và không gọi dịch vụ game ở lượt này.

## Bàn giao

- `Slayer_Legend_Stage_3000_Dong_Verified.csv` — 3.000 bản ghi với 23 trường quan trọng.
- `Slayer_Stage_Verification.json` — kết quả hash và kiểm chứng nhị phân.
- `slayer_verify_stage.py` — script chỉ đọc; chạy với ZIP checkpoint có dữ liệu.

Lệnh chạy lại:

```bash
python slayer_verify_stage.py Slayer_Legend_Phan_Tich_Lien_Tuc.zip output
```
