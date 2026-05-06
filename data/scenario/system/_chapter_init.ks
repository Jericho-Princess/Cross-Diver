;==================================================
; system/_chapter_init.ks
; チャプター共通初期化ファイル
; 各チャプター冒頭で呼び出す
;==================================================


;==================================================
; 名前欄表示マクロ
;==================================================

[macro name="speaker"]

; 前の名前表示を消す
[free layer="message0" page="fore" name="speaker_name"]

; 名前を表示
[ptext layer="message0" page="fore" name="speaker_name" x="70" y="445" width="360" align="center" size="28" bold="true" color="%color|0xffffff" edge="3px 0x000000" text="%name" overwrite="true"]

[endmacro]


;==================================================
; キャラ別 名前欄ショートカット + フォーカス統合版
;==================================================

[macro name="name_you"]
[focus_you]
[speaker name="あなた" color="0xFFFFFF"]
[endmacro]

[macro name="name_system"]
[focus_none]
[speaker name="システム" color="0xAAAAAA"]
[endmacro]

[macro name="name_tuan"]
[focus_tuan]
[speaker name="トゥアン" color="0xAEEBFF"]
[endmacro]

[macro name="name_council"]
[focus_none]
[speaker name="世界福音最高議会" color="0xFFD27A"]
[endmacro]

[macro name="name_unknown"]
[focus_none]
[speaker name="？？？" color="0xFFD27A"]
[endmacro]

[macro name="name_kotani"]
[focus_kotani]
[speaker name="コタニ" color="0xFFE680"]
[endmacro]

[macro name="name_someone"]
[speaker name="？？？" color="0x4B0082"]
[focus_none]
[endmacro]

[macro name="name_dream"]
[speaker name="？？？" color="0x696969"]
[focus_none]
[endmacro]

[macro name="name_rina"]
[focus_rina]
[speaker name="リナ" color="0xD8B7FF"]
[endmacro]

[macro name="name_bible"]
[focus_none]
[speaker name="聖書" color="0xFFD27A"]
[endmacro]

[macro name="name_jesus"]
[focus_none]
[speaker name="？？？" color="0xFFD27A"]
[endmacro]

[macro name="name_dfish"]
[focus_fish]
[speaker name="魚の悪霊" color="0x00ff00"]
[endmacro]

[macro name="name_clear"]
[focus_none]
[free layer="message0" page="fore" name="speaker_name"]
[endmacro]


;==================================================
; ステータスボタン表示
; 右上に常時表示する
;==================================================

[macro name="show_status_button"]

[button name="status_btn" role="sleepgame" fix="true" graphic="status_btn.png" x="1207" y="25" storage="status.ks" target="*status_start"]

[endmacro]


;==================================================
; ステータスボタン削除
; 必要な場面だけ消したい時用
;==================================================

[macro name="hide_status_button"]

[freeimage layer="fix" name="status_btn"]

[endmacro]


;==================================================
; 話者フォーカス
;==================================================

[macro name="focus_you"]
; 主人公は立ち絵がない想定なので、全員少し暗め
[filter layer="0" name="コタニ" brightness="50"]
[filter layer="0" name="リナ" brightness="50"]
[filter layer="0" name="トゥアン" brightness="50"]
[filter layer="0" name="魚の悪霊" brightness="50"]
[endmacro]

[macro name="focus_tuan"]
[filter layer="0" name="トゥアン" brightness="100"]
[endmacro]

[macro name="focus_kotani"]
[filter layer="0" name="コタニ" brightness="100"]
[filter layer="0" name="リナ" brightness="50"]
[endmacro]

[macro name="focus_rina"]
[filter layer="0" name="コタニ" brightness="50"]
[filter layer="0" name="リナ" brightness="100"]
[endmacro]

[macro name="focus_all"]
[filter layer="0" name="コタニ" brightness="100"]
[filter layer="0" name="リナ" brightness="100"]
[endmacro]

[macro name="focus_fish"]
[filter layer="0" name="魚の悪霊" brightness="100"]
[endmacro]

[macro name="focus_none"]
[filter layer="0" name="コタニ" brightness="75"]
[filter layer="0" name="リナ" brightness="75"]
[filter layer="0" name="魚の悪霊" brightness="75"]
[endmacro]


;==================================================
; 画面整理用
; キャラ・メッセージ・名前欄を一度きれいにする
;==================================================

[macro name="scene_clear"]

[name_clear]
[tb_hide_message_window]
[chara_hide_all time="500"]

[endmacro]


;==================================================
; 場所タイトル表示
; 使用例：
; [place_title text="モール"]
;==================================================

[macro name="place_title"]

; メッセージ・名前欄を消す
[tb_hide_message_window]
[name_clear]

; 表示中のキャラを全員消す
[chara_hide_all time="500"]

; 黒背景へ
[bg time="1000" method="crossfade" storage="黒スクリーン.png"]
[wait time="500"]

; 文字数からだいたい中央になるx座標を計算
[iscript]
tf.place_title_text = mp.text;
tf.place_title_x = 640 - (tf.place_title_text.length * 50);
[endscript]

; 地名をじんわり表示
[tb_ptext_show x="&tf.place_title_x" y="275" size="100" color="0xffffff" time="1500" text="%text" anim="false" face="serif,'游明朝'" edge="undefined" shadow="undefined"]

[wait time="500"]

[endmacro]


;==================================================
; 場所タイトルを消して背景表示
; 使用例：
; [place_bg storage="モールのカフェ.png"]
;==================================================

