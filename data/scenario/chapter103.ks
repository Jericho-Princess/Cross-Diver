[_tb_system_call storage=system/_chapter103.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text="メゾン・ド・オリーブ"]

[playbgm  volume="70"  time="1500"  loop="true"  storage="調査ファイル03.mp3"  fadein="true"  ]
[place_bg storage="メゾン・ド・オリーブ.png"]

[name_clear]

[tb_start_text mode=1 ]
目的地がやっと見えてきた。きっとあのマンションだ。[r]マンション名は、[font color=#FFF100] ＜メゾン・ド・オリーブ＞ [resetfont]。[r]見たところ普通の賃貸だ。[p]
駐車場で「迎えの男」と合流するはずだが、どこにいるのだろうか？[p]
駐車場をうろうろしていると、近くの軽自動車から１人の男性が出てきた。[p]
[_tb_end_text]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ②笑顔.png"  width="714"  height="1073"  left="287"  top="31"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
お疲れーッす。この街に遣わされた人ですよね？[p]
僕は[font color=#FFF100] ＜コタニ＞ [resetfont]です。[r]お願いしまーす。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
コタニさんですね。よろしくお願いします。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ⑥饒舌.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
あ、「さん」はいらないですよ。コタニでいいですよ。[p]
いやぁ、遠かったでしょ？道は混んでいなかったですか？[r]何か飲みます？お茶とコーヒー、どっちにします？[r]もう23時ですよ？お疲れでしょう？[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
こちらが返事をする前に、次の質問が飛んでくる。[p]
俺は長距離運転の疲れで愛想よく返事する気力もなかった。[p]
それにしても、この男はやけに元気そうだ。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
荷物はそれだけですか？さぁ、こちらにどうぞ。[r]前に来た人が使ってた部屋があるんですよ。[p]
今は空いてるんで、そこ使ってくださいね。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺は少ない荷物を手に抱え、コタニにその部屋まで案内してもらった。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="chapter104.ks"  target=""  ]
