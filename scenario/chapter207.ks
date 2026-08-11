[_tb_system_call storage=system/_chapter207.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text="＜祈りの丘＞公園"]

[playbgm  volume="60"  time="2000"  loop="true"  storage="終焉の音.mp3"  fadein="true"  ]
[place_bg storage="prayers-park.png"]

[name_clear]

[tb_start_text mode=1 ]
祈りの丘公園だ。コタニとリナと過ごした、あの日の夜を思い出す。[p]
ここは相変わらず静かで、＜守られている＞場所だ。[p]
ノダさんはお店の時に比べて、ずいぶん大人しくなった。[p]
彼は一見すると、様々な困難や苦境を耐え抜いてきた、[r]強くて賢い人間のようにも見える。[p]
しかし、心の奥で痛みや孤独がずっと彼を蝕んでいるようにも思える。[p]
そして、その度に自身が傷つかない選択肢を選んでいるのだろう。[r]辛さを乗り越えようと、あるいは、そこから目を背けるために…。[p]
痛みや傷を忘れることも、生きていくためには必要だ。それは間違いないだろう。[r]しかし、時には向き合って乗り越えなくてはならない時もある。[p]
時に、自分だけで乗り越えられない傷や問題もあるかもしれない。[r]だからその時、そこに神様がいてほしいと思っている。[p]
[_tb_end_text]

[chara_show  name="ノダ"  time="1000"  wait="true"  storage="chara/9/noda-4.png"  width="617"  height="916"  left="360"  top="21"  reflect="false"  ]
[name_noda]

[tb_start_text mode=1 ]
あぁ…良い場所知ってるんだね。ここに来るのは久しぶりだ。[r]この場所のこと、すっかり忘れてたよ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（本当に大きな痛みってのは、逃げられないことがほとんどだ…。）[p]
（俺はそれを知っている。きっとノダさんも、よく知っているはずだろう。）[p]
（救いは、神様はそこにいる。）[p]
（けれど、彼がその手を拒み続けるなら、受け取ることはできないだろう。）[r]（彼にも神様を知ってほしい。彼の心も、束縛から解放されてほしい。）[p]
（彼と神様が出会える。それ以上のことはなく、その助力ができるというのなら…。）[p]
（俺は今日、彼の心へダイブをする。）[p]
[_tb_end_text]

*park_q1

[name_you]

[tb_start_text mode=4 ]
（ノダさんか…どう声をかけようか…？）
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="夢とかありますか？"  target="*park_q1_a"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="あなたは自分の弱さから逃げている"  target="*park_q1_b"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="将来、きっと新しい家族を作れる"  target="*park_q1_c"  ]
[s  ]
*park_q1_a

[name_you]

[tb_start_text mode=1 ]
夢とかありますか？[p]
[_tb_end_text]

