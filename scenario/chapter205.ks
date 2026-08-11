[_tb_system_call storage=system/_chapter205.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text="自宅"]


;==================================================
; chapter205 専用フラグ初期化
;==================================================


[eval exp="f.ch2_prep_phone_done = 0"]

[eval exp="f.ch2_prep_roots_done = 0"]

[eval exp="f.ch2_prep_bible_done = 0"]

[eval exp="f.ch2_prep_count = 0"]

[eval exp="f.ch2_local_board_done = 0"]

[eval exp="f.ch2_dream_board_done = 0"]

[playbgm  volume="50"  time="1000"  loop="true"  storage="ブレンド.mp3"  fadein="true"  ]
[place_bg storage="room205.png"]

[name_you]

[tb_start_text mode=1 ]
（ノダさんと食事か…。）[p]
（明日は何かが動きそうだ…。）[r]（しっかり備えておかなくては…。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
色々やりたいことがあるが、全部をやると寝不足になるだろう。[r]明日に悪い影響が出るかもしれない。[p]
[_tb_end_text]

*prep_menu

[name_you]

[tb_start_text mode=4 ]
（さて、何をしようか…聖書は読んでおきたいが…。）
[_tb_end_text]

[wait  time="1000"  ]
[if exp="f.ch2_prep_phone_done == 0"]

[glink  color="black"  storage="chapter205.ks"  size="25"  text="コタニに電話"  target="*prep_phone"  ]
[else]

[glink  color="gray"  storage="chapter205.ks"  size="25"  text="コタニに電話"  target="*prep_menu"  ]
[endif]

[if exp="f.ch2_prep_roots_done == 0"]

[glink  color="black"  storage="chapter205.ks"  size="25"  text="ROOTSで情報収集"  target="*prep_roots"  ]
[else]

[glink  color="gray"  storage="chapter205.ks"  size="25"  text="ROOTSで情報収集"  target="*prep_menu"  ]
[endif]

[if exp="f.ch2_prep_bible_done == 0"]

[glink  color="black"  storage="chapter205.ks"  size="25"  text="聖書を読む"  target="*prep_bible"  ]
[else]

[glink  color="gray"  storage="chapter205.ks"  size="25"  text="聖書を読む"  target="*prep_menu"  ]
[endif]

[glink  color="black"  storage="chapter205.ks"  size="25"  text="今日はもう寝よう"  target="*prep_sleep"  ]
[s  ]
*prep_phone

[eval exp="f.ch2_prep_phone_done = 1"]

[eval exp="f.ch2_prep_count += 1"]

[name_you]

[tb_start_text mode=1 ]
コタニと電話しておこう。[r]アイツに色々相談できるかもしれない。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺はコタニに通話した。[r]夜中だが出てくれるだろうか…。[p]
[_tb_end_text]

[tb_image_show  time="0"  storage="default/item-frame.png"  width="424"  height="424"  x="818"  y="60"  _clickable_img=""  name="img_43"  ]
[tb_image_show  time="1000"  storage="default/phone3.png"  width="218"  height="326"  x="920"  y="119"  _clickable_img=""  name="img_43"  ]
[playse  volume="70"  time="1000"  buf="0"  storage="携帯電話の着信音3.mp3"  loop="true"  ]
[wait  time="4000"  ]
[stopse  time="1000"  buf="0"  ]
[name_kotani]

