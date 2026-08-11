[_tb_system_call storage=system/_chapter107.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]

;==================================================
; chapter106.ks
; モール・コタニ会話・聖書準備
;==================================================
;==================================================
; 街の広場
;==================================================


[place_title text="自宅"]

[place_bg storage="room205.png"]

[name_you]

[tb_start_text mode=1 ]
今日はあのショッピングモールで、コタニとリナちゃんと会う日だ。[p]
人付き合いはあまり得意ではないが、仲良くなれるといいな。[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
他の人物との交わりを通じて、あなたはその人の心を開いていくことができます。[r]それにより物語が変化したり、大きな恩恵を受けることもあります。[p]
その人の心が開かれたとき、[r]画面右に光る鍵穴のようなアイコンが表示されます。[p]
[_tb_end_text]

[heart_open_notice]

[tb_start_text mode=1 ]
逆にその人の心が閉ざされたとき、[r]鎖で施錠された鍵穴のようなアイコンが表示されます。[p]
[_tb_end_text]

[heart_close_notice]

[tb_start_text mode=1 ]
これらのアイコンに注意して、交わりを深めましょう。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
今回は車で行こう。昨日はコタニと徒歩で行って１時間もかかったからな…。[p]
[_tb_end_text]

[bg  time="500"  method="crossfade"  storage="black-screen.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="玄関ドアを開ける.mp3"  ]
[place_title text="ショッピングモール"]

[playbgm  volume="40"  time="1000"  loop="true"  storage="Sweet-vermouth.mp3"  fadein="true"  ]
[place_bg storage="shopping-mall_entrance.png"]

[name_you]

[tb_start_text mode=1 ]
（２人はもう到着しているらしいな…この辺りにいるはずだが？）[p]
（…見つけた。コタニとあの女の子だ。）[p]
[_tb_end_text]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ③爆笑.png"  width="785"  height="1180"  left="47"  top="14"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
お疲れー！！元気してた！？[r]今日はありがとね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
いや、こっちこそありがとう。[r]それで、この子が…。[p]
[_tb_end_text]

[chara_show  name="リナ"  time="1000"  wait="true"  storage="chara/4/リナ①通常.png"  width="575"  height="865"  left="555"  top="137"  reflect="false"  ]
[tb_eval  exp="f.rina_heart=50"  name="rina_heart"  cmd="="  op="t"  val="50"  val_2="undefined"  ]
[name_rina]

[tb_start_text mode=1 ]
あぁ、どうも、こんにちは。あ、[font color=#FFF100]  ＜リナ＞ [resetfont]です。[p]
コタニさんとも２回目ですかね？[r]呼んでもらって、ありがとうございます。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
こちらこそ、来てくれてありがとう。[r]とりあえずどこかの店を見てみようよ。[p]
どこ行きたい？なんか提案してみてよ。[p]

[_tb_end_text]

*nextshop

[tb_hide_message_window  ]
[bg  time="500"  method="crossfade"  storage="shopping-mall_entrance.png"  ]

; 初回はキャラを消さない
; 2回目以降だけ、表情を通常状態に戻す


[if exp="f.shop_loop == 1"]

[chara_mod  name="コタニ"  time="0"  cross="true"  storage="chara/3/コタニ③爆笑.png"  ]
[chara_mod  name="リナ"  time="0"  cross="true"  storage="chara/4/リナ①通常.png"  ]
[endif]


; 初回通過後はループ済みにする


[eval exp="f.shop_loop = 1"]

[tb_show_message_window  ]
[name_you]

[tb_start_text mode=4 ]
（そうだな…それなら次に行く場所は…？）
[_tb_end_text]

[wait  time="500"  ]

;==================================================
; 店選択フラグ初期化
; 途中プレビュー対策も兼ねる
;==================================================


[if exp="typeof f.shop_crepe_done === 'undefined'"]

[eval exp="f.shop_crepe_done = 0"]

[endif]

[if exp="typeof f.shop_art_done === 'undefined'"]

[eval exp="f.shop_art_done = 0"]

[endif]

[if exp="typeof f.shop_electric_done === 'undefined'"]

[eval exp="f.shop_electric_done = 0"]

[endif]

[wait  time="500"  ]

; 未選択の店だけ表示する


[if exp="f.shop_crepe_done == 0"]

[glink  color="black"  storage="chapter107.ks"  size="25"  text="クレープ屋"  target="*crepe"  ]
[endif]

[if exp="f.shop_art_done == 0"]

[glink  color="black"  storage="chapter107.ks"  size="25"  text="アート展示スペース"  target="*art"  ]
[endif]

[if exp="f.shop_electric_done == 0"]

[glink  color="black"  storage="chapter107.ks"  size="25"  text="家電量販店"  target="*electric"  ]
[endif]

[if exp="f.shop_crepe_done == 1 && f.shop_art_done == 1 && f.shop_electric_done == 1"]

[glink  color="black"  storage="chapter107.ks"  size="25"  text="ゲームセンター"  target="*gamecenter"  ]
[endif]

[s  ]
*crepe

[eval exp="f.shop_crepe_done = 1"]

[place_title text="クレープ屋"]

[place_bg storage="shopping-mall_crepe.png"]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ⑤微笑.png"  width="792"  height="1188"  left="12"  top="15"  reflect="false"  ]
[chara_show  name="リナ"  time="1000"  wait="true"  storage="chara/4/リナ①通常.png"  width="605"  height="910"  left="539"  top="136"  reflect="false"  ]
[name_you]

[tb_start_text mode=1 ]
（クレープ屋か…。１人ではあまり行かないから、良い機会かもな。）[p]

[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
あぁ、美味しそうですね。[r]やっぱり期間限定のヤツにしよっかな…。[p]
あ、すいませーん。[r]「ロイヤルストロベリークレープ」１つください。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ③爆笑.png"  ]
[name_kotani]

[tb_start_text mode=1 ]
僕は「かき氷」で！！[r]あ、ブルーハワイでお願いします。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（こいつ…やっぱり変なヤツだな…。）[p]
こっちは、チョコバニラクレープを１つ。[r]トッピングはチョコスプレーと、ベルギーチョコ、それとカカオパウダーで。[p]
[_tb_end_text]

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ④ドン引き.png"  ]
[name_rina]

[tb_start_text mode=1 ]
（変な人達だ…。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
そのまま３人で「甘い」ひと時を過ごすことになった…。[r]彼女も楽しそうに過ごしていたと思う。[p]
[_tb_end_text]

[tb_eval  exp="f.rina_heart+=2"  name="rina_heart"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[heart_open_notice]

[jump  storage="chapter107.ks"  target="*nextshop"  ]
*art

[eval exp="f.shop_art_done = 1"]

[place_title text="アート展示スペース"]

[place_bg storage="shopping-mall_exhibition.png"]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ⑤微笑.png"  width="790"  height="1185"  left="5"  top="20"  reflect="false"  ]
[chara_show  name="リナ"  time="1000"  wait="true"  storage="chara/4/リナ①通常.png"  width="605"  height="910"  left="535"  top="133"  reflect="false"  ]
[name_clear]

[tb_start_text mode=1 ]
モール内にあるアート展示スペースだ。[r]芸術に詳しくはないが、綺麗な空間だというのは理解できる。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
色々あるね。私のお母さんがこういう絵とか彫刻とか好きで色々見て回ってたよ。[r]私はそれがどんな物なのか、よくわからなかったし、今でも良さがわからないけど。[p]
お母さんは病院で看護師をしていて、私が子供の時からいつも忙しそうで、[r]夜遅くに帰ってくることもあった。[p]
お母さんのことはとても尊敬してるし、偉いなって思う。[p]
[_tb_end_text]

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ②孤独.png"  ]
[name_rina]

[tb_start_text mode=1 ]
でも…。[p]
時々…わからなくなることがあるんだよね。[p]
[_tb_end_text]

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ①通常.png"  ]
[name_rina]

[tb_start_text mode=1 ]
あ、変な話しちゃったね。ごめんごめん。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
(リナの母親か…。）[p]
[_tb_end_text]

[jump  storage="chapter107.ks"  target="*nextshop"  ]
*electric

[eval exp="f.shop_electric_done = 1"]

[place_title text="家電量販店"]

[place_bg storage="shopping-mall_electronics.png"]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ④驚き.png"  width="789"  height="1182"  left="5"  top="20"  reflect="false"  ]
[chara_show  name="リナ"  time="1000"  wait="true"  storage="chara/4/リナ①通常.png"  width="604"  height="908"  left="532"  top="129"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
えっ！？色々あったでしょ！？[r]何でここを提案したの！？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
家電を見るためだろ？[r]電子レンジとか、ジューサーとか色々あるだろ。[p]
[_tb_end_text]

[name_kotani]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ②笑顔.png"  ]
[tb_start_text mode=1 ]
えぇ…まぁ掃除機は欲しかったけど…。[p]
[_tb_end_text]

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ③笑う.png"  ]
[name_clear]

[tb_start_text mode=1 ]
コタニとのやりとりを見て、リナが笑っている。[p]
コタニがいてくれて良かった。[p]
[_tb_end_text]

[heart_open_notice]

[tb_eval  exp="f.rina_heart+=3"  name="rina_heart"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
それから５分ほど店内を見回ったが、やはり必要な物は無さそうだ。[r]さっさと次の店に行こう。[p]
そういえばコタニはどこにいる？[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/kotani_cleaning.png"  width="986"  height="740"  x="139"  y="-7"  _clickable_img=""  name="img_133"  ]
[name_you]

[tb_start_text mode=1 ]
（コタニだ…。高級なコードレス掃除機をひたすら試している。）[r]（やけに楽しそうだ。）[p]
（ただの掃除機に５万円も出す奴なんかいないだろう。）[p]
気が済んだら、次の店に行こうか。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
コタニさんって、面白い人ですね。[r]変わってるっていうか…。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[jump  storage="chapter107.ks"  target="*nextshop"  ]
*gamecenter

[place_title text="ゲームセンター"]

[place_bg storage="shopping-mall_game.png"]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ⑤微笑.png"  width="792"  height="1188"  left="1"  top="16"  reflect="false"  ]
[chara_show  name="リナ"  time="1000"  wait="true"  storage="chara/4/リナ①通常.png"  width="605"  height="910"  left="529"  top="126"  reflect="false"  ]
[name_clear]

[tb_start_text mode=1 ]
ゲームセンターだ。[r]エアホッケーや、レースゲーム、そしてクレーンゲーム等がたくさん並んでいた。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（リナはこういう場所が好きなんだろうか？）[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/rina_arcade.png"  width="1408"  height="792"  x="-70"  y="-7"  _clickable_img=""  name="img_113"  ]
[name_clear]

[tb_start_text mode=1 ]
彼女は１つのクレーンゲームを見つめていた。[r]中には動物のぬいぐるみが並んでいる。[p]
リナが見ていたのは一番手前の「魚」のぬいぐるみだった。[r]ぬいぐるみを見る彼女は優しい顔をしていた。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
「あれ」が…魚とかが好きなの？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
あ、いや、うん…今は違うけど、昔ね。[r]小学生の時にペットで魚を飼ってたんだよ。[r]もう、中学入る前に死んじゃったんだけどね。[p]
お母さんが仕事で忙しくて、帰り遅い日とかさ、[r]その魚、[font color=#FFF100] ＜アモちゃん＞ [resetfont]って呼んでたんだけどさ。[p]
寂しい時とか、その子に話しかけたりして、[r]楽しかったなって、思い出しちゃって…。[r]今でも良い思い出。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=4 ]
（ペットの魚のアモちゃんか…。）
[_tb_end_text]

[wait  time="500"  ]
[glink  color="black"  storage="chapter107.ks"  size="25"  text="アモちゃんとどんな会話を？"  target="*Q1"  ]
[glink  color="black"  storage="chapter107.ks"  size="25"  text="魚の他に友達は？"  target="*Q2"  ]
[glink  color="black"  storage="chapter107.ks"  size="25"  text="お母さんはその魚が好きだった？"  target="*Q3"  ]
[glink  color="black"  storage="chapter107.ks"  size="25"  text="他の魚を飼っても変わらないんじゃ？"  target="*Q4"  ]
[s  ]
*Q1

[name_you]

[tb_start_text mode=1 ]
アモちゃんとどんな会話をしていたの？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
ん？そうね…。[p]
今日学校で逆上がりができたよー、とか、[r]友達と同じノート持ってて笑っちゃったよーとか[r]子供の他愛もない話。[p]
でも、アモちゃんは水槽の魚だから何も言えないし、[r]何言ってるかわかんないだろうね。[p]
それでも、「私が聞こえないだけで返事してくれてるのかも」って、[r]子供の時は思ってたなぁ。[p]
[_tb_end_text]

[tb_eval  exp="f.rina_heart+=3"  name="rina_heart"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[heart_open_notice]

[jump  storage="chapter107.ks"  target="*common"  ]
*Q2

[name_you]

[tb_start_text mode=1 ]
その魚の他に仲の良い友達とかはいた？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
もちろん、普通にいたよ？[r]でも、自分がみんなと、どこか違う気がして、[r]本当に仲の良い友達ってのはよくわかんなかったな。[p]
ベストフレンドが魚だなんて、今思っても寂しい子供ね。[p]
[_tb_end_text]

[jump  storage="chapter107.ks"  target="*common"  ]
*Q3

[name_you]

[tb_start_text mode=1 ]
お母さんもその魚が好きだった？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
いや、あんまりかな。そもそも魚を買ってくれたのはお父さんだった。[p]
お父さんはお母さんと離婚して、それから私は会ってないけど、[r]なんか優しかったのは覚えてる。[p]
で、お母さんは「あんまり魚なんか好きになれない」って言ってたかな。[r]ペットとか飼う人じゃなかったしね。[p]
[_tb_end_text]

[jump  storage="chapter107.ks"  target="*common"  ]
*Q4

[name_you]

[tb_start_text mode=1 ]
魚ならいくらでもいる。他の魚を飼っても変わらないんじゃ？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
あぁ、そうかもね…。[p]
別の魚でも良いし、それこそ、このぬいぐるみでも嬉しいよ…。[p]
[_tb_end_text]

[heart_close_notice]

[tb_eval  exp="f.rina_heart-=3"  name="rina_heart"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[jump  storage="chapter107.ks"  target="*common"  ]
*common

[tb_image_hide  time="1000"  ]
[name_kotani]

[tb_start_text mode=1 ]
…なるほどね。[p]
[_tb_end_text]

[chara_mod  name="コタニ"  time="600"  cross="true"  storage="chara/3/コタニ⑥饒舌.png"  ]
[tb_start_text mode=1 ]
あ、そうだ、思い出した！！[r]良い公園が近くにあるからさ、そこにみんなで行こうよ。[r]散歩だよ。とりあえず歩こうよ！！[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（公園か…。）[p]
（たしかに歩きながら話したり、彼女の為に祈ったりする時間も必要かもしれない。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
このショッピングモールからその公園まで歩いて行ける距離だそうだ。[p]
そうして俺たちはモールを後にし、その場所へ向かった。[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target=""  ]
