[_tb_system_call storage=system/_chapter208.ks]

*start

[call  storage="system/_chapter_init.ks"  target=""  ]
[eval exp="f.mental_warning_done = 0"]
[cm  ]

; gameover.ks 共通リトライ用：Chapter208から倒れた場合はこの章の開始地点へ戻す


[eval exp="f.gameover_retry_id = 208"]

[if exp="typeof f.noda_route === 'undefined'"]

[eval exp="f.noda_route = 0"]

[endif]


; chapter208内の手術室発見フラグ


[eval exp="f.ch2_noda_surgery_hint = 0"]

[if exp="f.noda_route == 1"]

[jump  storage="chapter208.ks"  target="*dive_door_a"  ]
[else]

[jump  storage="chapter208.ks"  target="*dive_door_b"  ]
[endif]


;==================================================
; ダイブ前の扉
;==================================================


*dive_door_b

[playse  volume="15"  time="1000"  buf="0"  storage="呼吸音.mp3"  loop="true"  fadein="true"  ]
[place_title text=""]

[place_bg storage="dive-door_damaged.png"]

[name_clear]

[tb_start_text mode=1 ]
これがノダさんの心の扉。[p]
この扉の向こうの世界、そのどこかに彼が囚われている。[p]
その扉は重く、そして固く閉ざされているようだ。[r]ドアノブも鋭く裂けて、刃物のように尖っている。[p]
ダイブまでに十分に彼の心を開くことができなかったようだ…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（この状態でのダイブには少し痛みを伴うだろう。）[r]（だが仕方ない。このまま開けよう。）[p]
[_tb_end_text]

[glink  color="black"  storage="chapter208.ks"  size="30"  text="開ける"  target="*dive_penalty"  autopos="true"  ]
[s  ]
*dive_penalty

[mental_damage value="15"]

[playse  volume="100"  time="0"  buf="2"  storage="鉄の扉を開ける.mp3"  ]
[jump  storage="chapter208.ks"  target="*hospital_start"  ]
*dive_door_a

[playse  volume="15"  time="1000"  buf="0"  storage="呼吸音.mp3"  loop="true"  fadein="true"  ]
[place_title text=""]

[place_bg storage="dive-door.png"]

[name_clear]

[tb_start_text mode=1 ]
これがノダさんの心の扉。[p]
無事にたどり着けたということは、ノダは少しだけ心を自分に開いてくれたのだ。[p]
彼は自分を信頼してくれた。信頼とは大きな勇気が伴う行為だ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（この扉の向こうの世界に彼が囚われている。よし、行こう。）[p]
[_tb_end_text]

[glink  color="black"  storage="chapter208.ks"  size="30"  text="開ける"  target="*dive_safe"  autopos="true"  ]
[s  ]
*dive_safe

[playse  volume="100"  time="0"  buf="2"  storage="鉄の扉を開ける.mp3"  ]
[jump  storage="chapter208.ks"  target="*hospital_start"  ]
*hospital_start

[place_title text="＜ノダ＞心の世界"]

[playbgm  volume="80"  time="1000"  loop="true"  storage="軋み.mp3"  ]
[place_bg storage="noda-hospital_entrance.png"]

[show_dive_gauge]

[name_you]

[tb_start_text mode=1 ]
（ここは…病院のようにも見えるが…。）[p]
（どうして病院なのだろうか…ノダさんは医療関係者ではなかったはずだ。）[p]
（フロア案内表によると、俺は今１Ｆの受付？エントランスにいるようだ。）[r]（彼を見つけなくてはいけない。）[p]
[_tb_end_text]

[jump  storage="chapter208.ks"  target="*floor1_s"  ]
*floor_2

[mental_damage value="5"]

[place_title text="ノダの心の世界/n２Ｆ　ロビー"]

[place_bg storage="noda-hospital_lobby.png"]

[name_clear]

