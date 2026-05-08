[_tb_system_call storage=system/_chapter109.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]

; 精神力最大値


[eval exp="f.mental = 100"]

[eval exp="f.mental_max = 100"]

[playse  volume="15"  time="1000"  buf="0"  storage="呼吸音.mp3"  loop="true"  fadein="true"  ]
[place_title text=""]

[place_bg storage="ダイブの扉.png"]

[name_you]

[tb_start_text mode=1 ]
この扉だ…。この先がリナの心の世界になっている。[p]
リナはこの自分の世界で囚われている可能性が高い。[r]早く見つけてそこから連れ出してあげよう。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
ダイブをするのは久しぶりだ。向こうの世界での目的やルールは…
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter109.ks"  size="25"  text="確認しておこう。"  target="*howtoyes"  ]
[glink  color="black"  storage="chapter109.ks"  size="25"  text="ちゃんと覚えている。"  target="*howtono"  ]
[s  ]
*howtoyes

[name_system]

[tb_start_text mode=1 ]
これよりダイブを発動、対象者の心の世界に潜入します。[p]
相手をこの世界の束縛から連れ出すと解放成功となります。[p]
ダイブ中は少しずつ精神力を消費し、[r]そこでの出来事によって追加で精神力が増減することもあります。[p]
精神力はダイブ中に画面左に表示される精神ゲージで残量を確認できます。[p]
精神力がゼロになると、ダイブは強制終了。[r]ゲームオーバーになってしまいます。[p]
対象者によっては、心の世界に邪悪な存在、悪霊がいる可能性があります。[r]十分に気を付けてください。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
注意事項はこれぐらいだろう。[r]準備はできている。行こう。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*howtocommon"  ]
*howtono

[name_you]

[tb_start_text mode=1 ]
俺なら大丈夫だ。[r]時間もない。さっさと行こう。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*howtocommon"  ]
*howtocommon

[playse  volume="100"  time="0"  buf="2"  storage="鉄の扉を開ける.mp3"  ]
[place_title text="＜リナ＞心の世界"]

[playbgm  volume="80"  time="1000"  loop="true"  storage="軋み.mp3"  ]
[place_bg storage="リナの心の世界.png"]

[eval exp="f.mental = 100"]

[eval exp="f.mental_max = 100"]

[show_dive_gauge]

[name_clear]

[tb_start_text mode=1 ]
そこは灰色の廃墟だった。[r]団地住宅にも見えるが、どこもボロボロで全体的にひどく汚れている。[p]
そして、気になったのは血痕だ。様々な箇所に血がついてるのだ。[r]まだ暖かい血。これは彼女の心の血なのだろう。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（血か…。昔からグロい物は好きになれない。）[r]（もちろん、血を見るのもあまり得意ではない。）[p]
（精神を維持する為にも、あまり直視しないようにしよう。)[p]
[_tb_end_text]

[mental_damage value="5"]

[name_you]

[tb_start_text mode=1 ]
リナの世界は少し複雑な構造をしているようだが、[r]彼女はどこにいるのだろうか。[p]
早く見つけなくては。何か手掛かりは…？[r]団地の中央に広場が見えるが…？[p]
[_tb_end_text]


;==================================================
; 探索選択肢 初期化
;==================================================


[eval exp="f.find_square = 0"]

[eval exp="f.find_room = 0"]

[eval exp="f.find_stairs = 0"]

[eval exp="f.find_rooftop = 0"]

*finding

[tb_start_text mode=4 ]
どこを探すべきか…？
[_tb_end_text]

[wait  time="1000"  ]

; 中央の広場


[if exp="f.find_square == 0"]

[glink  color="black"  storage="chapter109.ks"  size="25"  text="中央の広場"  target="*square"  ]
[else]

[glink  color="gray"  storage="chapter109.ks"  size="25"  text="中央の広場"  target="*finding"  ]
[endif]


; たくさん並んだ居室


[if exp="f.find_room == 0"]

[glink  color="black"  storage="chapter109.ks"  size="25"  text="たくさん並んだ居室"  target="*room"  ]
[else]

