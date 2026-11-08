# Màn mở đầu và nhân vật chính của Slayer Legend 700.0.4

Bản XAPK 700.0.4 chứa hai lựa chọn tạo nhân vật chính. Nút nam truyền CharacterId 0 và nút nữ truyền CharacterId 1. Archer, Warrior, Ninja và Mage thuộc hệ thống đồng hành riêng theo bảng `FriendClassBaseData`.

| Hệ thống | Chỉ số và dữ liệu gốc |
| --- | --- |
| Nhân vật chính | 0 nam, 1 nữ. Đọc từ binding nút trong `level0` rồi đối chiếu `SignManager.SelectedCharacterNumber` và `SignUpV2Request.characterId_`. |
| Archer | FriendIndex 0. Khóa `FRIEND_ARCHER_*`. |
| Warrior | FriendIndex 1. Khóa `FRIEND_WARRIOR_*`. |
| Ninja | FriendIndex 2. Khóa `FRIEND_NINJA_*`. |
| Mage | FriendIndex 3. Khóa `FRIEND_MAGE_*`. |

Chỉ số nhân vật chính và FriendIndex là hai tập dữ liệu độc lập. Tên thư mục xuất `hero` có thể chứa sprite đồng hành. Chọn asset dựa trên tham chiếu của object trong cảnh và bảng gốc.

## Ba cảnh và cách vào game

BuildSettings trong `globalgamemanagers` cho thứ tự dưới đây. Mỗi object được lần theo PPtr của Unity về MonoScript hoặc AnimatorController gốc.

| Build index | Cảnh | Dấu vết trong XAPK |
| --- | --- | --- |
| 0 | `SignIn.unity` | SignManager ở object 37. ProloguePanel ở object 26 có PrologueManager. Các nút tạo nhân vật, xem và bỏ qua được nối bằng serialized event. |
| 1 | `GearMain_RPG.unity` | Player ở object 6416 có PlayerBase pathID 132796. Animator pathID 46712 tham chiếu override controller `Animator_Players_Costume`. GameManager và TutorialManager nằm cùng cảnh. |
| 2 | `startscene.unity` | OpeningManager pathID 1231 trỏ tới Player pathID 61 và animator 485. Controller `sharedassets2.assets#9` có tên `startscenePlayer`. |

Cảnh tạo nhân vật đặt `SelectedCharacterNumber = -1` khi mở giao diện. Nút xác nhận đi vào báo chọn nhân vật nếu trường này vẫn bằng -1. Với lựa chọn hợp lệ, `MakeCharacter` đưa giá trị vào `SignUpV2Request.characterId_` tại +56. Một nhánh phản hồi thành công gọi `UserInfoLoad.Load`. Dữ liệu chọn nhân vật đến từ hồ sơ đã nạp khi intro đọc `DatabaseManager.CharacterNumber`.

- `Btn_Watch` nối với `Button_EnterPrologue`. Callback tương ứng chuyển tới `startscene`.
- `Btn_Skip` nối với `Button_EnterGameScene`. Callback tương ứng chuyển tới `GearMain_RPG`.
- `SignManager.EnterGameScene` cũng có nhánh đọc `isNewbie` ở +352. Khi true chọn `sceneName_Start`, khi false chọn `sceneName_Main`.
- `EffectManager.SceneChange_Coroutine` gọi `SceneManager.LoadScene` bằng tên scene đã nhận. Tên `startscene` và `GearMain_RPG` được xác nhận từ literal và chỗ gán trong `UsefulManager..cctor`.
- `PrologueManager` ở cảnh SignIn và `OpeningManager` ở cảnh startscene là hai component riêng. Cần giữ ranh giới giữa panel ở SignIn và cảnh hội thoại mở đầu.

## Chuỗi hội thoại trong startscene

