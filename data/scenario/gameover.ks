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

; 暗転


[bg  time="1500"  method="crossfade"  storage="黒スクリーン.png"  ]
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
[glink  color="white"  storage="chapter109.ks"  size="30"  text="ダイブからやり直す"  target="*howtocommon"  ]
[glink  color="black"  storage="title_screen.ks"  size="30"  text="タイトルに戻る"  ]
[s  ]
