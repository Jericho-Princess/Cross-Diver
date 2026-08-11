[_tb_system_call storage=system/_gameover.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
*gameover_start


; 画面整理


[hide_dive_gauge]

[hide_mental_warning]

[name_clear]

[tb_hide_message_window  ]
[chara_hide_all  time="500"  ]

; 音を止める


[stopbgm  time="1000"  ]
[stopse  buf="0"  time="1000"  ]
[stopse  buf="1"  time="1000"  ]
[stopse  buf="2"  time="1000"  ]
[stopse  buf="3"  time="1000"  ]
[stopse  buf="4"  time="1000"  ]
[stopse  buf="5"  time="1000"  ]

; 暗転


[bg  time="1500"  method="crossfade"  storage="black-screen.png"  ]
[wait  time="500"  ]
[tb_show_message_window  ]
[name_system]

[tb_start_text mode=1 ]
精神力が尽きました。[p]
ダイブは強制終了されます。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ダメだ…。[p]
意識が保てない…俺は…。[p]
俺は…。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
あなたは心の世界から弾き出された。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="1000"  ]
*ask_continue

[glink  color="white"  storage="gameover.ks"  size="30"  text="チェックポイントからやり直す"  target="*retry_from_gameover"  ]
[glink  color="black"  storage="gameover.ks"  size="30"  text="タイトルに戻る"  target="*Go_Title"  ]
[s  ]
*Go_Title

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[tb_show_message_window  ]
[name_clear]

[tb_start_text mode=1 ]
タイトルに戻ると、セーブされていない進行度はリセットされます。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
タイトルに戻りますか？
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="gameover.ks"  size="30"  target="*go_title-cancel"  text="やっぱり戻らない"  autopos="true"  ]
[glink  color="black"  storage="gameover.ks"  size="30"  target="*go_title-yes"  text="タイトルに戻る"  autopos="true"  x="100"  y="100"  width=""  height=""  _clickable_img=""  ]
[s  ]
*go_title-cancel

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[tb_hide_message_window  ]
[jump  storage="gameover.ks"  target="*ask_continue"  ]
*go_title-yes

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="title_screen.ks"  target="*start"  ]

;==================================================
; 共通ゲームオーバーリトライ分岐
;==================================================


*retry_from_gameover


; リトライ時は精神力を戻してから各章の安全な開始地点へ戻す


[eval exp="f.mental = 100"]

[if exp="f.gameover_retry_id == 109"]

[jump  storage="chapter109.ks"  target="*howtocommon"  ]
[endif]

[if exp="f.gameover_retry_id == 110"]

[jump  storage="chapter110.ks"  target=""  ]
[endif]

[if exp="f.gameover_retry_id == 208"]

[jump  storage="chapter208.ks"  target="*start"  ]
[endif]

[if exp="f.gameover_retry_id == 209"]

[jump  storage="chapter209.ks"  target="*start"  ]
[endif]


; 未設定時は従来どおりChapter1ダイブ開始地点へ戻す


[jump  storage="chapter109.ks"  target="*howtocommon"  ]