[glink  color="gray"  storage="chapter109.ks"  size="25"  text="たくさん並んだ居室"  target="*finding"  ]
[endif]


; 階段付近


[if exp="f.find_stairs == 0"]

[glink  color="black"  storage="chapter109.ks"  size="25"  text="階段付近"  target="*stairs"  ]
[else]

[glink  color="gray"  storage="chapter109.ks"  size="25"  text="階段付近"  target="*finding"  ]
[endif]


; 屋上


[if exp="f.find_rooftop == 0"]

[glink  color="black"  storage="chapter109.ks"  size="25"  text="屋上"  target="*rooftop"  ]
[else]

[glink  color="gray"  storage="chapter109.ks"  size="25"  text="屋上"  target="*finding"  ]
[endif]

[s  ]
*square

[eval exp="f.find_square = 1"]

[hide_dive_gauge]

[mental_damage value="5"]

[hide_dive_gauge]

[place_title text="広場"]

[place_bg storage="リナの心の世界（広場）.png"]

[show_dive_gauge]

[name_clear]

[tb_start_text mode=1 ]
廃墟に囲まれた広場。そこには大きな石像があった。[r]それは女性の形をしており、口元は鎖で塞がれている。[p]
そして、左手首を欠損していた。[r]石像はリナによく似ていた。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
これは…ずいぶん痛々しい石造だ。[p]
これが彼女にとっての「自分とは何か」、[r]つまりアイデンティティを表しているのだ。[p]
汚れていて、口を塞がれて、身体を傷つけていて…。[r]本当の彼女はこんなに醜いものではない。[p]
ここに彼女はいないようだ…。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*finding"  ]
*room

[eval exp="f.find_room = 1"]

[hide_dive_gauge]

[mental_damage value="4"]

[hide_dive_gauge]

[place_title text="居室"]

[place_bg storage="リナの心の世界（居室）.png"]

[show_dive_gauge]

[name_clear]

[tb_start_text mode=1 ]
この団地にはたくさんの部屋がある。[r]彼女がどこかにいるかもしれない。[p]
とりあえず、１番近くにあったドアに手を伸ばした。[p]
[_tb_end_text]

[playse  volume="100"  time="0"  buf="1"  storage="開かないドアノブ.mp3"  ]
[wait  time="1500"  ]
[name_clear]

[tb_start_text mode=1 ]
このドアは開かないようだ。[p]
それから俺は近くにあった全ての部屋を見て回った。[r]しかし、どれも開けることができなかった。[p]
その全てに鍵がかかっていたのだ。[p]
ここに彼女はいないようだ…。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*finding"  ]
*rooftop

[eval exp="f.find_rooftop = 1"]

[hide_dive_gauge]

[mental_damage value="3"]

[hide_dive_gauge]

[place_title text="屋上"]

[place_bg storage="リナの心の世界（屋上）.png"]

[show_dive_gauge]

[name_clear]

[tb_start_text mode=1 ]
屋上にやってきた。[r]見晴らしが良い場所に行けば、何かあるかもと思ったが…。[p]
ここにあったのはひどく汚れた「貯水タンク」だけであった。[r]中の水はほとんど変えられていないような腐った物だろう。[p]
ここに彼女はいないようだ…。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*finding"  ]
*stairs

[eval exp="f.find_stairs = 1"]

[hide_dive_gauge]

[mental_damage value="4"]

[hide_dive_gauge]

[place_title text="階段"]

[place_bg storage="リナの心の世界（倉庫①）.png"]

[show_dive_gauge]

[name_clear]

[tb_start_text mode=1 ]
俺はこの廃墟の中の階段を歩いて回った。[r]この階段付近はあまり人目につきにくい。[p]
心を閉ざした人間はこういう場所に惹かれることが多いものだ。[p]
[_tb_end_text]

[playse  volume="50"  time="0"  buf="2"  storage="女性の泣く声.mp3"  fadein="false"  ]
[wait  time="3000"  ]
[tb_start_text mode=1 ]
その時、誰かの声がした。[r]女の子が泣いているような、そんな声だった。[p]
俺は急いでそこへ向かった。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
この物置の中から声がする。リナの声だ。
[_tb_end_text]

