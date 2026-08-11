[_tb_system_call storage=system/_title_screen.ks]

[tb_image_show  time="3000"  storage="default/ichthys.png"  width="750"  height="325"  x="265"  y="135"  _clickable_img=""  name="img_0"  ]
[tb_image_show  time="3000"  storage="default/logo.png"  width="680"  height="121"  x="300"  y="515"  _clickable_img=""  name="img_1"  ]
[tb_image_hide  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
このゲームはフィクションです。[r]実在の人物・事件・団体とは一切関係ありません。[p]
[_tb_end_text]

*start

[tb_hide_message_window  ]
[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="80"  time="1000"  loop="true"  storage="時の訪問者.mp3"  ]
[bg  time="2000"  method="crossfade"  storage="black-screen.png"  ]
[bg  time="3000"  method="crossfade"  storage="title.png"  ]
[glink  color="black"  storage="scene1.ks"  size="30"  x="100"  y="600"  width="350"  height="30"  text="ゲームを始める"  _clickable_img=""  target="*start"  autopos="false"  ]
[glink  color="black"  storage="chapter_select.ks"  size="30"  x="700"  y="600"  width="350"  height="30"  text="チャプターセレクト"  _clickable_img=""  target="*start"  autopos="false"  ]
[s  ]
