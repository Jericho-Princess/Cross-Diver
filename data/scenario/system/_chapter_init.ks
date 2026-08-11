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

[macro name="name_instructor"]
[focus_instructor]
[speaker name="インストラクター" color="0xFFB6C1"]
[endmacro]

[macro name="name_flyer"]
[focus_flyer]
[speaker name="チラシ配りの女性" color="0xFFB6C1"]
[endmacro]

[macro name="name_watari"]
[focus_watari]
[speaker name="ワタリ" color="0xF4A460"]
[endmacro]

[macro name="name_roots"]
[focus_none]
[speaker name="ROOTS" color="0xFFFFFF"]
[endmacro]

[macro name="name_noda"]
[focus_noda]
[speaker name="ノダ" color="0xFFA500"]
[endmacro]

[macro name="name_hanafusa"]
[focus_hanafusa]
[speaker name="ハナフサ" color="0x4169E1"]
[endmacro]

[macro name="name_dhunter"]
[focus_dhunter]
[speaker name="狩人の悪霊" color="0x00ff00"]
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
[filter layer="0" name="ワタリ" brightness="50"]
[filter layer="0" name="ノダ" brightness="50"]
[filter layer="0" name="チラシ配りの女性" brightness="50"]
[filter layer="0" name="ハナフサ" brightness="50"]
[filter layer="0" name="狩人の悪霊" brightness="50"]
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

[macro name="focus_watari"]
[filter layer="0" name="ワタリ" brightness="100"]
[endmacro]

[macro name="focus_instructor"]
[filter layer="0" name="インストラクター" brightness="100"]
[endmacro]

[macro name="focus_flyer"]
[filter layer="0" name="チラシ配りの女性" brightness="100"]
[endmacro]

[macro name="focus_noda"]
[filter layer="0" name="ノダ" brightness="100"]
[filter layer="0" name="ハナフサ" brightness="50"]
[endmacro]

[macro name="focus_hanafusa"]
[filter layer="0" name="ハナフサ" brightness="100"]
[filter layer="0" name="ノダ" brightness="50"]
[endmacro]

[macro name="focus_dhunter"]
[filter layer="0" name="狩人の悪霊" brightness="100"]
[endmacro]

[macro name="focus_none"]
[filter layer="0" name="コタニ" brightness="75"]
[filter layer="0" name="リナ" brightness="75"]
[filter layer="0" name="魚の悪霊" brightness="75"]
[filter layer="0" name="ノダ" brightness="75"]
[filter layer="0" name="ハナフサ" brightness="75"]
[filter layer="0" name="狩人の悪霊" brightness="75"]
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
[bg time="1000" method="crossfade" storage="black-screen.png"]
[wait time="500"]

; /n, \n, [r] を場所タイトル用の改行として扱う
[iscript]
tf.place_title_text = String(mp.text || "");
tf.place_title_text = tf.place_title_text.replace(/\\n/g, "\n").replace(/\/n/g, "\n").replace(/\[r\]/g, "\n");
tf.place_title_lines = tf.place_title_text.split("\n");

tf.place_title_line1 = tf.place_title_lines[0] || "";
tf.place_title_line2 = tf.place_title_lines.slice(1).join(" ");

tf.place_title_has_line2 = (tf.place_title_line2.length > 0) ? 1 : 0;

tf.place_title_x1_single = Math.max(40, 640 - (tf.place_title_line1.length * 50));
tf.place_title_x1_double = Math.max(60, 640 - (tf.place_title_line1.length * 36));
tf.place_title_x2_double = Math.max(60, 640 - (tf.place_title_line2.length * 30));
[endscript]

; 地名をじんわり表示。2行指定時だけ文字サイズと位置を調整する。
[if exp="tf.place_title_has_line2 == 1"]
[tb_ptext_show x="&tf.place_title_x1_double" y="230" size="72" color="0xffffff" time="1500" text="&tf.place_title_line1" anim="false" face="serif,'游明朝'" edge="undefined" shadow="undefined"]
[tb_ptext_show x="&tf.place_title_x2_double" y="330" size="60" color="0xffffff" time="1500" text="&tf.place_title_line2" anim="false" face="serif,'游明朝'" edge="undefined" shadow="undefined"]
[else]
[tb_ptext_show x="&tf.place_title_x1_single" y="275" size="100" color="0xffffff" time="1500" text="&tf.place_title_line1" anim="false" face="serif,'游明朝'" edge="undefined" shadow="undefined"]
[endif]

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
; 心の開閉通知アイコン
; 右側からスッと出て、少し表示して消える
; layer=5 使用
;==================================================