[glink  color="black"  storage="chapter109.ks"  size="50"  text="開ける"  target="*open"  ]
[s  ]
*open

[playse  volume="100"  time="1000"  buf="2"  storage="引き戸を開ける.mp3"  ]
[wait  time="500"  ]
[bg  time="1000"  method="crossfade"  storage="リナの心の世界（倉庫②）.png"  ]
[name_clear]

[tb_start_text mode=1 ]
リナがそこにいた。彼女はうずくまって泣いていた。[r]彼女の手首の包帯がまた汚れていた。[p]
[_tb_end_text]

[eval exp="f.question_1 = 0"]

[eval exp="f.question_2 = 0"]

*question

[name_you]

[tb_start_text mode=4 ]
…。
[_tb_end_text]

[wait  time="1000"  ]
[if exp="f.question_1 == 0"]

[glink  color="black"  storage="chapter109.ks"  size="25"  text="大丈夫？"  target="*Q1"  ]
[else]

[glink  color="gray"  storage="chapter109.ks"  size="25"  text="大丈夫？"  target="*question"  ]
[endif]

[if exp="f.question_2 == 0"]

[glink  color="black"  storage="chapter109.ks"  size="25"  target="*Q2"  text="どうして物置にいるの？"  ]
[else]

[glink  color="gray"  storage="chapter109.ks"  size="25"  target="*question"  text="どうして物置にいるの？"  ]
[endif]

[glink  color="black"  storage="chapter109.ks"  size="25"  text="一緒にここから出よう。"  target="*Q3"  ]
[s  ]
*Q1

[eval exp="f.question_1 = 1"]

[name_you]

[tb_start_text mode=1 ]
リナちゃん…大丈夫？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…。[p]
…平気、向こうに行って。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*question"  ]
*Q2

[eval exp="f.question_2 = 1"]

[name_you]

[tb_start_text mode=1 ]
どうして物置の中にいるの？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…ここなら１人になれる。[p]
子供の時、１人になりたい時、[r]こうやって家の物置に入って過ごしてたの。[p]
家にいても、どうせ自分は独りだから…。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*question"  ]
*Q3

[name_you]

[tb_start_text mode=1 ]
一緒にここから出ようよ。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…。[p]
別にいい…。私はここにいる。[p]
外に出ても、私は独りなんだから。[r]結局、何も変わらない。[p]
ここにはアモちゃんもいるし、みんなの顔色を伺わなくてもいい。[r]ここが私にとっての自由なの。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ここは君がずっといるような場所じゃない。[p]
今なら出られる。俺も一緒に行く。[r]出口はどこに？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
＜出られない＞じゃない！！出たくないの！！[p]
…。[p]
アモちゃん、帰ってきて…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
魚は…アモちゃんはもう…行っちゃったんだよ…。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…ここにはまだいる。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ここにはまだいる…？[r]やっぱりそうなのか…。[p]
教えてほしい、アモちゃんはこの世界のどこにいる？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
アモちゃんをどうするの？
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter109.ks"  size="25"  text="あれは偽物。ここから追い出す。"  target="*Q4"  ]
[glink  color="black"  storage="chapter109.ks"  size="25"  text="話をするだけだ。"  target="*Q5"  ]
[s  ]
*Q4

[name_you]

[tb_start_text mode=1 ]
それは本当のアモちゃんじゃない。[r]偽物はここから追い出さなきゃいけない。[p]
それがいるから、リナは苦しんでいるんだと思う。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…。[p]
…殺しちゃうんだね。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*rinacommon"  ]
*Q5

