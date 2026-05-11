[_tb_system_call storage=system/_status.ks]

*status_start

[eval exp="f.status_open = 1"]

[jump storage="status.ks" target="*status_wait"]


*status_wait

[layopt layer="1" visible="true"]

;==================================================
; 毎回、ステータス画面一式を作り直す
;==================================================

[freeimage layer="1" page="fore" name="status_click_blocker_left"]
[freeimage layer="1" page="fore" name="status_exit_btn"]
[freeimage layer="1" page="fore" name="status_frame"]

; tb_image_show の自動名対策
[freeimage layer="1" name="img_1"]
[freeimage layer="1" name="img_11"]

[free layer="1" page="fore" name="status_title"]
[free layer="1" page="fore" name="status_01"]
[free layer="1" page="fore" name="status_02"]
[free layer="1" page="fore" name="status_03"]
[free layer="1" page="fore" name="status_04"]
[free layer="1" page="fore" name="status_05"]
[free layer="1" page="fore" name="status_06"]
[free layer="1" page="fore" name="status_07"]

;==================================================
; 1. 背後クリック防止を先に置く
;==================================================

[button layer="1" page="fore" name="status_click_blocker_left" graphic="default/click_block.png" x="0" y="0" width="873" height="720" target="*status_wait" storage="status.ks"]

;==================================================
; 2. その上にステータス枠を表示
;==================================================

[tb_image_show time="0" storage="default/ステータス枠.png" width="476" height="633" x="873" y="-86" _clickable_img="name"]

[ptext layer="1" page="fore" x="1030" y="85" size="32" color="white" text="ステータス" name="status_title"]

[ptext layer="1" page="fore" x="1050" y="150" size="26" color="white" text="&'精神：' + f.mental" name="status_01"]
[ptext layer="1" page="fore" x="1050" y="180" size="26" color="white" text="&'堅信：' + f.faith" name="status_02"]
[ptext layer="1" page="fore" x="1050" y="210" size="26" color="white" text="&'共感：' + f.empathy" name="status_03"]
[ptext layer="1" page="fore" x="1050" y="240" size="26" color="white" text="&'知性：' + f.knowledge" name="status_04"]
[ptext layer="1" page="fore" x="1050" y="270" size="26" color="white" text="&'情熱：' + f.passion" name="status_05"]
[ptext layer="1" page="fore" x="1050" y="300" size="26" color="white" text="&'霊感：' + f.spiritual" name="status_06"]
[ptext layer="1" page="fore" x="1050" y="330" size="26" color="white" text="&'禁忌：' + f.occult" name="status_07"]

;==================================================
; 3. 閉じるボタンは最後
;==================================================

[button layer="1" page="fore" name="status_exit_btn" graphic="status_exit.png" x="1073" y="385" target="*status_close" storage="status.ks" height="75" _clickable_img="name"]

[s]


*status_close

[eval exp="f.status_open = 0"]

[freeimage layer="1" page="fore" name="status_click_blocker_left"]
[freeimage layer="1" page="fore" name="status_exit_btn"]
[freeimage layer="1" page="fore" name="status_frame"]

; tb_image_show の自動名対策
[freeimage layer="1" name="img_1"]
[freeimage layer="1" name="img_11"]

[free layer="1" page="fore" name="status_title"]
[free layer="1" page="fore" name="status_01"]
[free layer="1" page="fore" name="status_02"]
[free layer="1" page="fore" name="status_03"]
[free layer="1" page="fore" name="status_04"]
[free layer="1" page="fore" name="status_05"]
[free layer="1" page="fore" name="status_06"]
[free layer="1" page="fore" name="status_07"]

[layopt layer="1" visible="false"]

[awakegame]

[s]