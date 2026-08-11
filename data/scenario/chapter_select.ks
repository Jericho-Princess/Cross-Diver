[_tb_system_call storage=system/_chapter_select.ks]


;==================================================
; チャプターセレクト
;==================================================


*start

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[clearstack]

[clearfix name="status_btn"]

[bg  storage="mirror.png"  time="500"  ]

; Chapter 1


[locate x="240" y="210"]

[glink  color="blue"  storage="chapter_select.ks"  size="30"  target="*chapter1"  text="チャプター１「Calling&nbsp;Me」"  autopos="true"  x="0"  y="0"  width=""  height=""  _clickable_img=""  ]
[locate x="240" y="310"]

[glink  color="blue"  storage="chapter_select.ks"  size="30"  target="*chapter2"  text="チャプター２「Empty&nbsp;Hands」"  autopos="true"  x="0"  y="0"  width=""  height=""  _clickable_img=""  ]
[locate x="240" y="540"]

[glink  color="gray"  storage="chapter_select.ks"  size="30"  target="*chapter3"  text="チャプター３「？？？」"  autopos="true"  x="0"  y="0"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="chapter_select.ks"  size="30"  target="*title"  text="タイトルへ戻る"  autopos="true"  x="100"  y="100"  width=""  height=""  _clickable_img=""  ]
[s  ]
*chapter1

[clearstack]

[clearvar]

[eval exp="f.mental = 100"]

[eval exp="f.mental_max = 100"]

[eval exp="f.faith = 50"]

[eval exp="f.empathy = 50"]

[eval exp="f.knowledge = 50"]

[eval exp="f.passion = 50"]

[eval exp="f.spiritual = 50"]

[eval exp="f.occult = 0"]

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="scene1.ks"  target="*start"  ]

;==================================================
; Chapter 2 開始
;==================================================


*chapter2

[clearstack]

[clearvar]

[eval exp="f.mental = 100"]

[eval exp="f.mental_max = 100"]

[eval exp="f.faith = 50"]

[eval exp="f.empathy = 50"]

[eval exp="f.knowledge = 50"]

[eval exp="f.passion = 50"]

[eval exp="f.spiritual = 25"]

[eval exp="f.occult = 0"]

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="chapter201.ks"  target="*start"  ]
*chapter3

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[jump  storage="chapter301.ks"  target=""  ]
*title

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="title_screen.ks"  target="*start"  ]