[tb_eval  exp="f.empathy+=4"  name="empathy"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
少し話をするだけだ。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…どうせ殺しちゃうんでしょ？[r]みんな死んでも気にしないよ、あんな魚。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
大事な友達だったんじゃなかったのか？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…アモちゃんが死んじゃった時、私はいっぱい泣いた。[r]帰ってきてほしかった…。[r]夜まで泣いてた。[p]
そしたら仕事から帰ってきたお母さんが、ただの魚でしょ？って言ってさ。[p]
その時に私はわかったの。私の気持ちなんて、[r]みんなはどうでもいいことなんだって。[p]
それからずっと…。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*rinacommon"  ]
*rinacommon

[name_you]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…緑のクローバー。[p]
向こうにクローバーの飾りがついた扉がある。[r]それが私の家。[p]
そこに水槽がある…アモちゃんはそこにいる…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…ありがとう。[p]
すぐに戻る。ここで待ってて。[p]
[_tb_end_text]

[hide_dive_gauge]

[mental_damage value="5"]

[hide_dive_gauge]

[place_title text="クローバーの部屋"]

[place_bg storage="リナの心の世界（部屋）.png"]

[show_dive_gauge]

[name_you]

[tb_start_text mode=1 ]
ここだ…ここにヤツがいる…。[r]扉の向こうから異様な気配を感じる。[p]
身体が重く感じてきた、それに吐き気がしてくる。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
今必要なのは…
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter109.ks"  size="25"  text="神の言葉"  target="*enter1"  ]
[glink  color="black"  storage="chapter109.ks"  size="25"  text="イエスの血潮"  target="*enter2"  ]
[glink  color="black"  storage="chapter109.ks"  size="25"  text="悪霊への興味"  target="*enter3"  ]
[glink  color="black"  storage="chapter109.ks"  size="25"  text="チョコレート"  target="*enter4"  ]
[s  ]
*enter1

[name_you]

[tb_start_text mode=1 ]
神の言葉だ。[r]突入前に祈っておこう。[p]
主よ、今からこの部屋に入ります。[r]あなたの言葉が、命を与え、守るものとなります。[p]
どうかあなたの言葉が私に力を与えてくださいますように。[r]必要な知恵が与えられますように。[p]
イエス様の御名のもとに祈ります。[r]アーメン。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*entering"  ]
*enter2

[name_you]

[tb_start_text mode=1 ]
イエス様の血潮だ。[r]突入前に祈っておこう。[p]
主よ、今からこの部屋に入ります。[p]
どうか、この者をあなたの血潮によって清め、守ってくださいますように。[p]
イエス様の御名のもとに祈ります。[r]アーメン。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*entering"  ]
*enter3

[name_you]

[tb_start_text mode=1 ]
悪霊への興味だ。[p]
わかる、この中に悪霊がいる。[p]
戦って勝利することも重要だが、データを集めておくことも、[r]今後のダイブできっと役に立つはずだ。[p]
敵の動きを知っておけば、こちらの守りも固くなる。[p]
リナの中にどんな奴がいるのか…見せてもらおうか…。[p]
[_tb_end_text]

[tb_eval  exp="f.occult+=10"  name="occult"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの＜禁忌＞が上昇した。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*entering"  ]
*enter4

[name_you]

[tb_start_text mode=1 ]
やはりチョコレートだ。[p]
疲れた時、精神が擦り減った時…。[r]そういう時の為にチョコレートを大量に持ち歩いているのだ。[p]
ダイブ中でも食事ができる。[r]それが俺の賜物だ。[p]
この甘味と香り、たまらないな…。[p]
[_tb_end_text]

[eval exp="f.mental = Math.min(f.mental_max, f.mental + 3)"]

[update_dive_gauge]

[name_system]

[tb_start_text mode=1 ]
あなたの＜精神＞が回復した。[p]
[_tb_end_text]

[jump  storage="chapter109.ks"  target="*entering"  ]
*entering

[name_you]

[tb_start_text mode=4 ]
よし、行くぞ！！
[_tb_end_text]

[glink  color="black"  storage="chapter109.ks"  size="50"  text="開ける"  x="100"  y="100"  width=""  height=""  _clickable_img=""  target="*engage"  autopos="true"  ]
[s  ]
*engage

[hide_dive_gauge]

[mental_damage value="9"]

[stopse  time="0"  buf="0"  ]
[stopbgm  time="500"  ]
[playse  volume="100"  time="0"  buf="0"  storage="玄関ドアを開ける.mp3"  ]
[wait  time="1500"  ]
[jump  storage="chapter110.ks"  target=""  ]