[macro name="place_bg"]

[bg time="1000" method="crossfade" storage="%storage"]

[tb_ptext_hide time="3000"]

[tb_show_message_window]

[endmacro]

;==================================================
; ダイブ用 精神力ゲージ表示
;==================================================

[macro name="show_dive_gauge"]

[layopt layer="2" visible="true"]

; いったん全部消す
[freeimage layer="2" page="fore" name="dive_gauge_fill"]
[freeimage layer="2" page="fore" name="dive_gauge_frame"]

; ゲージを描画
[update_dive_gauge]

[endmacro]


;==================================================
; ダイブ用 精神力ゲージ更新
; f.mental と同期版
;==================================================

[macro name="update_dive_gauge"]

; 毎回、fillとframeを消して描き直す
[freeimage layer="2" page="fore" name="dive_gauge_fill"]
[freeimage layer="2" page="fore" name="dive_gauge_frame"]

; 最大高さ250pxとして計算
[iscript]
tf.dive_gauge_max_h = 250;

if (typeof f.mental_max === "undefined" || isNaN(f.mental_max) || f.mental_max <= 0) {
  f.mental_max = 100;
}

if (typeof f.mental === "undefined" || isNaN(f.mental)) {
  f.mental = f.mental_max;
}

if (f.mental < 0) {
  f.mental = 0;
}

if (f.mental > f.mental_max) {
  f.mental = f.mental_max;
}

tf.dive_gauge_rate = f.mental / f.mental_max;
tf.dive_gauge_h = Math.floor(tf.dive_gauge_max_h * tf.dive_gauge_rate);
tf.dive_gauge_y = 155 + (tf.dive_gauge_max_h - tf.dive_gauge_h);
[endscript]

; 残量がある時だけfillを表示
[if exp="tf.dive_gauge_h > 0"]
[image layer="2" page="fore" storage="default/dive_bar_fill.png" x="30" y="&tf.dive_gauge_y" width="25" height="&tf.dive_gauge_h" name="dive_gauge_fill"]
[endif]

; 最後に外枠を重ねる
[image layer="2" page="fore" storage="default/dive_bar_frame.png" x="-20" y="100" width="120" height="350" name="dive_gauge_frame"]

[endmacro]


;==================================================
; ダイブ用 精神力ゲージ削除
;==================================================

[macro name="hide_dive_gauge"]

[freeimage layer="2" page="fore" name="dive_gauge_fill"]
[freeimage layer="2" page="fore" name="dive_gauge_frame"]

[endmacro]

;==================================================
; ダメージフラッシュ表示
; 鼓動に合わせて赤い靄をじんわり表示
;==================================================

[macro name="damage_flash"]

; 前のフラッシュを消す
[freeimage layer="2" page="fore" name="damage_flash_img"]

; 赤い外周画像をじんわり表示
[image layer="2" page="fore" storage="default/damage_flash.png" x="0" y="0" width="1280" height="720" name="damage_flash_img" time="500" wait="true"]

; いったん少し見せる
[wait time="150"]

; 少し弱まる
[anim layer="2" name="damage_flash_img" opacity="60" time="400"]
[wa]

; 2拍目：もう一度少し赤くなる
[anim layer="2" name="damage_flash_img" opacity="150" time="500"]
[wa]

; じんわり消える
[anim layer="2" name="damage_flash_img" opacity="0" time="900"]
[wa]

; 消す
[freeimage layer="2" page="fore" name="damage_flash_img"]

[endmacro]


;==================================================
; 精神ダメージ処理
; 使用例：[mental_damage value="4"]
;==================================================

[macro name="mental_damage"]

[playse volume="100" time="0" buf="1" storage="心臓の鼓動.mp3"]

[eval exp="f.mental -= parseInt(mp.value)"]

[damage_flash]

[update_dive_gauge]

[if exp="f.mental <= 0"]
[jump storage="gameover.ks" target="*gameover_start"]
[endif]

[endmacro]


;==================================================
; 知性による外れ選択肢ヒント色
; f.knowledge >= 55 の時だけ外れ選択肢を青くする
;==================================================

[macro name="set_bad_choice_color"]

[iscript]
tf.bad_choice_color = "black";

if (typeof f.knowledge !== "undefined" && Number(f.knowledge) >= 55) {
    tf.bad_choice_color = "blue";
}
[endscript]

[endmacro]


;==================================================
; ニューゲーム用 ステータス完全初期化
; 最初から始める時だけ呼ぶ
;==================================================

[macro name="new_game_init"]

[eval exp="f.mental_max = 100"]
[eval exp="f.mental = 100"]

[eval exp="f.faith = 50"]
[eval exp="f.empathy = 50"]
[eval exp="f.knowledge = 50"]
[eval exp="f.passion = 50"]
[eval exp="f.spiritual = 25"]
[eval exp="f.occult = 0"]

[eval exp="f.rina_heart = 0"]

; 選択済みフラグ系もここで戻す
[eval exp="f.shop_loop = 0"]
[eval exp="f.shop_crepe_done = 0"]
[eval exp="f.shop_art_done = 0"]
[eval exp="f.shop_electric_done = 0"]

; 戦闘系
[eval exp="f.demon_fish = 100"]
[eval exp="f.tenuma_turn = 0"]

[endmacro]


;==================================================
; 共通初期処理
; チャプター開始時に毎回やる処理
;==================================================

[name_clear]
[show_status_button]

;==================================================
; ここまで
;==================================================