[tb_start_text mode=1 ]
２Ｆに到着した。[r]開けたエリアがあり、ここは診察待ち患者のロビーのようだ。[r]しかし、そこには異様な光景が広がっていた。[p]
それは「展示スペース」であった。そこにはまず写真が展示されていた。[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/noda-daughter.png"  width="536"  height="402"  x="391"  y="118"  _clickable_img=""  name="img_57"  ]
[name_clear]

[tb_start_text mode=1 ]
小学生ぐらいの女の子が写った写真。[r]写真の中でその子は楽しそうに微笑んでいる。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（この子はノダさんの娘さんだな。）[r]（彼が１番大事にしてたものだ。今でもこの子を深く愛しているのだろう。）[p]
（それよりも気になるのは別の展示だ。）[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_clear]

[tb_start_text mode=1 ]
展示は写真だけではない。別の物もある。[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/exhibit1.png"  width="604"  height="604"  x="367"  y="39"  _clickable_img=""  name="img_65"  ]
[name_clear]

[tb_start_text mode=1 ]
そこには摘出された臓器や人の部位などが展示されていたのだ。それもただの臓器ではない。[p]
それは醜く歪み、金属片のような物が埋め込まれている。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（これは…貨幣か？）[r]（いやそれだけではない、ネックレスや車の鍵、色々な物が埋め込まれているようだ。）[p]
（これもノダの物だったのだろうか？）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
醜いコレクションに関して様々な思考を巡らせた。[p]
そして１つ気になった点があった。[r]展示物には全て日付が記載されているという点だ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（やはりそうだ…これもつい先日の物だ。）[p]
（もしかしてこれは、最近本人から＜摘出＞されたものなのか？）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
彼から大切にしていた物を摘出し、展示して見せつける。[r]非常に悪質な攻撃だ。[p]
ノダさんが受けているダメージはかなり大きいだろう。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（こんな摘出手術をするとしたら…もしかしたら１Ｆか？）[r]（たしか１Ｆには手術室があったはずだ。）[p]
（ノダさんはそこにいるかもしれない。）[p]
[_tb_end_text]

[eval exp="f.ch2_noda_surgery_hint = 1"]

[if exp="f.passion <= 56"]

[name_you]

[tb_start_text mode=1 ]
（うぅ…それにしても悪趣味な展示だ…。）[r]（グロいのは苦手だ…吐き気がする。）[p]
[_tb_end_text]

[mental_damage value="6"]

[name_system]

[tb_start_text mode=1 ]
ステータス：＜情熱＞の値によっては苦手な物に対する耐性を獲得することもあります。[r]今回は情熱が十分ではなかったので、あなたは精神にダメージを受けました。[p]
[_tb_end_text]

[endif]

[tb_image_hide  time="1000"  ]
[name_clear]

[tb_start_text mode=1 ]
ここにノダさんの姿は見当たらない。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（さて…どこを探そうか。）[p]
[_tb_end_text]

[cm  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="２Ｆ　病棟"  target="*floor_2_ward"  autopos="true"  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="１Ｆ　エントランス"  target="*floor_1"  autopos="true"  ]
[s  ]

;==================================================
; ２階病棟／病室213
;==================================================


*floor_2_ward

[mental_damage value="3"]

[place_title text="ノダの心の世界/n２Ｆ 病棟"]

[place_bg storage="noda-hospital_ward.png"]

[name_clear]

[tb_start_text mode=1 ]
ここは入院用の病棟エリアのようだ。[r]どこかにノダさんが使用している病室があるかもしれない。[p]
それから、しばらく歩き回り、それを見つけることができた。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="noda-hospital_ward-door.png"  ]
[name_you]

[tb_start_text mode=1 ]
（２１３号室、ノダ　ヒロアキ…。）[p]
（あった、多分これだ。彼はここにいる可能性が高い。）[p]
（よし、入ってみよう。）[p]
[_tb_end_text]

[mental_damage value="2"]

[playse  volume="100"  time="0"  buf="0"  storage="玄関ドアを開ける.mp3"  fadein="false"  ]
[place_title text="ノダの心の世界/n２Ｆ　２１３号室"]

[place_bg storage="noda-hospital_room.png"]

[name_clear]

[tb_start_text mode=1 ]
２１３号室。個室の病室であった。しかし、ノダさんの姿は見当たらない。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ここじゃないなら、彼はどこにいるんだ？）[p]
（何かヒントは無いのか？）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
個室を調べてみると、２つの写真が見つかった。[p]
１つはノダと、その家族写真であった。[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/noda-family1.png"  width="564"  height="423"  x="366"  y="88"  _clickable_img=""  name="img_115"  ]
[name_you]

[tb_start_text mode=1 ]
（親子３人が写っている幸せそうな写真だ。）[r]（さっきの展示写真で見た女の子もいる。）[p]
（すると、その隣はノダさんの前の奥さんか？）[p]
（そういえば彼は離婚してから、娘さんに会えなくなったと話していた。）[r]（この時の思い出を彼はずっと抱えているのだろう。）[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_clear]

[tb_start_text mode=1 ]
そして、気になったのはもう１つの写真だ。[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/noda-family2.png"  width="563"  height="422"  x="369"  y="93"  _clickable_img=""  name="img_121"  ]
[tb_start_text mode=1 ]
これもノダが写っている家族写真のようだ。[p]
その写真にはノダと女性、そして高校生ぐらいの女性が写っていた。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（この人達はノダさんの親戚かな？）[r]（彼らの話は何も聞いていないが、幸せそうだ。仲が良かったのだろう。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
（写真を戻そうとした時、フレームの裏側に何か書かれているのが見えた。）[p]
（それは女性の字だった。）[p]
＜ヒロアキへ。いつか本当の家族になれますように。”＞[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ノダさんの顔がほとんど変わってない、おそらく同じ時期の写真だ。）[p]
（同じ時、別の家族。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
そして、俺はなんとなく理解してしまった。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（そうか…ノダさんは不倫をしていたんだ。）[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_you]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
彼が過ちを犯しているのは間違いない。[p]
しかし、これらの問題は彼の心から来ている。彼の心を癒し、解放へ導く。[r]まずはそれが優先だろう。＜過ち＞を指摘するのはそれからでもいい。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（２階にノダさんはいないようだ。）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（別の場所を探してみよう。）
[_tb_end_text]

[glink  color="black"  storage="chapter208.ks"  size="25"  text="１Ｆに戻る"  target="*floor_1"  autopos="true"  ]
[s  ]
*basement

[mental_damage value="4"]

[place_title text="ノダの心の世界/n地下"]

[place_bg storage="noda-hospital_b1.png"]

[name_clear]

[tb_start_text mode=1 ]
病院の地下エリアだ。駐車場やゴミ置き場がある。[p]
そして、ここは病院だ。当然＜あの部屋＞もあるはずだ。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="noda-hospital_morgue-door.png"  ]
[name_you]

[tb_start_text mode=1 ]
（霊安室…亡くなった人を安置する場所。）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
（ノダさんはここにいるのだろうか？）
[_tb_end_text]

[glink  color="black"  storage="chapter208.ks"  size="25"  text="部屋に入る"  target="*morgue_enter"  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="１Ｆに戻る"  target="*morgue_back"  ]
[s  ]
*morgue_back

[name_you]

[tb_start_text mode=1 ]
（ノダさんはまだ生きている。ここに彼はいないだろう。）[r]（とりあえず、１Ｆに戻ってみよう。）[p]
[_tb_end_text]

[jump  storage="chapter208.ks"  target="*floor_1"  ]
*morgue_enter

[name_you]

[tb_start_text mode=1 ]
（ノダさんがこの中にいるのかもしれない。この部屋も調べておこう。）[p]
[_tb_end_text]

[mental_damage value="4"]

[playse  volume="100"  time="1000"  buf="1"  storage="鉄の扉を開ける.mp3"  ]
[place_title text="ノダの心の世界/n地下　霊安室"]

[place_bg storage="noda-hospital_morgue.png"]

[name_clear]

[tb_start_text mode=1 ]
そこは無機質な部屋だった。静かで重く、装飾もない冷たい場所であった。[p]
診察台の上の＜それ＞には白い布をかけられていた。[p]
１人の人がそこにいたのだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（あれは…誰かが亡くなったまま放置されているのか？）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
（少し気は引けるが、確認してみよう。）[p]
[_tb_end_text]

[glink  color="black"  storage="chapter208.ks"  size="25"  text="遺体を確認する"  target="*morgue_check"  autopos="true"  ]
[s  ]
*morgue_check

[name_clear]

[tb_start_text mode=1 ]
それは老婆の姿であった。苦しんだ様子はなく、安らかな顔をしているように見える。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（さっきの店でノダさんが＜おばあちゃんがいたこと＞を少しだけ話していたな。）[p]
（たしか…亡くなったとか言っていた。）[r]（祖母がいなくなってから家庭環境が悪化したらしい。）[p]
（彼は自分のおばあちゃんが大好きだったんだな。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
彼がこの人を失ってから、この部屋はこの姿のまま、この世界に残り続けている。[p]
この場所は時間が止まってしまっているのだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=4 ]
（別の場所を探そう…。ここにノダさんはいない。）
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="１Ｆに戻る"  target="*floor_1"  ]
[s  ]
*floor_1

[mental_damage value="1"]

[place_title text="ノダの心の世界/n１Ｆ　エントランス"]

[place_bg storage="noda-hospital_entrance.png"]

*floor1_s

[if exp="f.ch2_noda_surgery_hint == 1"]

[place_bg storage="noda-hospital_entrance-blood.png"]

[name_clear]

[tb_start_text mode=1 ]
１Ｆのエントランスだが、少し様子がおかしい。腐敗や汚れが充満している。[r]さっき見た時よりも不気味な雰囲気だ。[p]
床の血の跡は手術室の方へ向かっているようだ。[p]
[_tb_end_text]

[else]

[place_bg storage="noda-hospital_entrance.png"]

[name_clear]

[tb_start_text mode=1 ]
１Ｆのエントランスだ。[p]
[_tb_end_text]

[endif]

[name_you]

[tb_start_text mode=1 ]
（ここにノダさんはいないようだ。）[r]（次はどこを探そうか？）[p]
[_tb_end_text]

[cm  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="１Ｆ　調剤室"  target="*pharmacy"  autopos="true"  ]
[if exp="f.ch2_noda_surgery_hint == 1"]

[glink  color="black"  storage="chapter208.ks"  size="25"  text="１Ｆ　手術室"  target="*surgery_check"  autopos="true"  ]
[endif]

[glink  color="black"  storage="chapter208.ks"  size="25"  text="２Ｆ"  target="*floor_2"  autopos="true"  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="地下"  target="*basement"  autopos="true"  ]
[s  ]
*pharmacy

[mental_damage value="4"]

[place_title text="ノダの心の世界/n１Ｆ　調剤室"]

[place_bg storage="noda-hospital_pharmacy.png"]

[name_clear]

[tb_start_text mode=1 ]
調剤室だ。異様な色や臭いの薬が並んでいる。[r]巨大な鋏のようなもの？が机の上に放置されている。[p]
[_tb_end_text]

[tb_image_show  time="0"  storage="default/item-frame.png"  width="424"  height="424"  x="818"  y="60"  _clickable_img=""  name="img_216"  ]
[tb_image_show  time="1000"  storage="default/medicine.png"  width="382"  height="382"  x="840"  y="111"  _clickable_img=""  ]
[name_you]

[tb_start_text mode=1 ]
（これは…ただの薬ではない。）[r]（ラベルには…見たことのない文字が書かれているな。）[p]
（ノダさんが危ない薬物を頼っているような様子はなかったはずだ。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
薬も、ラベルの文字も見たことがないものだ。[r]これは彼が持っていたものとは考えにくい。[p]
＜誰か＞がこの薬をここに持ち込んだのだろう。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_you]