[macro name="heart_open_notice"]

[iscript]
(function () {
  var base = document.querySelector(".tyrano_base") || document.body;

  var old = document.getElementById("heart_notice_ui");
  if (old && old.parentNode) {
    old.parentNode.removeChild(old);
  }

  var img = document.createElement("img");
  img.id = "heart_notice_ui";
  img.src = "./data/fgimage/default/heart_open.png";

  img.style.position = "absolute";
  img.style.left = "1300px";
  img.style.top = "135px";
  img.style.width = "135px";
  img.style.opacity = "0";
  img.style.zIndex = "999999";
  img.style.pointerEvents = "none";
  img.style.transition = "left 220ms ease-out, opacity 220ms ease-out";

  base.appendChild(img);

  setTimeout(function () {
    img.style.left = "1110px";
    img.style.opacity = "1";
  }, 20);

  setTimeout(function () {
    img.style.transition = "left 300ms ease-in, opacity 300ms ease-in";
    img.style.left = "1165px";
    img.style.opacity = "0";
  }, 3220);

  setTimeout(function () {
    if (img && img.parentNode) {
      img.parentNode.removeChild(img);
    }
  }, 3550);
})();
[endscript]

[endmacro]

[macro name="heart_close_notice"]

[iscript]
(function () {
  var base = document.querySelector(".tyrano_base") || document.body;

  var old = document.getElementById("heart_notice_ui");
  if (old && old.parentNode) {
    old.parentNode.removeChild(old);
  }

  var img = document.createElement("img");
  img.id = "heart_notice_ui";
  img.src = "./data/fgimage/default/heart_close.png";

  img.style.position = "absolute";
  img.style.left = "1300px";
  img.style.top = "135px";
  img.style.width = "135px";
  img.style.opacity = "0";
  img.style.zIndex = "999999";
  img.style.pointerEvents = "none";
  img.style.transition = "left 220ms ease-out, opacity 220ms ease-out";

  base.appendChild(img);

  setTimeout(function () {
    img.style.left = "1110px";
    img.style.opacity = "1";
  }, 20);

  setTimeout(function () {
    img.style.transition = "left 300ms ease-in, opacity 300ms ease-in";
    img.style.left = "1165px";
    img.style.opacity = "0";
  }, 3220);

  setTimeout(function () {
    if (img && img.parentNode) {
      img.parentNode.removeChild(img);
    }
  }, 3550);
})();
[endscript]

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

[freeimage layer="2" page="fore" name="damage_flash_img"]

[image layer="2" page="fore" storage="default/damage_flash.png" x="0" y="0" width="1280" height="720" name="damage_flash_img" time="500" wait="true"]

[wait time="150"]

[anim layer="2" name="damage_flash_img" opacity="60" time="400"]
[wa]

[anim layer="2" name="damage_flash_img" opacity="150" time="500"]
[wa]

[anim layer="2" name="damage_flash_img" opacity="0" time="900"]
[wa]

[freeimage layer="2" page="fore" name="damage_flash_img"]

[endmacro]


;==================================================
; 精神力低下 overlay
; テスト中：f.mental <= 90
; 本番：f.mental <= 20
;==================================================

[macro name="update_mental_warning"]

[layopt layer="3" visible="true"]


;==================================================
; 精神が一定以下ならoverlayをじんわり表示
;==================================================

[if exp="f.mental <= 20 && f.mental_overlay_active != 1"]

[eval exp="f.mental_overlay_active = 1"]

[freeimage layer="3" page="fore" name="mental_low_overlay"]

; まず画像を配置
[image layer="3" page="fore" storage="default/mental_low_overlay.png" x="0" y="0" width="1280" height="720" name="mental_low_overlay" time="0" wait="false"]

; 即座に透明化
[anim layer="3" name="mental_low_overlay" opacity="0" time="0"]
[wa]

; ここでじんわり表示
[anim layer="3" name="mental_low_overlay" opacity="180" time="1200"]
[wa]

[endif]


;==================================================
; 初回だけ警告セリフ
;==================================================

[if exp="f.mental <= 20 && f.mental_warning_done != 1"]

[eval exp="f.mental_warning_done = 1"]

