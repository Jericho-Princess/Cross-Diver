[_tb_system_call storage=system/_chapter206.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text=""]


;==================================================
; chapter206 Q選択肢フラグ初期化
;==================================================


[eval exp="f.ch2_Q1_done = 0"]

[eval exp="f.ch2_Q2_done = 0"]

[eval exp="f.ch2_Q3_done = 0"]

[place_bg storage="room205.png"]

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタンを押す53.mp3"  loop="true"  ]
[name_clear]

[tb_start_text mode=1 ]
端末の通知音で俺は目が覚めた。[p]
[_tb_end_text]

[tb_image_show  time="0"  storage="default/item-frame.png"  width="424"  height="424"  x="818"  y="60"  _clickable_img=""  name="img_10"  ]
[tb_image_show  time="1000"  storage="default/phone4.png"  width="220"  height="325"  x="920"  y="120"  _clickable_img=""  ]
[name_clear]

[tb_start_text mode=1 ]
端末にはノダのIDが表示されている。[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
＜Lone-Wolf98＞[r]お疲れ様です。ノダです。[p]
＜Lone-Wolf98＞[r]今日の食事ですが、ショッピングモール近くの[r]＜夢華宴＞（ユメカエン）という焼肉屋にしましょう。[p]
＜Lone-Wolf98＞[r]17：30スタートでどうです？ 地図も送っておきます。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ノダさんからのメッセージだ…。）[r]（場所は…なんとなくわかりそうだ。）[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
＜Sabrina109＞[r]わかりました。それでは後ほどよろしくお願いします。[p]

[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
それからしばらくして、俺はその場所へ向かった。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[place_title text="焼肉店＜夢華宴＞"]

[playbgm  volume="60"  time="1000"  loop="true"  storage="ジングル＆ループ006.mp3"  fadein="true"  ]
[place_bg storage="yumekaen_1.png"]

[name_clear]

[tb_start_text mode=1 ]
ここが夢華宴だ。[r]もう少し遅い時間に来たら混んでいたかもしれないが、今は空いているようだ。[p]
店内は煙が立ち込めており、炭火焼の匂いに満ちている。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ノダさんは先に到着しているようだ。）[r]（奥のテーブルって言ってたが…。）[p]
（見つけた。ノダさんだ。）[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
おーい！！こっちこっち！！[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺はテーブルについた。[r]そして…ノダさんとの会話が始まった。[p]
[_tb_end_text]

[playse  volume="5"  time="3000"  buf="0"  storage="yakiniku.mp3"  loop="true"  fadein="true"  ]
[place_bg storage="yumekaen_2.png"]

[name_noda]

[tb_start_text mode=1 ]
飲み物とかどうする？生ビールで良い？お酒とか好き？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
いや、お酒は飲まないですね。[r]自分はあんまりお酒に強くないみたいですし…。[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
あ、そっかそっか、信者さんだもんね。[r]お酒はダメとかそういうの大変そうだよね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（別にそういう理由で飲まないわけではないが…。）[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
さぁ！！じゃんじゃん食べてよ！！お酒は僕だけで良いや。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
ノダさんとの食事の時を過ごす。彼はよく食べて、よく飲む人だった。[p]
[_tb_end_text]

*Question

[if exp="f.ch2_Q1_done == 1 && f.ch2_Q2_done == 1 && f.ch2_Q3_done == 1"]

[jump  storage="chapter206.ks"  target="*common"  ]
[endif]

[name_you]

[bg  time="1000"  method="crossfade"  storage="yumekaen_2.png"  ]
[tb_start_text mode=4 ]
（さて…どんなことを話そうか？）
[_tb_end_text]

[wait  time="1000"  ]
[if exp="f.ch2_Q1_done == 0"]

[glink  color="black"  storage="chapter206.ks"  size="25"  text="ノダの仕事について"  target="*Q1"  ]
[else]

[glink  color="gray"  storage="chapter206.ks"  size="25"  text="ノダの仕事について"  target="*Question"  ]
[endif]

[if exp="f.ch2_Q2_done == 0"]

[glink  color="black"  storage="chapter206.ks"  size="25"  text="ノダの家族について"  target="*Q2"  ]
[else]

[glink  color="gray"  storage="chapter206.ks"  size="25"  text="ノダの家族について"  target="*Question"  ]
[endif]

[if exp="f.ch2_Q3_done == 0"]

[glink  color="black"  storage="chapter206.ks"  size="25"  text="ノダが教会に来ていたことについて"  target="*Q3"  ]
[else]

[glink  color="gray"  storage="chapter206.ks"  size="25"  text="ノダが教会に来ていたことについて"  target="*Question"  ]
[endif]

[s  ]
*Q1

[eval exp="f.ch2_Q1_done = 1"]

[name_you]

[tb_start_text mode=1 ]
普段は何のお仕事をされてるんですか？[p]
[_tb_end_text]

[name_noda]

[bg  time="500"  method="crossfade"  storage="yumekaen_3.png"  ]
[tb_start_text mode=1 ]
あぁ、色々やってるかな。[r]バーとかも経営してたりしたよ？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
へぇ、それはすごいですね。何年ぐらいやってるんですか？[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
いやいや、今はやってないよ。[p]
なんか感染症が流行った時あったでしょ？[r]それで開業した後、すぐ潰れちゃったんだよ。意味わかんないよね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そうなんですか…今は何を？[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
え？[p]
今は…個人事業主…かな？[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="yumekaen_4.png"  ]
[tb_start_text mode=1 ]
運送系の仕事してるよ。毎日、通販のダンボール運んでるよ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
なるほど…。今、需要が高いですもんね。[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
そうそう…。[p]
生ビール追加しても良い？[p]
[_tb_end_text]

[jump  storage="chapter206.ks"  target="*Question"  ]
*Q2

[eval exp="f.ch2_Q2_done = 1"]

[name_you]

[tb_start_text mode=1 ]
ご家族とかとは仲が良いんですか？[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
実家に祖母がいた時は良かったよ。もう死んじゃったんだけどね。[p]
で、親父がマジでクソでさ。姉ちゃん、僕の姉をさ、殴ったりしてたんだよ。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="yumekaen_3.png"  ]
[tb_start_text mode=1 ]
僕が成人してからは、こっちも殴り返したりできるようになって、[r]アイツも大人しくなったけど、けっこう大変だったかもね。[r]まぁ、おかげでケンカはかなり強くなったよ？[p]
中学の時とかさ、１対３で絡まれた時もさ、最初にこう鼻をバーンとさ、そしたら、[r]すごい相手鼻血出しちゃってさ、それから、思いっきり蹴りをさ…[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
それからしばらく彼のケンカ自慢の話が続いた。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（こういうケンカ自慢の話とかは正直言って、苦手だな…。）[p]
（おっと…武勇伝が終わったか？）[p]
なるほど…それで、ご結婚とかは？[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
あ、いや、前はしてたんだけど、前の嫁と人間的に合わなくてさ…。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="yumekaen_4.png"  ]
[tb_start_text mode=1 ]
で、娘がいたんだけどさ、やっぱり女性だから親権を取りやすいんだよね。[r]何もしてなくてもさ、取れるんだよ。[p]
あの子が３歳だった時かな。それ以来、会えてないよ。[r]まぁ良いんだけどね。もう他人だしさ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="yumekaen_3.png"  ]
[name_noda]

[tb_start_text mode=1 ]
…あ、ごめんね、シラけさせちゃって。[p]
生ビール追加しても良い？[p]
[_tb_end_text]

[jump  storage="chapter206.ks"  target="*Question"  ]
*Q3

[eval exp="f.ch2_Q3_done = 1"]

[name_you]

[tb_start_text mode=1 ]
あの日の集会にノダさんが来てましたよね？[r]普段から、あの教会に行ってるんですか？[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
まぁ、たまにだね。イベントとか、友人から誘われたりしたら行ったりするかな？[r]信者とかではないんだけどね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
でも、来てるってことは聖書や神様に関心があるんじゃないですか？[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="yumekaen_3.png"  ]
[name_noda]

[tb_start_text mode=1 ]
関心っていうか、色々知っておきたいんだよね。[r]色んな経験や知識を集めて、人は大人になるじゃん？[p]
僕はちゃんとしたお寺で写経体験とかもしたことあるし、[r]占いとかだって立派な人生の１つだし、教会とかもそうだよね。[p]
どれか１つって、冷静な判断ができないよ。[r]絶対。色々やって、学んで、人生を作っていく。それが大事なんだよね。[p]
神父先生？ いや牧師か。[r]先生の話を立派に聞いて、それを学びに生かせるかが大事なんだよ。[r]聞いて終わりじゃダメなんだよ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
なるほど…よく聞きますよね、そういうの。[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
そうでしょ？だから僕は、どっちかっていうと＜やんちゃ＞な方だったからさ、[r]信者さんよりかは人生豊かに経験してると思うんだよね。[p]
あんま無いでしょ？大事なもの失ったりとかさ？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（そう思われているのか…あまり良い気分ではないな…。）[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
…あ、ごめんね、難しい話しちゃったね。[p]
生ビール追加しても良い？[p]
[_tb_end_text]

[jump  storage="chapter206.ks"  target="*Question"  ]
[bg  time="1000"  method="crossfade"  storage="yumekaen_5.png"  ]
*common

[name_you]

[tb_start_text mode=1 ]
ノダさん、かなりお酒のペースが早いですけど、飲みすぎでは？[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
良いのよ。僕さ、酒けっこう強いのよ。[p]
お酒を知っておくとさ、こうバーを開いてみようかなとか思ったりするのよ。[r]そんでさ、冒険だよね！？[p]
だって土地とかも持ってなかったんだよ？勇気を振り絞ったよね、臆病な僕だけどさ。[p]
そんでね…友達にさ、お金をどうにかしてさ…[r]んで、そいつもさ、バカだからさ？ 金が無いわけだよ。[p]
そんでさ…あれから…えっと…[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（かなり酔っているようだ。あまりお酒に強いタイプではないようだ…。）[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
…で、あのクソ女が、何も知らないくせに僕を疑ったりしてきて、カチンときてさ…[p]
意味わかんねぇっすよね？何も知らねぇだろうがって感じでね。[p]
っでケンカ買ったら買ったで、アイツ泣きやがってよ。[r]子供の前で泣く母親とか意味わかんねぇっすよ。[p]
[_tb_end_text]

[stopbgm  time="3000"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="yumekaen_6.png"  ]
[tb_start_text mode=1 ]
…で、娘、あの子をさ、誘拐してどっか行ってさ…[r]こっちが何か言っても、あっちの実家もグルでさ…[p]
なんか嫌になるよね…そういうのさ…嫌になるんだよ…。[p]
仕事がうまくいかないのは、こっちのせいじゃないだろって…[r]何も悪いことしてねぇじゃねぇかってさ…[p]
なんで家まで盗んでいくんだよってさ…意味わかんないよね…マジで。[p]
それから全部、無くなったんだよ…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
彼は静かに泣いていた。[p]
普段の彼の強く振舞っている姿は、そこにはもうなかった。[r]１人の傷ついた人がそこにいたのだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（この人にも…本当の救いが必要なのかもしれない。いや、きっとそうだ。）[p]
（お店のラストオーダーも近い。）[p]
（そうだ、あの公園に誘ってみよう。そこでもう少し話をしてみよう。）[p]
少し歩きませんか？近くに良い公園があるんですよ。[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
…そうだね。少し外の空気を吸おう。[p]
ごめんね、気を遣わせちゃって？[p]
[_tb_end_text]

[stopse  time="2000"  buf="0"  fadeout="true"  ]
[name_clear]

[tb_start_text mode=1 ]
そうして俺たちは、あの場所。＜祈りの丘公園＞に向かった。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target=""  ]
