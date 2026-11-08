# Slayer Legend — Bước 19 (checkpoint kiểm chứng)

Bộ tài liệu gồm báo cáo, bảng nối Monster ID -> sprite gốc, danh mục Sprite của bundle `monster` và `map`, bảng Stage + Monster của checkpoint, các đoạn ARM64 minh chứng và mã Python kiểm chứng lại.

**Không có PNG trong gói**, vì dữ liệu ở bước này là metadata/PathID của Sprite gốc. Không tự tạo hay đổi asset.

Chạy lại (Python 3; gói monster/map trong XAPK này sử dụng nén LZMA, không cần thư viện ngoài):

```bash
python scripts/verify_step19.py "Slayer+Legend+_+Idle+RPG_700.0.4_APKPure(1).xapk" "tables/Stage_3000_Dong_Original.csv" "tables/MonsterInfoBaseData_Original.json" "libil2cpp.so" "output"
```

Nếu chưa có `libil2cpp.so` đã tách, có thể bỏ tham số này bằng dấu `-` để chỉ kiểm định asset và bảng. Bản chính xác của `libil2cpp.so` thuộc file XAPK cùng bản, không lấy từ phiên bản game khác.

Các tệp:
- `BAO_CAO_BUOC19.md`: phương pháp, bằng chứng, giới hạn, bước tiếp.
- `tables/MonsterID_SpritePathID.csv`: 952 ID + tổng frame và PathID frame đầu, đánh dấu thiếu.
- `tables/Stage_Monster_Sprite_Links.csv`: 3.900 vị trí tham chiếu Monster ID khác 0 của 3.000 Stage.
- `tables/MonsterSprites_15987.json`, `tables/MapSprites_1356.json`: tên + PathID đọc từ UnityFS gốc.
- `tables/MapSprite_Layer_Index.csv`: tên layer và PathID, không gán Map ID khi chưa có chứng cứ.
- `tables/verification_step19.json`: kết quả kiểm tra có thể tái lập.
- `evidence/*.asm`: các đoạn disassembly đã sử dụng.
- `scripts/*.py`: mã chỉ đọc, không chỉnh sửa APK.

Không dùng bản này làm bằng chứng đã port H5, chơi offline hoàn chỉnh, hoặc đã tái hiện đúng nội dung chạy trên server/IFix.
