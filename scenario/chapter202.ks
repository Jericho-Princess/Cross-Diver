[_tb_system_call storage=system/_chapter202.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]

;==================================================
; chapter202 専用フラグ初期化
;==================================================


[eval exp="f.ch2_street_done = 0"]

[eval exp="f.ch2_book1_done = 0"]

[eval exp="f.ch2_book2_done = 0"]

[eval exp="f.ch2_book3_done = 0"]

[eval exp="f.ch2_phone_street_done = 0"]

[eval exp="f.ch2_phone_rina_done = 0"]

[eval exp="f.ch2_roots_dark_done = 0"]

[eval exp="f.ch2_roots_breath_done = 0"]

[eval exp="f.ch2_prep_phone_done = 0"]

[eval exp="f.ch2_prep_roots_done = 0"]

[eval exp="f.ch2_prep_bible_done = 0"]

[eval exp="f.ch2_prep_count = 0"]

[eval exp="f.ch2_local_board_done = 0"]

[eval exp="f.ch2_dream_board_done = 0"]

[eval exp="f.ch2_meal_job_done = 0"]

[eval exp="f.ch2_meal_family_done = 0"]

[eval exp="f.ch2_meal_church_done = 0"]

[eval exp="f.noda_heart = 50"]

[eval exp="f.noda_route = 0"]

[place_title text="街の広場"]

[playbgm  volume="70"  time="1000"  loop="true"  storage="music.m4a"  fadein="true"  ]
[place_bg storage="town_square.png"]

[name_clear]

[tb_start_text mode=1 ]
街の広場にやってきた。[r]いつも通りの穏やかな光景が広がっている。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ショッピングモールやその近くの公園などは行ったことがあるな。）[p]
（この街には様々なロケーションがあるだろう。それに、色々と気になる場所も多い。）[p]
[_tb_end_text]

*explore

[tb_start_text mode=4 ]
（気になる場所と言えば…。）
[_tb_end_text]

[wait  time="1000"  ]
[if exp="f.ch2_street_done == 0"]

[glink  color="black"  storage="chapter202.ks"  size="25"  text="商店街"  target="*shopping_street"  ]
[else]

[glink  color="gray"  storage="chapter202.ks"  size="25"  text="商店街"  target="*explore"  ]
[endif]

[glink  color="black"  storage="chapter202.ks"  size="25"  text="海辺の散歩道"  target="*seaside"  ]
[glink  color="black"  storage="chapter202.ks"  size="25"  text="書店"  target="*bookstore"  ]
[s  ]
*shopping_street

[name_you]

[tb_start_text mode=1 ]
（賑わっているこのエリアから少し離れ、商店街エリアに行ってみよう。）[p]
[_tb_end_text]

[place_title text="商店街"]

[playbgm  volume="70"  time="1000"  loop="true"  storage="180309.mp3"  fadein="true"  ]
[place_bg storage="arcade.png"]

[name_clear]

[tb_start_text mode=1 ]
街の中心部から少し離れたエリアだ。[r]この周辺には住宅地や商店街が広がっているようだ。[p]
古びた喫茶店やハンコ屋など小さな店が立ち並んでいる。[r]しかし、廃業している店も少なくない。[p]
それよりも気になったのは店の種類だ。[p]
占い屋、ヨガフィットネスルーム、探偵事務所、呼吸法セミナー塾、笑顔実践教室など、[r]どれも怪しい雰囲気が漂った店だ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（このエリアは少し怪しい雰囲気だな…。空気が重たく、少し息苦しい感じがする。）[p]
（色んな人間がこういう空気を街に持ち込んでいるのだろう…。）[p]
（あまり長居すべきではないかもしれない…。別の場所に行ってみよう。）[p]
[_tb_end_text]

[if exp="f.ch2_street_done == 0"]

[eval exp="f.ch2_street_done = 1"]

