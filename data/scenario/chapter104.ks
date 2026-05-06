[_tb_system_call storage=system/_chapter104.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text="２０５号室"]

[place_bg storage="205号室.png"]

[name_clear]

[tb_start_text mode=1 ]
コタニがマンションの一室に案内してくれた。[r]部屋は205号室。角部屋のようだ。[p]
部屋に入ると家具はベッドと机ぐらいしかない。[r]まるでビジネスホテルのようだ。[p]
[_tb_end_text]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ②笑顔.png"  width="714"  height="1073"  left="287"  top="21"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
自由に使ってくださいね。[r]今日はもう遅いんで、ゆっくり休んでください。[p]
また明日のお昼に僕もまた来ますし、何かあったら連絡してくださいよ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
連絡か…。[r]悪いけど、俺はこのエリアの端末を持ってないんだ。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
そう。自分がいたエリアでは、こことはまた違う方法で仲間とやり取りをしていたのだ。[p]
コタニはそれを聞いて驚いていた。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ⑦驚愕.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
マジすか！？[p]
…ってことは、やっぱりこれを持つのが決まってたワケかも？[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/アイテム枠.png"  width="568"  height="423"  x="350"  y="125"  _clickable_img=""  name="img_36"  ]
[tb_image_show  time="1000"  storage="default/端末①.png"  width="116"  height="205"  name="img_37"  x="575"  y="235"  _clickable_img=""  ]
[name_clear]

[tb_start_text mode=1 ]
彼は１つの端末を手渡してくれた。[r]使用感のある、少し古めの端末だった。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
これは…誰の物だ？俺が使っていいのか？[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ⑤微笑.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
あぁいいですよ。それ、前に来てた人が持ってたヤツだよ。[p]
もうしばらく帰ってきてないらしいし、ほとんど初期化されてたから、[r]きっと誰かの為に置いていったんだよ。[p]
履歴は無いけど、ID情報とかは残ってるから、すぐ使えるよ。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/アイテム枠.png"  width="568"  height="423"  x="350"  y="125"  _clickable_img=""  name="img_44"  ]
[tb_image_show  time="1000"  storage="default/端末②.png"  width="137"  height="240"  x="563"  y="219"  _clickable_img=""  name="img_43"  ]
[name_clear]

[tb_start_text mode=1 ]
使っていいかはわからないが、無いと不便なのは間違いない。[r]しばらく借りておこう。[p]
少し触ってみたが、アプリなどは最低限だ。[r]そして、この端末には１つのフォルダを残して、データが何も残っていない。[p]
IDは[font color=#FFF100]  ＜Sabrina109＞ [resetfont] 。持ち主はどうしてこれを残していったのだろうか？[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ⑤微笑.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
それじゃあ、また明日ね。[r]今日は８時間もあの駐車場で待ってたからクタクタなのよ。[p]
あと必要なものとかある？明日、用意しておくからさ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
それより教えてほしいことがある。[p]
[_tb_end_text]

[glink  color="black"  storage="chapter104.ks"  size="25"  text="コタニについて"  x="100"  y="100"  width=""  height=""  _clickable_img=""  autopos="true"  target="*Q1"  ]
[glink  color="black"  storage="chapter104.ks"  size="25"  text="この端末の持ち主について"  autopos="true"  target="*Q2"  ]
[glink  color="black"  storage="chapter104.ks"  size="25"  text="残されたフォルダについて"  target="*Q3"  ]
[glink  color="black"  storage="chapter104.ks"  size="25"  text="自分がこの街に来た理由"  target="*Q4"  ]
[s  ]
*Q1

[name_you]

[tb_start_text mode=1 ]
コタニについて少し教えてくれ。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
僕はコタニ。クリスチャンホーム出身でクリスチャン４世になるかな。[p]
趣味は最近だとビリヤード。[r]上手くはないよ、２週間前に始めたんだからね。[p]
で、この前プレイ中に急に連絡が来て、君を迎えるように言われたんだよ。[p]
それから今日は８時間も車の中にいて、もう背中がバキバキだよ。[r]到着日だけじゃなくて、到着時刻ぐらい教えてくれても良いのにね？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そうだったのか…。それはすまなかった。[r]とにかく、ありがとう。[p]
[_tb_end_text]

[jump  storage="chapter104.ks"  target="*common"  ]
*Q2

[name_you]

[tb_start_text mode=1 ]
前にこの端末を持っていた人って、どんな人だった？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
あぁ、前にここに住んでた人だよ。[r]遠くから来ていたらしいけど、いなくなっちゃったらしい。[p]
僕は直接会ったことはないから、あんまりわかんないね。[r]色んな人をケアしたり、祈ったりしてたらしいけど…。[p]
僕も会いたかったけど、今どこにいるんだろうね？[r]何かわかったら、すぐ知らせるよ。[p]
[_tb_end_text]

[jump  storage="chapter104.ks"  target="*common"  ]
*Q3

[name_you]

[tb_start_text mode=1 ]
端末に残っているデータフォルダがある。[r]このフォルダについて何か知ってるか？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
あぁ、パスワードがかかって開かないっぽいんだよね、それ。[p]
データ整理がされたっぽいけど、そのフォルダだけはずっと残ってたんだよ。[r]大事なものとか入ってるのかもね。[p]
[_tb_end_text]

[jump  storage="chapter104.ks"  target="*common"  ]
*Q4

[name_you]

[tb_start_text mode=1 ]
自分が何故、この街に遣わされたのかよくわからないんだ。[p]
何か、俺について聞かされていないか…？[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ③爆笑.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
それが何も聞かされていないんだよ、不思議だよねぇ。[p]
でも、きっと神様が必要としてる人なんだってのはすぐわかったよ。[r]だから、僕は助けてあげたいと思った。[r]それぐらいかな。[p]
[_tb_end_text]

[jump  storage="chapter104.ks"  target="*common"  ]
*common

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ⑤微笑.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
まぁ、明日ゆっくり話をしようよ。[r]その端末のアドレス帳に僕を登録してあるから、寂しくなったら連絡してよ。[p]
じゃあね、シャローム！！[p]
[_tb_end_text]

[playse  volume="100"  time="0"  buf="0"  storage="玄関ドアを開ける.mp3"  fadein="false"  ]
[chara_hide  name="コタニ"  time="1000"  wait="true"  pos_mode="true"  ]
[name_clear]

[tb_start_text mode=1 ]
コタニはそそくさと出て行って、自分は１人部屋に残されてしまった。[p]
自分は明日から何をしたら良いのだろうか？[r]とりあえず、明日はこの街を探索してみよう。[p]
コタニか…。今のところ、彼は信用してもいい。[r]俺はそんな気がした。[p]
眠気もピークだ…今日はゆっくり休もう…。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="chapter105.ks"  target=""  ]
