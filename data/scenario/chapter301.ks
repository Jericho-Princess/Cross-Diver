[_tb_system_call storage=system/_chapter301.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text=""]

[stopbgm  time="1000"  fadeout="true"  ]
[place_bg storage="room205.png"]

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタンを押す53.mp3"  loop="true"  ]
[name_clear]

[tb_start_text mode=1 ]
端末の通知音で俺は目が覚めた。[p]
端末には誰かのIDが表示されている。[p]
[_tb_end_text]

[tb_image_show  time="0"  storage="default/item-frame.png"  width="424"  height="424"  x="818"  y="60"  _clickable_img=""  name="img_7"  ]
[tb_image_show  time="1000"  storage="default/phone4.png"  width="221"  height="331"  x="919"  y="112"  _clickable_img=""  ]
[stopse  time="1000"  buf="0"  ]
[name_someone]

[tb_start_text mode=1 ]
＜Tri-Heads＞[r]戻ってきたんですか？いつ頃、戻って来ました？[p]
＜Tri-Heads＞[r]突然の連絡、本当にすみません。[r]ずっと前から、どうしてもサブリナさんに会いたくて連絡しました。[p]
＜Tri-Heads＞[r]よかったら僕のショーに来てください。商店街の奥に広場があります。[p]
＜Tri-Heads＞[r]来週土曜の17：00に僕は立っています。待っていますね。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_you]

[tb_start_text mode=1 ]
このＩＤは…？[p]
（それより、どうしてこの端末のＩＤを知っているんだ？）[p]
（前にこれを持っていた人間を知っているのか…？）[p]
商店街か…。[p]
行くしかないか…。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
Chapter 3 に続く…。[p]
[_tb_end_text]

[jump  storage="title_screen.ks"  target="*start"  ]
