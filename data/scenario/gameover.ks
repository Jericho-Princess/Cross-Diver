[_tb_system_call storage=system/_gameover.ks]

*gameover_start


; 画面整理


[hide_dive_gauge]

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


; ゲームオーバー表示


[tb_hide_message_window  ]
[ptext layer="1" page="fore" x="0" y="250" width="1280" align="center" size="80" color="0xff3333" edge="4px 0x000000" text="GAME OVER" name="gameover_text"]

[wait  time="1000"  ]

; 選択肢


[glink  color="white"  storage="chapter109.ks"  size="30"  text="ダイブからやり直す"  target="*howtocommon"  ]
[glink  color="white"  storage="title.ks"  size="30"  text="タイトルへ戻る"  target="*start"  ]
[s  ]