[name_you]

[tb_start_text mode=1]
（精神の限界が近い…。）[p]
[_tb_end_text]

[endif]


;==================================================
; 精神が回復したらoverlayを消す
;==================================================

[if exp="f.mental > 20 && f.mental_overlay_active == 1"]

[eval exp="f.mental_overlay_active = 0"]

[anim layer="3" name="mental_low_overlay" opacity="0" time="800"]
[wa]

[freeimage layer="3" page="fore" name="mental_low_overlay"]

[endif]

[endmacro]

;==================================================
; 精神力低下 overlay フェードアウト削除
;==================================================

[macro name="hide_mental_warning"]

[eval exp="f.mental_overlay_active = 0"]

[anim layer="3" name="mental_low_overlay" opacity="0" time="1000"]
[wa]

[freeimage layer="3" page="fore" name="mental_low_overlay"]

[endmacro]


;==================================================
; 精神ダメージ処理
; 使用例：[mental_damage value="4"]
;==================================================

[macro name="mental_damage"]

[playse volume="100" time="0" buf="1" storage="心臓の鼓動.mp3"]

[eval exp="f.mental -= parseInt(mp.value)"]

[damage_flash]

[show_dive_gauge]

[update_mental_warning]

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
; ロゴスバトル タイマー開始：バーのみ版
; 使用例：
; [logos_timer_start storage="chapter110.ks" target="*logos1_timeout" duration="10000"]
;==================================================

[macro name="logos_timer_start"]

[logos_timer_stop]

[layopt layer="4" visible="true"]

; 減っていく赤バーを先に表示
[image layer="4" page="fore" storage="default/logos_timer_fill.png" x="340" y="26" width="600" height="18" name="logos_timer_fill" time="0"]

; タイマー枠を最後に表示して最前面にする
[image layer="4" page="fore" storage="default/logos_timer_frame.png" x="290" y="18" width="700" height="34" name="logos_timer_frame" time="0"]

; 10秒かけてバーを0へ
[anim layer="4" name="logos_timer_fill" width="0" time="%duration"]

[iscript]
if (window.logosBattleTimer) {
  clearTimeout(window.logosBattleTimer);
  window.logosBattleTimer = null;
}

window.logosBattleLocked = false;

var duration = parseInt(mp.duration || "10000");

window.logosTimerStorage = mp.storage;
window.logosTimerTarget = mp.target;
window.logosTimerDuration = duration;
window.logosTimerStartTime = Date.now();
window.logosTimerRemaining = duration;
window.logosTimerPaused = false;

window.logosBattleTimer = setTimeout(function(){

  if (!window.logosBattleLocked) {

    window.logosBattleLocked = true;

    TYRANO.kag.ftag.startTag("jump", {
      storage: mp.storage,
      target: mp.target
    });
  }

}, duration);
[endscript]

[endmacro]

;==================================================
; ロゴスバトル タイマー停止：バーのみ版
;==================================================

[macro name="logos_timer_stop"]

[iscript]
window.logosBattleLocked = true;

if (window.logosBattleTimer) {
  clearTimeout(window.logosBattleTimer);
  window.logosBattleTimer = null;
}

window.logosTimerPaused = false;
window.logosTimerRemaining = 0;
window.logosTimerStorage = null;
window.logosTimerTarget = null;
window.logosTimerStartTime = null;
window.logosTimerDuration = null;
[endscript]

[freeimage layer="4" page="fore" name="logos_timer_frame"]
[freeimage layer="4" page="fore" name="logos_timer_fill"]

[endmacro]


;==================================================
; ロゴスバトル タイマー一時停止
; ステータス画面を開いた時に呼ぶ
;==================================================

[macro name="logos_timer_pause"]

[iscript]
if (window.logosBattleTimer && !window.logosBattleLocked) {

  var now = Date.now();

  if (!window.logosTimerStartTime) {
    window.logosTimerStartTime = now;
  }

  if (!window.logosTimerDuration) {
    window.logosTimerDuration = 10000;
  }

  var elapsed = now - window.logosTimerStartTime;
  window.logosTimerRemaining = Math.max(0, window.logosTimerDuration - elapsed);

  clearTimeout(window.logosBattleTimer);
  window.logosBattleTimer = null;

  window.logosTimerPaused = true;
}
[endscript]

[stopanim layer="4" name="logos_timer_fill"]

[endmacro]