[tb_start_text mode=4 ]
（ここにノダさんはいないようだ。）[r]（別の場所を探してみよう。）
[_tb_end_text]

[glink  color="black"  storage="chapter208.ks"  size="25"  text="エントランスに戻る"  target="*floor_1"  ]
[wait  time="1000"  ]
[s  ]
*surgery_check

[if exp="f.ch2_noda_surgery_hint == 1"]

[jump  storage="chapter208.ks"  target="*surgery_found"  ]
[else]


; 手術室は２Ｆロビー展示スペース確認後に解放する。


[jump  storage="chapter208.ks"  target="*floor_1"  ]
[endif]

*surgery_empty

[mental_damage value="5"]

[place_title text="ノダの心の世界/n１Ｆ　手術室"]

[place_bg storage="noda-hospital_or.png"]

[name_clear]

[tb_start_text mode=1 ]
手術室だ。患者用の拘束台がそこに鎮座している。[p]
周囲には鋏やメスなどの手術道具、そしてトラバサミやペンチなどの物騒な物が転がっている。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（手術室…というよりは拷問部屋に近いな。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
近くの机には、用途の分からないガラス製のカプセルがいくつも転がっている。[p]
何かを入れて保存するためのものだろうか。[r]気味の悪い道具だが、今の俺にはそれ以上のことは分からない。[p]
[_tb_end_text]