[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-5.png"  ]
[heart_open_notice]

[tb_eval  exp="f.passion+=3"  name="passion"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=1"  name="knowledge"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.noda_heart+=5"  name="noda_heart"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[name_noda]

[tb_start_text mode=1 ]
かっこいい質問だね。[p]
夢か…もちろんいっぱいあるよ。[p]
えっと…お店とか開く？…あ、もうダメだったか…。[r]車……車もアレか…。[p]
あぁ…前はもっと言えたんだけど、酔っててうまく思いつかないや…。[p]
ははっ。今日の食事が楽しかったから、それで満足することも大事だよ。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_q2"  ]
*park_q1_b

[name_you]

[tb_start_text mode=1 ]
あなたは自分の弱さから逃げている。[r]もっとちゃんと自分に向き合わないとダメだと思います。[p]
[_tb_end_text]

[heart_close_notice]

[tb_eval  exp="f.empathy-=4"  name="empathy"  cmd="-="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.noda_heart-=5"  name="noda_heart"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-6.png"  ]
[name_noda]

[tb_start_text mode=1 ]
いやいや、みんなそうじゃないの？君だってさ、弱いじゃん。[p]
みんなそうなんだよ、ホントは弱い。[r]でもさ、そのなか生きていくのが人生なんじゃないの？[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_q2"  ]
*park_q1_c

[name_you]

[tb_start_text mode=1 ]
将来、きっと新しい家族を作れますよ。[p]
[_tb_end_text]

[tb_eval  exp="f.noda_heart-=5"  name="noda_heart"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.empathy+=1"  name="empathy"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-4.png"  ]
[heart_close_notice]

[name_noda]

[tb_start_text mode=1 ]
…っていうか、もう家族とかに縛られている時代じゃないのかもよ？[r]これからはさ、個人の時代だよ？[p]
それに、血の繋がり以外のさ…本質的な繋がりをさ、もっと大事にしていこうよ？[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_q2"  ]
*park_q2

[name_you]

[tb_start_text mode=4 ]
（どう声をかけようか…。）
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="お酒や都合が良い思想に逃げているだけだ"  target="*park_q2_a"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="様々な勉強をして答えは見つかった？"  target="*park_q2_b"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="あなたには次のステップが必要だ"  target="*park_q2_c"  ]
[s  ]
*park_q2_a

[name_you]

[tb_start_text mode=1 ]
お酒や、都合が良い思想に逃げているだけでは？[p]
[_tb_end_text]

[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-6.png"  ]
[heart_close_notice]

[tb_eval  exp="f.noda_heart=0"  name="noda_heart"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[name_noda]

[tb_start_text mode=1 ]
君に何がわかるんだよ！？[p]
悪いけど、君には僕のことは理解できないと思う。[p]
聖書以外、何も勉強していないでしょ？[r]イエスキリストは現代の価値観を知らなかったでしょ？[r]何にも教えてくれないでしょ？[p]
自己啓発書とかはさ、今の価値観に合わせて作られてるじゃん？[p]
そっちの教義とかはさ、全部昔のまんまじゃん？[r]違うかな！？[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
ノダの心が完全に閉ざされてしまった。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_q3"  ]
*park_q2_b

[name_you]

[tb_start_text mode=1 ]
様々な勉強をしてきたようですね。[r]何か答えは見つかったんですか？[p]
[_tb_end_text]

[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-4.png"  ]
[name_noda]

[tb_start_text mode=1 ]
あぁ、勉強してるの、やっぱりわかる？[r]色々学んできたけどさ、役に立つものもたくさんあったよ。[p]
でも…＜答え＞か…。[p]
まだ…わからないな。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_q3"  ]
*park_q2_c

[name_you]

[tb_start_text mode=1 ]
あなたには、次のステップが必要なんだと思います。[p]
[_tb_end_text]

[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-4.png"  ]
[heart_open_notice]

[tb_eval  exp="f.knowledge+=1"  name="knowledge"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.noda_heart+=5"  name="noda_heart"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[name_noda]

[tb_start_text mode=1 ]
…そうだね。[p]
本当は、頭では理解しているんだ。[r]頑張って次へ歩みだそうとする時もある。[p]
でも…大事だったものが、ずっと心に残っててさ…[r]どうして維持し続けられなかったんだって…。[p]
昔は幸せだったんだ…。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_q3"  ]
*park_q3

[name_you]

[tb_start_text mode=4 ]
（もう少しだけ、話してみよう…。）
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="娘さんに会いたいと思うことは？"  target="*park_q3_a"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="痛みから解放される方法を知っている"  target="*park_q3_b"  ]
[glink  color="black"  storage="chapter207.ks"  size="25"  text="神様はあなたを愛している"  target="*park_q3_c"  ]
[s  ]
*park_q3_a

[name_you]

[tb_start_text mode=1 ]
娘さんに、会いたいと思うことはありますか？[p]
[_tb_end_text]

[heart_open_notice]

[tb_eval  exp="f.noda_heart+=5"  name="noda_heart"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.empathy+=2"  name="empathy"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-7.png"  ]
[name_noda]

[tb_start_text mode=1 ]
…。[p]
時々…どうしても会いたくなっちゃうことがあってさ、[r]以前、住んでた家の周りをうろうろしちゃう時があるんだ。[p]
でも、もう引越しされててさ…もう会えないよ…。[p]
あの子が元気なら、今は８歳になる。８歳と９か月。[r]すごく可愛かったんだ…。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_check_status"  ]
*park_q3_b

[name_you]

[tb_start_text mode=1 ]
痛みから解放される方法を知っています。[p]
[_tb_end_text]

[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-4.png"  ]
[name_noda]

[tb_start_text mode=1 ]
僕もいっぱい知ってるよ。[p]
でも結局、ホントに辛い経験をした人には、ほとんど効果が無いんだ。[p]
痛い経験は、ずっと追いかけてくる。夢の中とか、ふとした瞬間とかにさ。[r]忘れられないよ。そう簡単にさ。そういうこともある。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_check_status"  ]
*park_q3_c

[name_you]

[tb_start_text mode=1 ]
神様は、あなたを愛しています。[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=3"  name="faith"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-4.png"  ]
[name_noda]

[tb_start_text mode=1 ]
知ってるよ。[p]
でも神様はイエスキリストだけじゃない。[r]色々な自然や物事に潜んでいるんだよ…水とか、雨とか、道具とかさ…。[p]
それはエネルギーなんだよね。宇宙なんだよ。[r]それを愛って言えるんじゃないかな？[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*park_check_status"  ]
*park_check_status


; 共感が56以上、堅信が62以下なら追加で心が開く。


[if exp="f.empathy >= 56 && f.faith <= 62"]

[tb_eval  exp="f.noda_heart+=3"  name="noda_heart"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[heart_open_notice]

[name_system]

[tb_start_text mode=1 ]
あなたの＜共感＞が、ノダの心へ届いた。[p]
ノダの心が少し開かれた。[p]
[_tb_end_text]

[endif]

[if exp="f.noda_heart >= 61"]

[eval exp="f.noda_route = 1"]

[else]

[eval exp="f.noda_route = 0"]

[endif]

[name_you]

[tb_start_text mode=1 ]
（ノダさんにも様々な事情や考えがあるんだな。）[p]
（さて、話はこれぐらいにして、１度、一緒に祈ってみるのはどうだろうか。）[r]（ノダさんは提案を受けてくれるだろうか？）[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ノダさん、一緒に祈ってみませんか？[p]
[_tb_end_text]

[if exp="f.noda_route == 1"]

[jump  storage="chapter207.ks"  target="*prayer_route_a"  ]
[else]

[jump  storage="chapter207.ks"  target="*prayer_route_b"  ]
[endif]

*prayer_route_a

[name_noda]

[tb_start_text mode=1 ]
あぁ、祈りか…。[p]
キリスト式のやつって、実はよくわからなかったんだよね。[p]
ちょっとやってみようかな。今日は何か違うかもしれないしね。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
ノダさんは提案を受け入れてくれた。[p]
彼は何度も教会に来たことがあったらしいが、[r]祈りのやり方やその意味は、あまり教わっていないようだ。[p]
たしかに、教会がノンクリスチャンに初歩的なことを教えることも、[r]意外と少ないかもしれない。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*prayer_common"  ]
*prayer_route_b

[name_noda]

[tb_start_text mode=1 ]
何度かキリスト式のをやったことあるけど、特に変化はなかったよ。[p]
ちゃんとした瞑想のやり方を、教会は知らないでしょ？[r]ホントはそういうのがあるんだよ。[p]
教えてあげるから、それで祈ってみようよ。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
ノダさんのやり方はともかく、祈りに参加してくれたことには変わりない。[r]これはとてもありがたいことだ。[p]
ノダさんは祈りの提案を断る可能性があったかもしれない。[r]今回は、たまたま運が良かったのだ。[p]
それか…自分たちが＜導かれた＞のか…。[p]
[_tb_end_text]

[jump  storage="chapter207.ks"  target="*prayer_common"  ]
*prayer_common

[name_clear]

[tb_start_text mode=1 ]
祈りが始まった。静かな祈りだった。[p]
そしてその祈りの中で、ノダが静かに喋り始めた。[p]
[_tb_end_text]

[chara_mod  name="ノダ"  time="600"  cross="true"  storage="chara/9/noda-8.png"  ]
[name_noda]

[tb_start_text mode=1 ]
ずっと祈ってるとさ…嫌なことを思い出すことがあるんだ。[r]忘れたくても、忘れられないこととかさ。[p]
だから、あんまりお祈りとか苦手だったんだよね…。[p]
神様は、僕に昔の傷を突き付けてくるのかな？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…そんなことはないですよ。むしろ、癒してくれるはずです。[p]
[_tb_end_text]

[stopbgm  time="3000"  fadeout="true"  ]
[name_noda]

[tb_start_text mode=1 ]
あぁ…思い出してきた…。[p]
嫌な感じだ…また僕のことを捕まえるつもりだ…。[p]
あぁ…お腹が痛い…薬…嫌だ…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ノ、ノダさん！？[p]
（やっぱりそうだ…この人はずっと悪霊に攻撃され続けてきたんだ。）[r]（そして今もかなり苦しんでいるようだ。）[p]
（これは行くしかないな…。）[p]
[_tb_end_text]

[chara_hide  name="ノダ"  time="2000"  wait="false"  pos_mode="true"  ]
[bg  time="2000"  method="crossfade"  storage="black-screen.png"  ]
[name_you]

[tb_start_text mode=1 ]
意識を集中しろ…肉体を忘れろ…扉が見える…。[p]
行くぞ、ダイブだ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="dive.mp3"  ]
[jump  storage="chapter208.ks"  target=""  ]