[macro name="logos_timer_resume"]

[iscript]
tf.logos_timer_resume = 0;
tf.logos_timer_fill_w = 600;
tf.logos_timer_remaining_time = 0;

if (window.logosTimerPaused === true && window.logosTimerRemaining > 0) {

  tf.logos_timer_resume = 1;

  if (!window.logosTimerDuration) {
    window.logosTimerDuration = 10000;
  }

  tf.logos_timer_fill_w = Math.floor(600 * (window.logosTimerRemaining / window.logosTimerDuration));

  if (tf.logos_timer_fill_w < 1) {
    tf.logos_timer_fill_w = 1;
  }

  tf.logos_timer_remaining_time = Math.floor(window.logosTimerRemaining);
}
[endscript]

[if exp="tf.logos_timer_resume == 1"]

[layopt layer="4" visible="true"]

[stopanim layer="4" name="logos_timer_fill"]

[freeimage layer="4" page="fore" name="logos_timer_frame"]
[freeimage layer="4" page="fore" name="logos_timer_fill"]

; fillを先に表示
[image layer="4" page="fore" storage="default/logos_timer_fill.png" x="340" y="26" width="&tf.logos_timer_fill_w" height="18" name="logos_timer_fill" time="0"]

; frameを後に表示
[image layer="4" page="fore" storage="default/logos_timer_frame.png" x="290" y="18" width="700" height="34" name="logos_timer_frame" time="0"]

; 残り時間でfillを0へ
[anim layer="4" name="logos_timer_fill" width="0" time="&tf.logos_timer_remaining_time"]

[iscript]
window.logosTimerPaused = false;
window.logosTimerStartTime = Date.now();
window.logosTimerDuration = window.logosTimerRemaining;

window.logosBattleTimer = setTimeout(function(){

  if (!window.logosBattleLocked) {

    window.logosBattleLocked = true;

    TYRANO.kag.ftag.startTag("jump", {
      storage: window.logosTimerStorage,
      target: window.logosTimerTarget
    });
  }

}, window.logosTimerRemaining);
[endscript]

[endif]

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

;==================================================
; ROOTS 掲示板専用UI
; 安定版：macro引数を一度 tf へ退避してからDOMへ渡す
;==================================================

[macro name="roots_board_open"]

; macro引数を安全に一時変数へ退避
[eval exp="tf.roots_thread = mp.thread"]

[tb_hide_message_window]
[name_clear]

[iscript]
(function () {
  var tfv = TYRANO.kag.variable.tf;
  var old = document.getElementById("roots_board_ui");
  if (old && old.parentNode) {
    old.parentNode.removeChild(old);
  }

  var oldStyle = document.getElementById("roots_board_style");
  if (oldStyle && oldStyle.parentNode) {
    oldStyle.parentNode.removeChild(oldStyle);
  }

  var style = document.createElement("style");
  style.id = "roots_board_style";
  style.type = "text/css";
  style.textContent =
    "#roots_board_ui{" +
      "position:absolute;" +
      "left:68px;top:128px;" +
      "width:1144px;height:505px;" +
      "box-sizing:border-box;" +
      "z-index:999999;" +
      "overflow:hidden;" +
      "border:2px solid rgba(126,170,166,.75);" +
      "border-radius:12px;" +
      "background:rgba(250,248,241,.96);" +
      "box-shadow:0 8px 24px rgba(40,70,75,.20);" +
      "font-family:'Yu Gothic','Meiryo',sans-serif;" +
      "color:#33413f;" +
      "cursor:pointer;" +
      "touch-action:pan-y;" +
    "}" +
    "#roots_board_ui .roots_board_header{" +
      "height:58px;box-sizing:border-box;padding:0 24px;" +
      "display:flex;align-items:center;justify-content:space-between;" +
      "border-bottom:1px solid rgba(126,170,166,.45);" +
      "background:rgba(224,237,233,.96);" +
    "}" +
    "#roots_board_ui .roots_board_title{" +
      "font-size:25px;font-weight:700;color:#477873;letter-spacing:.04em;" +
    "}" +
    "#roots_board_ui .roots_board_hint{" +
      "font-size:16px;color:#6c817e;" +
    "}" +
    "#roots_board_posts{" +
      "height:447px;box-sizing:border-box;overflow-y:auto;" +
      "padding:20px 26px 44px;" +
    "}" +
    ".roots_post{" +
      "margin:0 0 15px;padding:13px 17px 15px;" +
      "border-left:5px solid #7da8a2;border-radius:7px;" +
      "background:rgba(255,255,255,.94);" +
      "box-shadow:0 2px 7px rgba(60,85,82,.08);" +
    "}" +
    ".roots_post_user{" +
      "margin-bottom:6px;font-size:19px;line-height:1.3;" +
      "font-weight:700;color:#477b76;word-break:break-all;" +
    "}" +
    ".roots_post_body{" +
      "font-size:22px;line-height:1.55;color:#303938;" +
      "white-space:pre-wrap;word-break:break-word;" +
    "}";

  document.getElementsByTagName("head")[0].appendChild(style);

  var board = document.createElement("div");
  board.id = "roots_board_ui";

  var header = document.createElement("div");
  header.className = "roots_board_header";

  var title = document.createElement("div");
  title.className = "roots_board_title";
  title.appendChild(document.createTextNode(tfv.roots_thread || "掲示板チャット"));

  var hint = document.createElement("div");
  hint.className = "roots_board_hint";
  hint.appendChild(document.createTextNode("クリックで次の書き込み"));

  var posts = document.createElement("div");
  posts.id = "roots_board_posts";

  header.appendChild(title);
  header.appendChild(hint);
  board.appendChild(header);
  board.appendChild(posts);

  var base = document.querySelector(".tyrano_base");
  if (!base) {
    base = document.body;
  }
  base.appendChild(board);
})();
[endscript]