[if exp="f.passion <= 56"]

[name_you]

[tb_start_text mode=1 ]
（ここで切開し、摘出して展示品を作る…うっ…吐き気が…。）[p]
[_tb_end_text]

[mental_damage value="7"]

[endif]

[name_you]

[tb_start_text mode=1 ]
（ここにノダさんはいないようだ。）[r]（次はどこを探そうか？）[p]
[_tb_end_text]

[jump  storage="chapter208.ks"  target="*floor_1"  ]
*surgery_found

[mental_damage value="5"]

[place_title text="ノダの心の世界/n１Ｆ　手術室"]

[place_bg storage="noda-hospital_or-door.png"]

[name_clear]

[tb_start_text mode=1 ]
手術室のドアは血で汚れている。扉の奥からは異様な気配がただよっている。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（間違いない。ここにノダさんがいる。）[p]
（そしてヤツもそこにいるだろう…。）[p]
（扉の向こうから異様な気配を感じる。）[r]（身体が重く感じてきた、それに吐き気がしてくる。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=4 ]
今、俺に必要なのは…
[_tb_end_text]

[glink  color="black"  storage="chapter208.ks"  size="25"  text="神の言葉"  target="*prepare_word"  autopos="true"  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="イエスの血潮"  target="*prepare_blood"  autopos="true"  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="悪霊への興味"  target="*prepare_interest"  autopos="true"  ]
[glink  color="black"  storage="chapter208.ks"  size="25"  text="チョコレート"  target="*prepare_chocolate"  autopos="true"  ]
[s  ]
*prepare_word