1. `OpeningManager.Start` lấy Rigidbody2D và Animator của Player, bật BlackPanel và bắt đầu chờ. Nó đọc CharacterNumber từ DatabaseManager và đặt tham số animator `state` thành 1 nếu ID 0, thành 10 nếu ID khác 0.
2. `delay_Opening` chờ 1 giây, gọi `OpeningStart`, rồi mở story type 0, index 0. Bảng `DialogueStoryBaseData` xác nhận `Tutorial0` dùng dòng 0–3.
3. Callback `OpeningDialogue` phát trigger `Off` cho BlackPanel. Sau 1 giây, tắt panel rồi gọi `DialogueStart`. Story `Tutorial1` dùng dòng 10–12 và có hai lựa chọn. Các dòng 11–12 dùng icon `Tutor`. Hai lựa chọn này đi tiếp câu chuyện.
4. Lựa chọn trái gọi `Tutorial2`, dòng 20–21. Callback cuối đặt `state` thành 3 hoặc 30 theo CharacterNumber và mở bộ chờ 2 giây.
5. Lựa chọn phải gọi `Tutorial3`, dòng 30. Thân hàm đặt `state` thành 2 hoặc 20, đặt vận tốc Rigidbody2D theo vector trái nhân `0.3f` và mở bộ chờ 3 giây. Callback cuối hội thoại của nhánh phải có thân `ret`.
6. Sau bộ chờ 2 hoặc 3 giây, `delay_GameStart` reset DialogueManager rồi gọi hiệu ứng chuyển cảnh tới `GearMain_RPG`.

Bảng hội thoại cung cấp khóa bản địa hóa. Nội dung hiện trên màn hình và thứ tự phát các frame còn cần kiểm tra cùng tài nguyên locale và animation gốc. Giá trị giây ở đây lấy từ lệnh ARM64, không suy ra bằng cách bấm giờ video.

## Sprite chính xác mà intro tham chiếu

| Clip gốc | ID clip trong sharedassets2.assets | Tập sprite tham chiếu |
| --- | ---: | --- |
| `startscenePlayer` | 4 | `slayer_01_12`, `slayer_01_13` |
| `OpeningPlayer_walk` | 2 | `slayer_01_6` đến `slayer_01_11` |
| `startscenePlayer_Death` | 5 | `slayer_01_16`, `slayer_01_17` |
| `startscenePlayer_Idle_W` | 7 | `slayer_02_12`, `slayer_02_13` |
| `OpeningPlayer_walk_W` | 3 | `slayer_02_6` đến `slayer_02_11` |
| `startscenePlayer_Death_W` | 6 | `slayer_02_16`, `slayer_02_17` |

`opening-scene-evidence.json` giữ tên file Unity và pathID của từng sprite. Bộ đi và ngã của `slayer_01` nằm trong `4cb69c1459b34924b9a2786f51bda66b`. Các clip `_W` tương ứng dùng `440029e9a1e468e44ae898bcdb22dba3`. Hai clip idle trỏ tới các sprite trong `sharedassets0.assets`. Đây là binding gốc trong AnimationClip. Lịch phát từng frame còn cần giải mã.

Trong `GearMain_RPG`, PlayerBase có luồng `SkinSetting` gọi `AssetManager.GetSkinSprites`. Animator_Players_Costume là controller gắn sẵn trên object của cảnh. Bộ ảnh runtime còn tùy CharacterNumber và skin của hồ sơ. Cần xác minh bộ render mặc định trong chiến đấu và giá trị StageCurrent đầu tiên. `Stage_Init` tra StageInfo từ StageCurrent đã nạp, nên hàng bảng có ID 0 chưa đủ để kết luận tài khoản mới luôn bắt đầu ở đó.

## Bằng chứng và giới hạn

Nguồn đã đối chiếu là file XAPK người dùng cung cấp, các bảng gốc và metadata/ELF đã giải mã của cùng build. Tra cứu YouTube và web không trả được nguồn xem được trong lượt này. Chưa dùng video để kết luận hình ảnh hay thứ tự ở runtime.

`opening-flow-evidence.json` xác minh 26 opcode, 16 nhánh gọi, 13 offset, 4 literal, 5 callback, 5 binding nút và 6 clip intro. `opening-scene-evidence.json` lưu đối tượng và đường dẫn tài nguyên. Đây là phân tích tĩnh. Mốc tiếp theo là trích đúng ảnh/texture từ các PPtr đã xác minh, giải mã timing gốc, rồi nối dữ liệu hồ sơ với màn đầu tiên.

Tạo lại báo cáo từ thư mục `slayer-work` với Python 3.11 trở lên.

```bash
python3 logic-step15/tools/read_opening_scene.py /path/to/original.xapk --out logic-step15/opening-scene-evidence.json
python3 logic-step15/tools/verify_opening_flow.py --source reproduced-step3 --out logic-step15
```