[endmacro]


[macro name="roots_post"]

; macro引数を安全に一時変数へ退避
[eval exp="tf.roots_post_user = mp.user"]
[eval exp="tf.roots_post_text = mp.text"]

[iscript]
(function () {
  var tfv = TYRANO.kag.variable.tf;
  var list = document.getElementById("roots_board_posts");

  if (!list) {
    console.log("ROOTS UI: 投稿欄が見つかりません");
    return;
  }

  var post = document.createElement("div");
  post.className = "roots_post";

  var user = document.createElement("div");
  user.className = "roots_post_user";
  user.appendChild(document.createTextNode(tfv.roots_post_user || ""));

  var body = document.createElement("div");
  body.className = "roots_post_body";

  var bodyText = tfv.roots_post_text || "";

  // ROOTS投稿内の簡易改行記号を実改行へ変換。
  // 対応：\n、/n、単独の\、[r]
  bodyText = bodyText.replace(/\\n|\/n|\\/g, "\n");
  bodyText = bodyText.replace(/\[r\]/g, "\n");

  body.appendChild(document.createTextNode(bodyText));

  post.appendChild(user);
  post.appendChild(body);
  list.appendChild(post);

  list.scrollTop = list.scrollHeight;

  var board = document.getElementById("roots_board_ui");
  if (board) {
    if (window.rootsBoardAdvanceHandler) {
      board.removeEventListener("click", window.rootsBoardAdvanceHandler, true);
    }

    window.rootsBoardClickReady = false;
    window.rootsBoardAdvanceHandler = function (event) {
      if (!window.rootsBoardClickReady) {
        return;
      }

      var selectedText = "";
      if (window.getSelection) {
        selectedText = String(window.getSelection());
      }
      if (selectedText.length > 0) {
        return;
      }

      window.rootsBoardClickReady = false;
      board.removeEventListener("click", window.rootsBoardAdvanceHandler, true);
      event.preventDefault();
      event.stopPropagation();
      TYRANO.kag.ftag.nextOrder();
    };

    board.addEventListener("click", window.rootsBoardAdvanceHandler, true);
    setTimeout(function () {
      window.rootsBoardClickReady = true;
    }, 180);
  }
})();
[endscript]

[p]

[endmacro]


[macro name="roots_board_close"]

[iscript]
(function () {
  var board = document.getElementById("roots_board_ui");
  if (board && window.rootsBoardAdvanceHandler) {
    board.removeEventListener("click", window.rootsBoardAdvanceHandler, true);
  }
  window.rootsBoardAdvanceHandler = null;
  window.rootsBoardClickReady = false;

  if (board && board.parentNode) {
    board.parentNode.removeChild(board);
  }

  var style = document.getElementById("roots_board_style");
  if (style && style.parentNode) {
    style.parentNode.removeChild(style);
  }
})();
[endscript]

[tb_show_message_window]

[endmacro]