[tb_eval  exp="f.mental-=3"  name="mental"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.spiritual+=2"  name="spiritual"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの＜精神＞が少し低下した。[p]
[_tb_end_text]

[endif]

[place_title text="街の広場"]

[playbgm  volume="70"  time="1000"  loop="true"  storage="music.m4a"  fadein="true"  ]
[place_bg storage="town_square.png"]

[jump  storage="chapter202.ks"  target="*explore"  ]
*seaside

[name_you]

[tb_start_text mode=1 ]
（海辺に散歩道があったはずだ。そこに行ってみよう。）[p]
[_tb_end_text]

[place_title text="海辺の散歩道"]

[playbgm  volume="70"  time="1000"  loop="true"  storage="Seaside_Muse.mp3"  fadein="true"  ]
[place_bg storage="seaside.png"]

[name_clear]

[tb_start_text mode=1 ]
海辺の散歩道にやってきた。[r]天気も良く、気持ちのいい場所だ。[p]
カフェやレストランが並び、景観はとてもオシャレである。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（こんな場所があったのか…。）[p]
（潮風に当たるなんて、何年ぶりだろうか…。）[r]（このエリアで飲むコーヒーは最高だろうな、またここに来よう。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺はこの散歩道をしばらく歩いて回った。[p]
すると、遠くから声が聞こえてきた。[p]
[_tb_end_text]

[name_unknown]

[tb_start_text mode=1 ]
聖見のみなさま、こんにちは、いい天気ですね。[r]みなさまは神様のことを考えたことはありますか？[p]
イエスキリストという方をご存じでしょうか？[r]この人はあなたの…[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（この声は…誰かが路傍伝道をしているのか。）[p]
（このエリアの牧師や伝道師に関しての情報はほとんど持っていない。）[r]（良い機会だ、少し話しかけてみよう。）[p]
[_tb_end_text]

[chara_show  name="ワタリ"  time="1000"  wait="true"  storage="chara/6/ワタリ①.png"  width="734"  height="1106"  left="305"  top="57"  reflect="false"  ]
[name_watari]

[tb_start_text mode=1 ]
あ、そこのお兄さん、こんにちは。[p]
私は[font color=#FFF100] ＜ワタリ＞ [resetfont]と申します。[p]
聖書に興味をお持ちですか？[r]それともすでにクリスチャンになっている方？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
はい、一応クリスチャンとして信仰を持っています。[p]
[_tb_end_text]

[name_watari]

[tb_start_text mode=1 ]
あら、それは素晴らしいことですね。[r]あなたは大きな使命を持って今を生きていますよ。[p]
あなたの働きは決して小さくありません。[p]
キリストにあってあなたの働きは、[r]その何倍もの祝福に預かることでしょう。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あ、ありがとうございます。[p]
（まだ何も説明していないが、とにかく肯定してもらえたようだ。）[r]（出会った人みんなに言ってるのか？）[p]
[_tb_end_text]

[name_watari]

[tb_start_text mode=1 ]
最近この街に来た方？[p]
それなら今週 [font color=#FFF100] ＜聖見 祈りの家チャーチ＞ [resetfont]で伝道集会があるんですよ。[r]良かったらぜひ来てください。[p]
そこには素晴らしい牧師先生もいらっしゃるんですよ？[r]もともとプロのヨット乗りの方でして、それから…[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（集会か…たしかに情報収集には良いかもしれない。）[p]
[_tb_end_text]

[name_watari]

[tb_start_text mode=1 ]
あなたの働きが祝されますように、お祈りしてますよ。[p]
[font color=#FFF100] ＜ROOTS（ルーツ）＞ [resetfont]にもクリスチャンの集いの為のページと掲示板があります。[r]そこで集会とかの情報も載ってますから、よかったらぜひ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
るーつ…？何ですかそれは？[p]
[_tb_end_text]

[name_watari]

[tb_start_text mode=1 ]
あぁ、携帯端末とかで使えるアプリですよ。[r]色んな個人やコミュニティが各自で小さいホームページを作ってシェアできるんですよ。[r]便利な時代ですよね。[p]
でも、良いものばかりではないですよ？[r]異端っぽい変なページも多くて、困りますよね。[p]
そういうのは目に入っただけで誘惑になったり、悪魔の攻撃につながってしまうんですよ。[r]だから片っ端から非表示にしてしまうのがオススメですよ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ルーツ？ですね。わかりました。ありがとうございます。[r]帰ったらチェックしてみます。[p]
（悪いものは片っ端から非表示にして、見ないようにする…か。）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（ワタリさんか…この人は…。）
[_tb_end_text]

[wait  time="1500"  ]
[glink  color="black"  storage="chapter202.ks"  size="25"  text="善悪を正しく見抜く力がある"  autopos="true"  target="*feeling1"  ]
[glink  color="black"  storage="chapter202.ks"  size="25"  text="未信者を見ず、街の現状から目を背けている"  target="*feeling2"  ]
[glink  color="black"  storage="chapter202.ks"  size="25"  text="とても優しい人だ"  target="*feeling3"  ]
[s  ]
*feeling1

[name_clear]

[tb_start_text mode=1 ]
この人は善悪を正しく見抜く力があると感じた。[p]
悪いものとの交流をシャットアウトすることで自分を守れる。[r]自分もこれを忘れないようにしよう。[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=3"  name="faith"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=3"  name="knowledge"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.occult-=6"  name="occult"  cmd="-="  op="t"  val="6"  val_2="undefined"  ]
[jump  storage="chapter202.ks"  target="*watari_common"  ]
*feeling2

[name_clear]

[tb_start_text mode=1 ]
悪いものを全て非表示にしてしまう。[r]きっとそこにはまだ救われていない人が、大勢いることだろう。[p]
自分達が目を閉じれば、その人たちはどうなってしまうのだろうか。[p]
[_tb_end_text]

[tb_eval  exp="f.passion+=4"  name="passion"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.faith-=3"  name="faith"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.empathy-=1"  name="empathy"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="chapter202.ks"  target="*watari_common"  ]
*feeling3

[name_clear]

[tb_start_text mode=1 ]
この人はとても優しい人だ。[r]見ず知らずの自分でさえ、優しく迎えてくれた。[p]
[_tb_end_text]

[tb_eval  exp="f.empathy+=1"  name="empathy"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_system]

[jump  storage="chapter202.ks"  target="*watari_common"  ]
*watari_common

[name_you]

[tb_start_text mode=1 ]
（ルーツか…。ネット掲示板みたいなものか？）[r]（そういうサービスがあるなら良い情報源になりそうだな。今晩、調べてみるか…。）[p]
[_tb_end_text]

[jump  storage="chapter203.ks"  target=""  ]
*bookstore

[name_you]

[tb_start_text mode=1 ]
（情報収集で最適な場所と言えば本屋だ。）[r]（本屋を見れば、この街の人間が何を求めているかが理解できる。）[p]
（この街で１番大きな本屋と言えば…ショッピングモール内にあったはずだ。）[r]（さっそく行ってみよう。）[p]
[_tb_end_text]

[place_title text="ショッピングモール"]

[playbgm  volume="40"  time="1000"  loop="true"  storage="Sweet-vermouth.mp3"  fadein="true"  ]
[place_bg storage="shopping-mall_entrance.png"]

[name_you]

[tb_start_text mode=1 ]
（街の新スポットを調べるつもりだったが、結局ショッピングモールに来てしまった…。）[p]
（ここの本屋はまだ行ったことがない。まだ調べてない新しいスポットだ。）[r]（…そういうことにしておこう。）[p]
[_tb_end_text]

[place_title text="書店"]

[place_bg storage="shopping-mall_book.png"]

[name_clear]

[tb_start_text mode=1 ]
それなりに大きな書店だった。嬉しいことに立ち読みしやすい環境になっている。[p]
しかし、問題もある。書店の隣がイベントスペースになっているのだ。[p]
何も無い日なら良いが、今日はイベント日のようだ。[r]快活な女性が向こうで何やら喋っている。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ゆっくり立ち読みしたいが、隣のイベントスペースも騒がしくなってきた。）[p]
[_tb_end_text]

*reading

[tb_start_text mode=4 ]
（さて、どの本を読んでみるか…。それともイベントスペースに行くか？）
[_tb_end_text]

[wait  time="1500"  ]
[if exp="f.ch2_book1_done == 0"]

[glink  color="black"  storage="chapter202.ks"  size="25"  text="現代人の為の教会と祈り"  autopos="true"  target="*book1"  ]
[else]

[glink  color="gray"  storage="chapter202.ks"  size="25"  text="現代人の為の教会と祈り"  autopos="true"  target="*reading"  ]
[endif]

[if exp="f.ch2_book2_done == 0"]

[glink  color="black"  storage="chapter202.ks"  size="25"  text="誰も愛さない人間になろう"  autopos="true"  target="*book2"  ]
[else]

[glink  color="gray"  storage="chapter202.ks"  size="25"  text="誰も愛さない人間になろう"  autopos="true"  target="*reading"  ]
[endif]

[if exp="f.ch2_book3_done == 0"]

[glink  color="black"  storage="chapter202.ks"  size="25"  text="みるみる開く！？あなたの開運ガイド！！龍神パワー特集号"  autopos="true"  target="*book3"  ]
[else]

[glink  color="gray"  storage="chapter202.ks"  size="25"  text="みるみる開く！？あなたの開運ガイド！！龍神パワー特集号"  autopos="true"  target="*reading"  ]
[endif]

[glink  color="black"  storage="chapter202.ks"  size="25"  text="イベントスペースを見に行く"  autopos="true"  target="*event_space"  ]
[s  ]
*book1

[eval exp="f.ch2_book1_done = 1"]

[name_clear]

[tb_start_text mode=1 ]
「現代人の為の教会と祈り」[p]
現代において、情報の多元化、自己探求機会の豊富さがもたらす[r]個人の信仰のスタイルは非常に多角的である。[p]
それらに対し、キリストの身体なる教会は、[r]絶対にして唯一なる真理に基づく存在性を維持しなければならない。[p]
しかし、それらの真理は各信仰者の自己経験の多様性と相反するものではない。[r]現代の教会は絶対的な真理と個々の信仰と人格、[r]つまり霊的なダイバーシティの融和する地点であらねばならない。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（なるほどな…。たしかにそうかもしれない。）[r]（真理は１つだが、人と神様との交わりはそれぞれ全てユニークなものだ。）[p]
（他に面白そうな本はないだろうか？）[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="chapter202.ks"  target="*reading"  ]
*book2

[eval exp="f.ch2_book2_done = 1"]

[name_clear]

[tb_start_text mode=1 ]
「誰も愛さない人間になろう」[p]
あなたはあなた自身にとって特別な存在であり、もっとも大事な物です。[r]他の誰かの顔色を伺うことでどれだけの労力がかかることでしょう？[p]
陰口やひどい言動をあなたに向けてくることもあります。[r]その人はあなたにとって他人です。[r]あなたはあなた自身を愛すれば良いんです。[p]
今あなたは、あなたの人生と無関係な障害物の為に[r]時間と人生を捧げていると言えるのではないでしょうか？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（たしかに自分を愛することも大事だ。）[r]（ただ、誰かを愛さなくても良いというわけではないだろう。）[p]
（愛せない時もあるかもしれない。でも、それで終わりではいけないはずだ。）[p]
（他に面白そうな本はないだろうか？）[p]
[_tb_end_text]

[tb_eval  exp="f.faith-=2"  name="faith"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.empathy-=2"  name="empathy"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.passion-=2"  name="passion"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="chapter202.ks"  target="*reading"  ]
*book3

[eval exp="f.ch2_book3_done = 1"]

[name_clear]

[tb_start_text mode=1 ]
「みるみる開く！？あなたの開運ガイド！！龍神パワー特集号」[p]
パワースポット巡りで今年は金運アップ間違いなし！！[r]特にオススメなのが龍神パワーが満ちたスポットです。[p]
龍神様はもともと蛇でしたが、大きな力をつけて今では神様として人々を守っています。[r]その力をまっすぐ受け止めるのが成功の秘訣！！[p]
龍は強いエネルギーを持つ存在なので、波動の高い人や、[r]目標に向かって真っ直ぐ進む人に寄り添う傾向があります。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（もともと蛇だったのか…。聖書的に見ると蛇にあまり良いイメージは無い。）[p]
（その蛇を神として崇拝する…そういうことなんだろう。）[p]
（これは異端寄りな本だな。他に面白そうな本はないだろうか？）[p]
[_tb_end_text]

[tb_eval  exp="f.occult+=3"  name="occult"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.spiritual+=1"  name="spiritual"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.faith-=2"  name="faith"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=1"  name="knowledge"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="chapter202.ks"  target="*reading"  ]
*event_space

[name_you]

[tb_start_text mode=1 ]
（イベントスペースが騒がしくなってきたな…。）[r]（遠くから見るだけなら無料だろうし、少し覗いてみるか。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺はそのままイベントスペースへと向かった。[p]
そこでは公開ヨガ教室？のような不思議なイベントが開催されていた。[r]４人ほどの参加者がいるようだ。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="shopping-mall_yoga.png"  ]
[name_instructor]

[tb_start_text mode=1 ]
はいじゃあそのまま、お腹の奥から息が抜けるのをイメージしたまま２０秒。[p]
あ、良いですね！！今＜繋がって＞いますよ！！[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（なんだあれは…？）[r]（体操教室？のようにも見えるが…。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺はその光景を不思議そうに眺めていた。[r]すると近くにいた女性からチラシを渡された。[p]
[_tb_end_text]

[chara_show  name="チラシ配りの女性"  time="1000"  wait="true"  storage="chara/7/flyer.png"  width="773"  height="1154"  left="275"  top="69"  reflect="false"  ]
[name_flyer]

[tb_start_text mode=1 ]
よかったらどうぞ♪[r]今、公開セミナー中で実際にみなさんの前で心と体のストレッチをしてるんですよ。[p]
興味をお持ちなら体験入学してみては？[r]あなたも変わりますよ？[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
渡されたチラシにはこう書かれている。[p]
「痩せる身体を作る！？ 呼吸で覚醒体験会」[r]「姿勢改善・生活習慣病予防・自己実現」[r]「叶える力は身体から」[p]
[_tb_end_text]

[name_flyer]

[tb_start_text mode=1 ]
どうですか？興味とかあります？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=4 ]
（これは…少し怪しいが…。）
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter202.ks"  size="25"  text="あまり興味は無い"  target="*seminar_no"  ]
[glink  color="black"  storage="chapter202.ks"  size="25"  text="もっと聞かせて"  target="*seminar_yes"  ]
[s  ]
*seminar_no

[tb_eval  exp="f.faith+=3"  name="faith"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.occult-=5"  name="occult"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
あまり興味は無いですね。[p]
[_tb_end_text]

[name_flyer]

[tb_start_text mode=1 ]
あら、そうですか…。[p]
それじゃあ興味が湧きましたら[r][font color=#FFF100] ＜ROOTS（ルーツ）＞ [resetfont]にもページと掲示板があるので、それを見てくださいね♪[r]イベントとかの最新情報も載せてあるので、良かったら確認してください♪[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
わかりました。ありがとうございました。[p]
（ルーツって何だ…？）[p]
（ページがある？ ネットのホームページみたいなものか？）[r]（それならば、このよくわからないセミナー以外にも色々なページがあるのか？）[p]
（今晩、調べてみるか…。）[p]
[_tb_end_text]

[jump  storage="chapter203.ks"  target=""  ]
*seminar_yes

[tb_eval  exp="f.occult+=4"  name="occult"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.spiritual+=1"  name="spiritual"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.faith-=2"  name="faith"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
面白そうですね。詳しく聞かせてほしいです。[p]
[_tb_end_text]

[name_flyer]

[tb_start_text mode=1 ]
もちろんいいですよ♪[p]
たとえば今、あそこで皆さんがやっているポーズ。[r]あれは＜泉の呼吸＞をするものなんですけどね、[p]
あれをすることにより、自分の内側にある＜本来の自分＞が湧き上がって、[r]自分を包み、そして最終的には＜アセンション＞するんですよ。[p]
そうすることによって＜スターシード＞としての自己を本当の意味で、[r]頭でなく、心と＜存在＞で理解できるようになります。[p]
しかも！！周りの人とも同時にすることにより、[r]さらに＜チャネリング＞の質とエネルギーの…[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…？[p]
よくわかりました？？？ゆっくり楽しんでください。[p]
[_tb_end_text]

[name_flyer]

[tb_start_text mode=1 ]
わかってくれましたか！？嬉しいです～！！[p]
あ、[font color=#FFF100] ＜ROOTS（ルーツ）＞ [resetfont]やってます！？[r]そこにもイベントとかの最新情報を載せてあるので、良かったら確認してくださいね♪[p]
ファン同士のコミュニティもあるんですよ。[r]そこでは今の肉の自己を持つ私達でも密接に触れ合うことができて、それから…[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…？？？[p]
はい、ありがとうございました？？？[p]
（ルーツって何だ…？ ネット掲示板みたいなものか？）[r]（そういうサービスがあるならこの街での情報源になりそうだな。）[p]
（今晩、調べてみるか…。）[p]
[_tb_end_text]

[jump  storage="chapter203.ks"  target=""  ]
