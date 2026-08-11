[_tb_system_call storage=system/_chapter108.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text="＜祈りの丘＞公園"]

[playbgm  volume="60"  time="2000"  loop="true"  storage="終焉の音.mp3"  fadein="true"  ]
[place_bg storage="prayers-park_entrance.png"]

[name_clear]

[tb_start_text mode=1 ]
街の騒がしさが嘘のようにも思える、[r]静かで穏やかな公園だった。[p]
日が暮れ始めたこの時間、この場所は神秘的な雰囲気に包まれていた。[p]
公園の中央には２人の人が手を繋いで祈っているモニュメントがある。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（この公園ができる前から、この土地で誰かが祈っていた。）[r]（何故かはわからないが、はっきりとわかる。）[p]
[_tb_end_text]

[chara_show  name="コタニ"  time="1000"  wait="true"  storage="chara/3/コタニ⑤微笑.png"  width="609"  height="916"  left="351"  top="26"  reflect="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
やっぱり、落ち着けるね、この場所。[p]
向こうに良いベンチがあるからさ、そこで話をしようよ。[p]
[_tb_end_text]

[chara_hide  name="コタニ"  time="500"  wait="true"  pos_mode="true"  ]
[place_bg storage="prayers-park.png"]

[name_you]

[tb_start_text mode=1 ]
（コタニは良い場所を知ってるんだな。）[p]
（アイツ、多分ここで祈ってるんだろうな…。）[p]
[_tb_end_text]

[chara_show  name="コタニ"  time="1000"  wait="false"  storage="chara/3/コタニ⑤微笑.png"  width="609"  height="916"  left="95"  top="33"  reflect="false"  ]
[chara_show  name="リナ"  time="1000"  wait="true"  storage="chara/4/リナ①通常.png"  width="524"  height="789"  left="566"  top="135"  reflect="false"  ]
[name_rina]

[tb_start_text mode=1 ]
オシャレな場所。私、こういうとこ好きかも。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺たちはあのベンチに３人で座った。[r]対面に座ったリナもこの公園が気に入ったようである。[p]
リナは愛想も良く、一見すると元気な普通の女の子にも見える。[r]しかし時々、どこか影を感じさせるような雰囲気も出ている。[p]
彼女は本当の意味で救われてはいないのかもしれない。[r]彼女の心はまだ囚われている。[p]
彼女には束縛からの[font color=#FFF100] ＜解放＞ [resetfont]が必要だ…。[p]
けれど、[font color=#FFF100]俺が彼女を救えるわけじゃない。[resetfont][p]
解放するのは俺じゃなく、神様だ。[r]それを忘れたら、あの時のように、また誰かを傷つける。[p]
俺にできるのは、彼女の痛みを見て、彼女を神様につなげる手助けをすることだけなのだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（…だとするなら、やはり ＜ダイブ＞ をするしかないかもな。）[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
ダイブには精神力が必要であり、その消費量は相手との信頼関係によって変化します。[p]
安全なダイブを目指すなら、まずは相手に寄り添い、[r]無理に踏み込まず、心の扉が開かれる時を待ちましょう。[p]
[_tb_end_text]

*question1

[name_you]

[tb_start_text mode=4 ]
（リナか…どう声をかけようか…？）
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="神様っていると思う？"  target="*Q1"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="その左手の怪我は？"  target="*Q2"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="精神科を受診したら？"  target="*Q3"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="誰かに愛されたいって思う？"  target="*Q4"  ]
[s  ]
*Q1

[name_you]

[tb_start_text mode=1 ]
神様って実際にいると思う？[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_rina]

[tb_start_text mode=1 ]
ん？あぁ、まぁいるんじゃない？[p]
でも神様はきっと信心深い人のことが好きなんだと思う。[r]で、私はそうじゃないからさ、あんまり好かれてないよ、きっとね…。[p]
[_tb_end_text]

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ②孤独.png"  ]
[jump  storage="chapter108.ks"  target="*question2"  ]
*Q2

[name_you]

[tb_start_text mode=1 ]
その手首…どうしたの…？[r]前に怪我でもしたの？[p]
[_tb_end_text]

[tb_eval  exp="f.empathy+=1"  name="empathy"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[chara_mod  name="リナ"  time="300"  cross="true"  storage="chara/4/リナ①通常.png"  ]
[name_rina]

[tb_start_text mode=1 ]
あ、これ？[p]
なんか嫌なことがあったりするとさ、私、リスカしたくなっちゃう時があるんだよね。[p]
最初は中学の時で、それからずっと、一時期やめてたけど、またやり始めちゃって…。[p]
リスカしたらさ、スゥーって落ち着ける。[r]自分が自分でいられる。変な話をしちゃって、ごめんね。[r]でも、私はそういう人なの。[p]
[_tb_end_text]

[tb_eval  exp="f.rina_heart+=5"  name="rina_heart"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[heart_open_notice]

[jump  storage="chapter108.ks"  target="*question2"  ]
*Q3

[name_you]

[tb_start_text mode=1 ]
精神科とか行ってみたりしたことあるの？[r]この街にもあると思うけど。[p]
[_tb_end_text]

[tb_eval  exp="f.empathy-=2"  name="empathy"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[name_rina]

[tb_start_text mode=1 ]
たまに行って、薬を貰ったりはしてるかな。[r]飲むと落ち着くけど、体調が崩れたりして、結構しんどくなるよね…。[p]
[_tb_end_text]

[tb_eval  exp="f.rina_heart-=3"  name="rina_heart"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[heart_close_notice]

[jump  storage="chapter108.ks"  target="*question2"  ]
*Q4

[name_you]

[tb_start_text mode=1 ]
誰かに愛されたいって思う？[p]
[_tb_end_text]

[tb_eval  exp="f.knowledge-=2"  name="knowledge"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ⑥驚き.png"  ]
[name_rina]

[tb_start_text mode=1 ]
えっ！？[p]
…。[p]
[_tb_end_text]

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ②孤独.png"  ]
[name_rina]

[tb_start_text mode=1 ]
…うん、思うよ。[p]
[_tb_end_text]

[tb_eval  exp="f.rina_heart+=15"  name="rina_heart"  cmd="+="  op="t"  val="15"  val_2="undefined"  ]
[heart_open_notice]

[jump  storage="chapter108.ks"  target="*question2"  ]
*question2

[name_you]

[tb_start_text mode=4 ]
（リナか…どう声をかけようか…？）
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="お母さんを憎んでいるのでは？"  target="*Q5"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="神様はあなたを愛しているよ？"  target="*Q6"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="俺も昔は孤独だった。"  target="*Q7"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="悪霊が君の心を傷つけている。"  target="*Q8"  ]
[s  ]
*Q5

[name_you]

[tb_start_text mode=1 ]
心の中でお母さんを憎んでいるのでは？[p]
[_tb_end_text]

[tb_eval  exp="f.empathy-=4"  name="empathy"  cmd="-="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=2"  name="knowledge"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ⑥驚き.png"  ]
[name_rina]

[tb_start_text mode=1 ]
えっ、いや…そんな感じはないかな。[p]
だって、お父さんと離婚した後もしっかり育ててくれたし、[r]お母さんには感謝してるよ。[p]
[_tb_end_text]

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ①通常.png"  ]
[tb_eval  exp="f.rina_heart-=3"  name="rina_heart"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[heart_close_notice]

[jump  storage="chapter108.ks"  target="*question3"  ]
*Q6

[name_you]

[tb_start_text mode=1 ]
神様はリナちゃんのことを愛しているよ。[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=2"  name="faith"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[name_rina]

[tb_start_text mode=1 ]
そうかな…？[r]でも大事だよね、そういう考えも。[p]
[_tb_end_text]

[tb_eval  exp="f.rina_heart+=1"  name="rina_heart"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[heart_open_notice]

[jump  storage="chapter108.ks"  target="*question3"  ]
*Q7

[name_you]

[tb_start_text mode=1 ]
俺も昔は孤独だった。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
そうなの？[p]
私も、もしかしたら、そうかも…。[p]
孤独感ってさ、成長しても消えないんだよね。[r]傷跡みたいにずっと残っちゃってさ。[p]
誰かといても、ずっと自分は孤独なんだって、そんな気がする。[p]
[_tb_end_text]

[tb_eval  exp="f.rina_heart+=10"  name="rina_heart"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[tb_eval  exp="f.empathy+=5"  name="empathy"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[heart_open_notice]

[jump  storage="chapter108.ks"  target="*question3"  ]
*Q8

[name_you]

[tb_start_text mode=1 ]
悪霊が君の心を傷つけている。[r]そんな気がするんだ。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
やっぱりそうなの？[p]
どっかの牧師？神父？先生もそんなこと言ってたような…。[r]あんまりよくわかんないな。そういうのってさ、実際いるの？[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.empathy-=3"  name="empathy"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.spiritual+=2"  name="spiritual"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[jump  storage="chapter108.ks"  target="*question3"  ]
*question3

[name_you]

[tb_start_text mode=4 ]
（リナか…どう声をかけようか…？）
[_tb_end_text]

[glink  color="black"  storage="chapter108.ks"  size="25"  text="君には神様が必要だ。"  target="*Q9"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="今から君の癒しを祈ってみる。"  target="*Q10"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="一緒に祈ろうよ。"  target="*Q11"  ]
[glink  color="black"  storage="chapter108.ks"  size="25"  text="心の傷から解放されたい？"  target="*Q12"  ]
[s  ]
*Q9

[name_you]

[tb_start_text mode=1 ]
君には助けてくれる本当の神様が必要だ。[p]
[_tb_end_text]

[tb_eval  exp="f.passion+=1"  name="passion"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="chapter108.ks"  target="*Q9f"  cond="f.rina_heart<50"  ]
[name_rina]

[tb_start_text mode=1 ]
…。[p]
きっとそうなんだろうね…。[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target="*dive"  ]
*Q9f

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ②孤独.png"  ]
[name_rina]

[tb_start_text mode=1 ]
そんなもの…私には必要ない。[r]欲しいだなんて、思ったこともない。[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target="*dive"  ]
*Q10

[name_you]

[tb_start_text mode=1 ]
今から君を祈りで癒す。[r]きっとそれで良くなると思う。[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_rina]

[tb_start_text mode=1 ]
あなたにそんなことできるの…？[r]教会みたいに祈って癒すの？[p]
ふーん…。[r]一応、やってもらおうかな。[p]
いいよ、やってみて。[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target="*dive"  ]
*Q11

[name_you]

[tb_start_text mode=1 ]
一緒に祈ってみない？[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target="*Q11f"  cond="f.rina_heart<50"  ]
[name_rina]

[tb_start_text mode=1 ]
…。[p]
わかった、良いよ。[r]詳しくないから、やり方教えてよ。[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target="*dive"  ]
*Q11f

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ②孤独.png"  ]
[name_rina]

[tb_start_text mode=1 ]
前にクリスチャンの人にやってもらったけど、よくわからなかった。[r]プラシーボ効果？…みたいなやつなんじゃないの？[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target="*dive"  ]
*Q12

[name_you]

[tb_start_text mode=1 ]
古い心の傷から解放されたい？[p]
[_tb_end_text]

[tb_eval  exp="f.passion+=1"  name="passion"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="chapter108.ks"  target="*Q12f"  cond="f.rina_heart<50"  ]
[name_rina]

[tb_start_text mode=1 ]
…。[p]
…うん。[r]私、やっぱり辛いかも。[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target="*dive"  ]
*Q12f

[chara_mod  name="リナ"  time="600"  cross="true"  storage="chara/4/リナ②孤独.png"  ]
[name_rina]

[tb_start_text mode=1 ]
心の傷？みんな、そういう傷はあるよ。[r]みんなそういうのを抱えて生きていくんじゃないの？[p]
[_tb_end_text]

[jump  storage="chapter108.ks"  target="*dive"  ]
*dive

[name_clear]

[tb_start_text mode=1 ]
少しの静寂がこの場を包んだ。[p]
そして、コタニが口を開いた。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
祈ろうか。神様を信じていても、信じていなくても、きっと聞いてくれる。[p]
リナちゃんにも、やり方を教えてあげる。[r]まぁ、あんまり決まったやり方はないから、ほとんど自由なんだけどね。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
そして、コタニは静かに祈り始めた。[r]とても優しい顔をしていた。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
神様、感謝します。[p]
今日こうやって、新しい仲間達と素敵な時間を過ごせたことを感謝し、[r]それから…[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
祈りの時を過ごした。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ダイブするなら今だ。しかし、かなり久しぶりだ。かなり緊張する。）[p]
（もしうまくいかず、失敗したら彼女の今後の人生に傷がつくかもしれない。）[p]
（神様が勝手に彼女を助けてあげたら良いのに…。）[r]（もしかしたら自分は、完全に関与しない方が良いのかもしれない。）[p]
（俺は…俺は…。）[p]

[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
俺は心配で心が押しつぶされそうになった。[p]
しかしその時、誰かが俺の肩に手を触れてくれた。[p]
それはコタニの手だった。[p]
声にならない声で、彼は語りかけてくれた。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
（大丈夫。僕がずっと祈って支えてるよ。神様も一緒にいる。安心して。）[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（…ありがとう。）[p]
[_tb_end_text]

[stopbgm  time="3000"  fadeout="true"  ]
[name_clear]

[chara_hide  name="コタニ"  time="1000"  wait="false"  pos_mode="false"  ]
[chara_hide  name="リナ"  time="1000"  wait="true"  pos_mode="false"  ]
[bg  time="3000"  method="crossfade"  storage="black-screen.png"  ]
[tb_start_text mode=1 ]
意識を集中しろ…肉体を忘れろ…扉が見える…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
行くぞ！！ダイブだ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="dive.mp3"  ]
[jump  storage="chapter109.ks"  target=""  ]