[tb_start_text mode=1 ]
あ、お疲れー。[p]
ちょっと料理しながらでもいい？[r]ちょうどフライパン握っててさ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あぁ、別に問題ない。[r]（なんでこんな夜中に料理してんだ？）[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
それでどうしたの？[r]あ、もしかして祈りの家チャーチの集会行ってきたの？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
よくわかったな。何で知ってんだ？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
集会テーマの＜遣わされた人＞。[r]それにキミが反応するかもって思ってたのよね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
はぁ、コタニは意外と勘が鋭いんだな。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
まぁね。[p]
で、どうだった？良い先生だったでしょ？ハナフサ先生だっけ？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そうだな、悪くないメッセージだった。[p]
だがそれよりも集会後に、[r]ノダさんって人に声をかけられてさ…[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺は今日あったこと、[r]そして明日、ノダさんと食事に行くことをコタニに説明した。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
なるほどねー。[r]そういう人にイエス様のこと伝えるの、かなり時間かかるよね。[p]
で、結局救われないってパターンも少なくないからさ。[r]こっちも根気がいるよね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そうだな…。[p]
なぁ、聖書しか知らないってどう思う？[r]コタニは、それが弱いと思うか？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
ふーん…なるほどね…。[p]
たしかに世のことも知らないと、強くはなれないかもね。[p]
でも…弱くても良いんじゃないかな？[p]
＜弱い時にこそ強い＞。それも真理の１つだよ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…。[p]
そうかもな、ありがとう。大事なことを忘れかけてた気がする。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
何かあったら連絡してよね。[p]
うぉ！？ やばい…パンケーキ焦げてるよ…。[p]
また連絡してね。じゃあね、シャローム！！[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あぁ、シャローム。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[jump  storage="chapter205.ks"  target="*prep_menu"  ]
*prep_roots

[eval exp="f.ch2_prep_roots_done = 1"]

[eval exp="f.ch2_prep_count += 1"]

[name_you]

[tb_start_text mode=1 ]
（まずいな、ROOTSが気になってきた。）[r]（ネットサーフィンにハマらないようにしなければ…。今日で最後にしよう。）[p]
[_tb_end_text]

[playbgm  volume="60"  time="1000"  loop="true"  storage="Calm-Cosmos.mp3"  fadein="true"  ]
[bg  time="1000"  method="crossfade"  storage="roots_2.png"  ]
[name_you]

[tb_start_text mode=1 ]
（今、このエリア付近で盛り上がっている掲示板は…この２つか…。）[r]（どちらを見ようか…。）[p]
[_tb_end_text]

*prep_roots_menu

[wait  time="1000"  ]
[if exp="f.ch2_local_board_done == 0"]

[glink  color="black"  storage="chapter205.ks"  size="25"  text="聖見商店街&nbsp;愛好家の集い"  target="*prep_board_local"  autopos="true"  ]
[else]

[glink  color="gray"  storage="chapter205.ks"  size="25"  text="聖見商店街&nbsp;愛好家の集い"  target="*prep_roots_menu"  autopos="true"  ]
[endif]

[if exp="f.ch2_dream_board_done == 0"]

[glink  color="black"  storage="chapter205.ks"  size="25"  text="頭の形をした夢"  target="*prep_board_dream"  autopos="true"  ]
[else]

[glink  color="gray"  storage="chapter205.ks"  size="25"  text="頭の形をした夢"  target="*prep_roots_menu"  autopos="true"  ]
[endif]

[glink  color="black"  storage="chapter205.ks"  size="25"  text="興味のあるものはなさそうだ"  target="*prep_roots_return"  x="0"  y="0"  width=""  height=""  _clickable_img=""  autopos="true"  ]
[s  ]
*prep_board_local

[eval exp="f.ch2_local_board_done = 1"]

[tb_eval  exp="f.knowledge+=3"  name="knowledge"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[roots_board_open thread="＜聖見商店街 愛好家の集い＞"]

[roots_post user="YMS-15" text="模型屋のじいさん最近見ないけど何で？/nデザインナイフどこに売ってんの"]

[roots_post user="StandingSOBA" text="マルフジ模型のこと？/n１年ぐらい前から閉店。/nデザインナイフはモールの文具屋いけ"]

[roots_post user="fishborn" text="シャッター街です。終わりです。"]

[roots_post user="Kyo-Raku" text="昔の店ほとんど無くなってる…。"]

[roots_post user="Satsutaba100" text="キ〇ガイがうろついているキショい場所"]

[roots_post user="Jail2U" text="ハンコ屋まだあるよ"]

[roots_post user="21BoundDOG" text="行かねぇよカス"]

[roots_post user="8ponfeets" text="ヨガ？ 気功セミナーあるよ"]

[roots_post user="21BoundDOG" text="行かねぇよカス"]

[roots_post user="MotokanoJcup" text="探偵事務所あるよ"]

[roots_post user="21BoundDOG" text="行かねぇよカス"]

[roots_post user="Tenpura-Kishi-Dan" text="↑↑探偵事務所潰れてるわカス"]

[roots_post user="Kyo-Raku" text="インドカレー屋はまだあるよ"]

[roots_post user="1024x2" text="↑あそこぐらいだね用事あるとしたら"]

[roots_post user="236236PPP" text="アオハルが時々いるだろ、あんまアレだけど"]

[roots_post user="fishborn" text="っていうか昔に比べて雰囲気が悪い。/nヨガとか心のセラピーとか占いとかキモい。/nメンヘラ女しか行きません。"]

[roots_post user="RaiD4444N" text="↑それとアス系のアングラ人間"]

[roots_post user="Baka2Kaba" text="アステリアのステッカー貼ってるやつ何なの"]

[roots_post user="fishborn" text="解散。ショッピングモール行くわ"]

[roots_post user="3ManaTap" text="勝手に解散させるな。商店街返せ。"]

[roots_board_close]

[name_you]

[tb_start_text mode=1 ]
（あの商店街の雰囲気が悪いと感じていたのは、自分たちだけではないのか…。）[p]
（やっぱりあそこには何かがあるのかもしれないな。）[p]
[_tb_end_text]

[jump  storage="chapter205.ks"  target="*prep_roots_menu"  ]
*prep_board_dream

[eval exp="f.ch2_dream_board_done = 1"]

[roots_board_open thread="＜頭の形をした夢＞"]

[roots_post user="Tri-Heads" text="ああああああああああああ音がする。/n俺を責める音が降ってきた。/n音が俺に溺れるように"]

[roots_post user="Tri-Heads" text="許してくれ、夢を舐めて味を知りたかっただけなんだ。"]

[roots_post user="Tri-Heads" text="お前、戻ってきたのか？いなくなったはずじゃ？"]

[roots_post user="Tri-Heads" text="あなたもドラムを叩いてみたら？/n脳から汁がドバドバ出ますよ。最高ですよ。/n幸せの汁です。これがあの幸せの汁です。"]

[roots_post user="Tri-Heads" text="そしたらその汁が誰も見たこともないような美しい劇場に変わるんだ。"]

[roots_post user="Tri-Heads" text="ドラムは終わり！！時代はナイフのジャグリング！！"]

[roots_post user="Tri-Heads" text="音符を集めるシンバル猿はssssssssssssssssss潰れた"]

[roots_post user="Tri-Heads" text="エレベーターじゃないと上には行けないぞ？/nメイン通路の奴は電池切れで動けないはずだ。"]

[roots_post user="Tri-Heads" text="俺の楽屋には入るな。"]

[roots_post user="Tri-Heads" text="集合の合図集合の合図集合の合図集合の合図集合の合図集合の合図集合の合図集合の合図"]

[roots_post user="Tri-Heads" text="ここは俺達だけの場所。/n夢を見るなら楽屋へ行け。/n寝るならそこでじっとしてろ。"]

[roots_post user="Tri-Heads" text="おい、ここは俺達だけの掲示板だ。/nさっきから誰が覗いてるんだ？"]

[roots_post user="Tri-Heads" text="おい、お前だろ？/nたしかに俺たちはバラバラだ。/nでも、お前は俺じゃないんだろ？"]

[roots_post user="Tri-Heads" text="さっさと出ていけ。/n楽しいショーは今日じゃないんだ。わかるだろ？/nだからすぐに出ていけ！！"]

[roots_post user="ROOTS SYSTEM" text="※あなたは管理者からキックされました。メインページに戻ります。※"]

[roots_board_close]

[name_you]

[tb_start_text mode=1 ]
（なんだ今の掲示板は…？）[r]（狂った奴が１人で書き込み続けていたようだが…こっちまで気が狂いそうだ。）[p]
（再アクセスはやめておこう。）[p]
[_tb_end_text]

[tb_eval  exp="f.empathy-=3"  name="empathy"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=2"  name="knowledge"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="chapter205.ks"  target="*prep_roots_menu"  ]
*prep_roots_return

[name_you]

[tb_start_text mode=1 ]
（見たいものはもう特に無さそうだ…。）[p]
[_tb_end_text]

[place_bg storage="room205.png"]

[playbgm  volume="50"  time="1000"  loop="true"  storage="ブレンド.mp3"  fadein="true"  ]
[jump  storage="chapter205.ks"  target="*prep_menu"  ]
*prep_bible

[eval exp="f.ch2_prep_bible_done = 1"]

[eval exp="f.ch2_prep_count += 1"]

[name_you]

[tb_start_text mode=1 ]
（やっぱり聖書を読んでおこう。）[r]（今日の集会で取り上げられていた箇所はどこだっけ…。）[p]
（あった…これだ。）[p]
[_tb_end_text]

[name_bible]

[tb_start_text mode=1 ]
新約聖書 コリント人への第二の手紙 １２：１０[r]それゆえ、わたしは弱さ、侮辱、窮乏、迫害、そして行き詰まりの状態にあっても、[r]キリストのために満足しています。[r]なぜなら、わたしは弱いときにこそ強いからです。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（キリスト教は弱い。ノダさんはそう言っていた。）[p]
（でも、本当の強さはその弱さの先にあるはず。俺はそう信じたい。）[p]
[_tb_end_text]


;==================================================
; 聖書予習
;==================================================


*prep_devotion

[tb_start_text mode=4 ]
（明日は戦いが待ってるかもしれない。）[r]（邪悪な奴らの嘘にも対抗できるように、他にもある程度勉強しておこう。）
[_tb_end_text]

[wait  time="2000"  ]
[glink  color="black"  storage="chapter205.ks"  size="25"  text="知識や情報が不可欠であるという嘘に対して"  target="*prep_bible1"  ]
[glink  color="black"  storage="chapter205.ks"  size="25"  text="世の中に順応していくべきという嘘に対して"  target="*prep_bible2"  ]
[glink  color="black"  storage="chapter205.ks"  size="25"  text="人間の知性が平安をもたらすという嘘に対して"  target="*prep_bible3"  ]
[glink  color="black"  storage="chapter205.ks"  size="25"  text="勉強はもう十分"  target="*prep_menu"  ]
[s  ]
*prep_bible1

[name_bible]

[tb_start_text mode=1 ]
旧約聖書 箴言 ３：５～６[r]心をつくして主に信頼せよ、自分の知識にたよるな。[r]あなたの行く所どこでも、主を認めよ。そうすれば、主はあなたの道をまっすぐにされる。[p]
[_tb_end_text]

[jump  storage="chapter205.ks"  target="*prep_devotion"  ]
*prep_bible2

[name_bible]

[tb_start_text mode=1 ]
新約聖書 ローマ人への手紙 １２：２[r]あなたがたは、この世と妥協してはならない。[r]むしろ、心を新たにして自分を変え、何が神の御旨であるか、[r]何が良いことで、神に受けいれられ、かつ完全であるかを見わけるがよい。[p]
[_tb_end_text]

[jump  storage="chapter205.ks"  target="*prep_devotion"  ]
*prep_bible3

[name_bible]

[tb_start_text mode=1 ]
新約聖書 フィリピ人への手紙 ４：７[r]そうすれば、人間のすべての考え、理性・理解をはるかに超えた神の平安が、[r]あなたがたの心と思いとを、キリスト・イエスにあって守るであろう。[p]
[_tb_end_text]

[jump  storage="chapter205.ks"  target="*prep_devotion"  ]
[name_you]

[tb_start_text mode=1 ]
勉強はこの程度にしておこう。[p]
[_tb_end_text]

[jump  storage="chapter205.ks"  target="*prep_menu"  ]
*prep_sleep

[if exp="f.ch2_prep_count >= 3"]

[tb_eval  exp="f.mental-=3"  name="mental"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
夜更かしをしてしまった。完全に寝不足だ。[r]あなたの＜精神＞が少し低下した。[p]
[_tb_end_text]

[endif]

[name_you]

[tb_start_text mode=1 ]
もうこんな時間だ…今日は寝よう。[p]
[_tb_end_text]

[stopbgm  time="3000"  fadeout="true"  ]
[jump  storage="chapter206.ks"  target=""  ]