[tb_eval  exp="f.knowledge+=2"  name="knowledge"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.occult-=5"  name="occult"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
（神の言葉だ。突入前に祈っておこう。）[p]
主よ、今からこの部屋に入ります。[p]
あなたの言葉が、命を与え、守るものとなります。[r]どうかあなたの言葉が私に力を与えてくださいますように。[p]
必要な知恵が与えられますように。[p]
イエス様の御名のもとに祈ります。[r]アーメン。[p]
[_tb_end_text]

[jump  storage="chapter208.ks"  target="*enter_surgery"  ]
*prepare_blood

[tb_eval  exp="f.faith+=2"  name="faith"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.occult-=11"  name="occult"  cmd="-="  op="t"  val="11"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
（イエス様の血潮だ。突入前に祈っておこう。）[p]
主よ、今からこの部屋に入ります。[p]
どうか、この者をあなたの血潮によって清め、守ってくださいますように。[p]
イエス様の御名のもとに祈ります。[r]アーメン。[p]
[_tb_end_text]

[jump  storage="chapter208.ks"  target="*enter_surgery"  ]
*prepare_interest

[tb_eval  exp="f.occult+=13"  name="occult"  cmd="+="  op="t"  val="13"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
（悪霊への興味だ。）[p]
（感じるぞ、この中に悪霊がいる。）[p]
（ノダさんからどんなものが摘出されたのか、調べれば良い情報源になるはずだ。）[r]（知識は必ず武器となる。）[r]（今後のダイブでもきっと役に立つはずだ。）[p]
（悪霊が作るコレクション…しっかりと見せてもらおうか。）[p]
[_tb_end_text]

[jump  storage="chapter208.ks"  target="*enter_surgery"  ]
*prepare_chocolate

[tb_eval  exp="f.mental+=8"  name="mental"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=2"  name="knowledge"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
（やはりチョコレートだ。）[p]
（コタニとモールに行ったときの大量買い、あれが今日の俺の命を助けるとは…。）[p]
（この甘味と香り、たまらないな。今度はダンボールで注文しておくか…。）[p]
[_tb_end_text]

[jump  storage="chapter208.ks"  target="*enter_surgery"  ]
*enter_surgery

[name_you]

[tb_start_text mode=1 ]
よし、行くぞ！！[p]
[_tb_end_text]

[mental_damage value="3"]

[stopbgm  time="1000"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="鉄の扉を開ける.mp3"  ]
[jump  storage="chapter209.ks"  target=""  ]
