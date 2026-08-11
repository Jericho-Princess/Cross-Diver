[_tb_system_call storage=system/_chapter106.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]

;==================================================
; chapter106.ks
; モール・コタニ会話・聖書準備
;==================================================
;==================================================
; 街の広場
;==================================================


[place_title text="街の広場"]

[playbgm  volume="70"  time="1000"  loop="true"  storage="music.m4a"  fadein="true"  ]
[place_bg storage="town_square.png"]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ①通常.png"  width="612"  height="920"  left="388"  top="41"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
昨日はよく寝れた？[r]今日は、どこか行きたいところある？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あぁ、よく寝れたよ。今日は買い物に行きたい。[r][font color=#FFF100] ＜どうしても必要な物＞ [resetfont]を買っておきたい。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
じゃあ、ショッピングモールにでも行こっか。[r]あそこなら何でもあるしね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
モールか、そうだな。一度行ってみたかったんだ。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
そのまま俺たちはショッピングモールまで移動した。[p]
[_tb_end_text]

[chara_hide  name="コタニ"  time="1000"  wait="true"  pos_mode="true"  ]
[place_title text="ショッピングモール"]

[playbgm  volume="40"  time="1000"  loop="true"  storage="Sweet-vermouth.mp3"  fadein="true"  ]
[place_bg storage="shopping-mall_entrance.png"]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ①通常.png"  width="714"  height="1073"  left="327"  top="40"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
それで、その必要なものって、どこに行けば買えるの？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
お菓子売り場だ。多分そこにある。[p]
[_tb_end_text]


;==================================================
; モールのスーパー
;==================================================


[tb_hide_message_window  ]
[chara_hide  name="コタニ"  time="500"  wait="true"  pos_mode="true"  ]
[wait  time="500"  ]
[bg  time="1500"  method="crossfade"  storage="shopping-mall_market.png"  ]
[tb_show_message_window  ]
[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ④驚き.png"  width="792"  height="1188"  left="265"  top="41"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
そんなに大量のチョコレート、本当に買うの？[r]…っていうか何に使うの？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
食べるためだろ？[r]この小さい袋はとりあえず今日と明日の分になるだろう。[r]このでかい袋はストック用、まぁ１週間分かな。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ③爆笑.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
アハハ！！　買いすぎでしょ！？　絶対食べ過ぎだよ！？[p]
肌、大丈夫！？[r]強いんだね、肌。[r]守られてるんだね、肌。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
良いんだよ、これで。[r]よし、必要な物は買えた。[p]
それじゃあ、カフェでも行こうか。コタニともゆっくり話をしたいし。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="500"  cross="true"  storage="chara/3/コタニ⑤微笑.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
いいよ。僕も色々聞きたいし、[r]こっちも知ってること、色々教えるよ。[p]
[_tb_end_text]


;==================================================
; カフェ
;==================================================


[chara_hide  name="コタニ"  time="1000"  wait="true"  pos_mode="true"  ]
[place_title text="カフェテリア"]

[playbgm  volume="50"  time="1000"  loop="true"  storage="ジングル＆ループ006.mp3"  fadein="true"  ]
[place_bg storage="shopping-mall_cafe.png"]

[name_clear]

[tb_start_text mode=1 ]
オシャレな喫茶店だった。[p]
俺たちはそこで、しばらく他愛もない話をして盛り上がった。[p]
[_tb_end_text]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ⑤微笑.png"  width="868"  height="1304"  left="245"  top="47"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
それでこの街はどう？気に入ってくれた？[p]
[_tb_end_text]

[wait  time="500"  ]

; カフェ質問 選択済み管理


[eval exp="f.kotani_q1 = 0"]

[eval exp="f.kotani_q2 = 0"]

*question

[tb_start_text mode=4 ]
何か知りたいこととかある？
[_tb_end_text]


; この街の雰囲気について


[if exp="f.kotani_q1 == 0"]

[glink  color="black"  storage="chapter106.ks"  size="25"  text="この街の雰囲気について"  target="*Q1"  ]
[else]

[glink  color="gray"  storage="chapter106.ks"  size="25"  text="この街の雰囲気について"  target="*question"  ]
[endif]


; この街のクリスチャンについて


[if exp="f.kotani_q2 == 0"]

[glink  color="black"  storage="chapter106.ks"  size="25"  text="この街のクリスチャンについて"  target="*Q2"  ]
[else]

[glink  color="gray"  storage="chapter106.ks"  size="25"  text="この街のクリスチャンについて"  target="*question"  ]
[endif]


; ストーリー進行


[glink  color="black"  storage="chapter106.ks"  size="25"  text="周りで悩みを抱えている人について"  target="*Q3"  ]
[s  ]

;==================================================
; 質問1：街の雰囲気
;==================================================


*Q1

[eval exp="f.kotani_q1 = 1"]

[name_you]

[tb_start_text mode=1 ]
コタニ的に、この街はどんな雰囲気だ？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
とても良い街だよ。[r]お店もあるし、海もあるし、教会もそれなりにあって住むには最高だよ。[p]
でも…最近さ、異端というか、ニューエイジ？というか、そういう怪しい連中も多い。[r]色々な意味で霊的な人間が集まる場所なんだろう。[p]
きっと、ここはそういうところなのよ。で、多分なんか大事な「理由」があるんだよ。[r]僕はそう思うよ。[p]
[_tb_end_text]

[jump  storage="chapter106.ks"  target="*question"  ]

;==================================================
; 質問2：この街のクリスチャン
;==================================================


*Q2

[eval exp="f.kotani_q2 = 1"]

[name_you]

[tb_start_text mode=1 ]
この街って教会とかクリスチャンとか多い？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
そうだね。色々な集会が開かれたり、色々な先生がいるし、[r]霊的バラエティに富んだ土地なんじゃない？[p]
先生によって、教えている内容や重視していることが違うから、[r]自分に合う人を探してみてよ。[p]
皆、ほんとやり方は色々でさ、[r]プロボウラーとしてボーリングで伝道している先生もいるよ？[p]
それから、木工細工職人を副業としている先生とかもいたかな？[p]
[_tb_end_text]

[jump  storage="chapter106.ks"  target="*question"  ]

;==================================================
; 質問3：悩んでいる人
;==================================================


*Q3

[name_you]

[tb_start_text mode=1 ]
コタニの周りで悩んでいる人とか、困っている人とかいない？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
そうだなぁ…。[p]
あ、そういえばいるかも？[p]
昔から仲良い人がいて、その人の友達がね、[r]なんか心が苦しくなると、自分を傷つけちゃうことがあるみたいでさ。[p]
僕も前に会ったことがあって、普通に会話はできるし、明るい感じではあるけど、[r]あんまり心は開いてくれてないかな。[p]
[font color=#FFF100] ＜リナちゃん＞ [resetfont]っていう子でね、僕もずっと癒されるように祈ってはいるけど…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
自分を傷つける…リストカットとか…？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
そう、そんな感じね。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ⑥饒舌.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
あ！！そうだ！！ちょっとさ、その子と会って話をしてみてよ！！[p]
なんかうまくいく気がするんだ！！[r]根拠はないよ？[p]
予定とか空いてるかな？ちょっとすぐ連絡してみるね。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ⑧通話.png"  ]
[tb_start_text mode=1 ]
あ、もしもし？コタニだけど？[r]今、大丈夫？[p]
あ、いや、この前の登山の話じゃなくてさ…[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
おい。返事を聞いてから、話を進めろよ。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
えっ、何？？[p]
…あ、もしもし？[r]そうなんだよ、なんか最近街にやってきた人でね…？[p]
[_tb_end_text]

[chara_hide  name="コタニ"  time="1000"  wait="true"  pos_mode="true"  ]
[name_clear]

[tb_start_text mode=1 ]
よくわからないが、とりあえず、コタニが話をつけてくれた？ようだ。[p]
明日、俺とコタニ、そしてそのリナちゃん？の３人で会うことになった。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
自傷癖がある女の子か…。[p]
[_tb_end_text]


;==================================================
; 街の広場：別れ
;==================================================


[place_title text="街の広場"]

[playbgm  volume="100"  time="1000"  loop="true"  storage="music.m4a"  fadein="true"  ]
[place_bg storage="town_square.png"]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ⑤微笑.png"  width="766"  height="1150"  left="280"  top="41"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
いやぁ、今日は楽しかったね。それじゃあ明日ね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あのさ…本当に俺で良かったのか…？[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ④驚き.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
えっ、何が…？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あ、いや、何でもない…。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ③爆笑.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
もちろん良いよ。質問の意図はよくわからないけどね。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
じゃあ、また明日。シャローム！！[p]
[_tb_end_text]

[chara_hide  name="コタニ"  time="1000"  wait="true"  pos_mode="true"  ]
[name_you]

[tb_start_text mode=1 ]
俺も帰ろう。家で色々と備えておきたいしな。[p]
[_tb_end_text]


;==================================================
; 自宅
;==================================================


[place_title text="自宅"]

[place_bg storage="room205.png"]

[name_you]

[tb_start_text mode=1 ]
リナちゃんか…。[p]
明日は何かが動きそうだ…。[r]しっかり備えておかなくては…。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（寝る前に何をしようか…聖書も読んでおきたいが…？）
[_tb_end_text]

[glink  color="black"  storage="chapter106.ks"  size="25"  text="聖書を読む"  target="*bible"  ]
[glink  color="black"  storage="chapter106.ks"  size="25"  text="やっぱり早く寝る"  target="*bible4"  ]
[s  ]

;==================================================
; 聖書を読む
;==================================================


*bible

[name_clear]

[tb_start_text mode=1 ]
俺は聖書をカバンから取り出した。これを読めば色々なヒントが手に入る。[r]これだけは常に持っておきたい。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（あの箇所、どこだっけ…？）[p]
（あった、これだ。）[p]
[_tb_end_text]

[name_bible]

[tb_start_text mode=1 ]
旧約聖書 詩篇 ５６：８[r]あなたはわたしのさすらいを数えられました。[r]わたしの涙をあなたの皮袋にたくわえてください。[r]これは皆あなたの書にしるされているではありませんか。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（良い箇所だな。神様は人間の涙をカウントしてくれていたのか…。）[p]
（俺が泣いていた時のことも、きっと…。）[p]
[_tb_end_text]


;==================================================
; 聖書予習
;==================================================


*devotion

[tb_start_text mode=4 ]
（明日は戦いが待ってるかもしれない。）[r]（邪悪な奴らの嘘にも対抗できるように、他にもある程度勉強しておこう。）
[_tb_end_text]

[wait  time="2000"  ]
[glink  color="black"  storage="chapter106.ks"  size="25"  text="人は孤独であるという嘘に対して"  target="*bible1"  ]
[glink  color="black"  storage="chapter106.ks"  size="25"  text="神は人間を見捨てたという嘘に対して"  target="*bible2"  ]
[glink  color="black"  storage="chapter106.ks"  size="25"  text="人は自由になれないという嘘に対して"  target="*bible3"  ]
[glink  color="black"  storage="chapter106.ks"  size="25"  text="勉強は十分。もう寝よう。"  target="*bible4"  ]
[s  ]
*bible1

[name_bible]

[tb_start_text mode=1 ]
新約聖書 マタイによる福音書 ２８：２０[r]見よ、わたしは世の終りまで、いつもあなたがたと共にいるのである。[p]
[_tb_end_text]

[jump  storage="chapter106.ks"  target="*devotion"  ]
*bible2

[name_bible]

[tb_start_text mode=1 ]
新約聖書 ヨハネによる福音書 １４：１８ [r]わたしはあなたがたを捨てて孤児とはしない。[r]あなたがたのところに帰って来る。[p]
[_tb_end_text]

[jump  storage="chapter106.ks"  target="*devotion"  ]
*bible3

[name_bible]

[tb_start_text mode=1 ]
新約聖書 ヨハネによる福音書 ８：３２[r]あなたたちは真理を知るであろう。[r]そして真理は、あなたがたに自由を得させるであろう。[p]
[_tb_end_text]

[jump  storage="chapter106.ks"  target="*devotion"  ]

;==================================================
; 就寝
;==================================================


*bible4

[name_you]

[tb_start_text mode=1 ]
（完全ではないが準備はできている。）[p]
[_tb_end_text]

[jump  storage="chapter106.ks"  target="*common"  ]
*common

[name_you]

[tb_start_text mode=1 ]
もうこんな時間だ…今日は寝よう。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopbgm  time="5000"  fadeout="true"  ]
[jump  storage="chapter107.ks"  target=""  ]
