[_tb_system_call storage=system/_chapter209.ks]

*start

[call  storage="system/_chapter_init.ks"  target=""  ]
[cm  ]

; gameover.ks 共通リトライ用：Chapter209から倒れた場合はこの章の開始地点へ戻す


[eval exp="f.gameover_retry_id = 209"]

[eval exp="f.demon_hunter = 100"]

[playse  volume="15"  time="500"  buf="0"  storage="呼吸音.mp3"  loop="true"  ]
[hide_dive_gauge]

[scene_clear]

[place_title text="ノダの心の世界/n１Ｆ　手術室"]

[playbgm  volume="50"  time="300"  loop="true"  storage="不気味な街灯.mp3"  fadein="false"  ]
[wait  time="500"  ]
[place_bg storage="noda-hospital_battle1.png"]

[show_dive_gauge]

[name_clear]

[tb_start_text mode=1 ]
拘束台にノダさんが捕まっている。[r]その横には黒い影のような物がそこにいる。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
あぁ、待て。…あと少しそこで待っててくれ。[r]もうすぐこいつの切開と摘出が終わるところだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…あの展示はお前が作ったのか？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうだ。悪くなかっただろう？ちゃんと見てくれたか？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ふざけるな！！もう終わりだ！！[r]彼を苦しめて何になる！？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
苦しめる？違う。これは取引だ。[r]私がいなければ、彼もまた苦痛と抱擁を交わすだろう。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
取引だと？何の話だ？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
お、摘出できたぞ…。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
お前にも見せてやる。もっとこっちへ来い。
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter209.ks"  size="30"  text="近づく"  target="*approach"  autopos="true"  ]
[s  ]
*approach

[mental_damage value="2"]

[playbgm  volume="70"  time="0"  loop="true"  storage="蠢く.mp3"  fadein="false"  ]
[bg  time="300"  method="crossfade"  storage="noda-hospital_battle2.png"  ]
[chara_show  name="狩人の悪霊"  time="3000"  wait="false"  storage="chara/10/hunter-normal.png"  width="817"  height="817"  left="186"  top="53"  reflect="false"  ]
[name_clear]

[tb_start_text mode=1 ]
それは人のような姿をしていた。酷く汚れた服装と、汚れた鋏。[r]おぞましいその顔は、上下が逆のオオカミのようであった。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
今回も上手く摘出できたな。[p]
[_tb_end_text]

[tb_image_show  time="0"  storage="default/item-frame.png"  width="424"  height="424"  x="818"  y="60"  _clickable_img=""  name="img_43"  ]
[tb_image_show  time="1000"  storage="default/exhibit2.png"  width="365"  height="365"  x="847"  y="106"  _clickable_img=""  name="img_44"  ]
[name_dhunter]

[tb_start_text mode=1 ]
これはこいつが半年前に起こした自動車事故の象徴だ。[r]こいつの中で痛みの原因になっていたのだ。[p]
どうだ？これも素晴らしい展示品になりそうだろう？[p]
[_tb_end_text]

[if exp="f.passion <= 56"]

[name_you]

[tb_start_text mode=1 ]
（肉塊の中に自動車の鍵が…まだ脈打っているぞ…やばい…吐き気が…。）[p]
[_tb_end_text]

[mental_damage value="5"]

[endif]

[tb_image_hide  time="1000"  ]
[name_you]

[tb_start_text mode=1 ]
（悪霊との対話。事情を知るのも大事だが、あまり長居はできない。）[p]
（必要ならすぐに戦いを始める。その覚悟が必要だ。）[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=4 ]
（話をするべきか？それとも戦うか？）
[_tb_end_text]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="話をする"  target="*talk_intro"  autopos="true"  ]
[glink  color="red"  storage="chapter209.ks"  size="25"  text="戦いを始めよう。"  target="*battlebegin"  autopos="true"  x="0"  y="0"  width=""  height=""  _clickable_img=""  ]
[s  ]
*talk_intro

[mental_damage value="3"]

[name_you]

[tb_start_text mode=1 ]
痛みの原因…？心の苦痛を彼から取り除いているのか？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうとも言えるが、厳密に言えば違う。[p]
えっと、それから…この薬を摘出部位に塗ってやるのだ。[p]
[_tb_end_text]

[tb_image_show  time="0"  storage="default/item-frame.png"  width="424"  height="424"  x="818"  y="60"  _clickable_img=""  name="img_66"  ]
[tb_image_show  time="1000"  storage="default/medicine.png"  width="382"  height="382"  x="839"  y="105"  _clickable_img=""  name="img_67"  ]
[name_you]

[tb_start_text mode=1 ]
おぞましい色と臭いだ…それは毒か？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
毒だと！？そんなわけはない。これは鎮痛剤のようなものだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
鎮痛剤？[p]
しかし彼の心はずっと苦しみに満ちていたように見えたぞ？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
あぁ、たしかにこれは痛みを消すわけではない。[p]
忘れ方を教えるだけだ。酒でも、自己逃避でも、くだらない思想でもなんでも良い。[r]この薬は痛みを忘れるための道を開くのだ。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_you]

[tb_start_text mode=1 ]
だが結局は何も変わらない。記憶が消えたりもしない。過去が変わりもしない。[r]完全な無意味だ。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうか？[p]
これにより彼は歩みを進めることができる。私はコレクションが増える。[r]良い取引じゃないか。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
それで…何が目的だ？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
こいつは私が仕留めた獲物だ。所有権は私にある。[p]
それをはっきりさせるのだ。[r]こいつにもそれを理解させてやらねばならない。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=4 ]
（何を話そうか？それとも戦うか？）
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="どうしてここにいる？"  target="*Q1"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="彼はお前の物ではない"  target="*Q2"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="今までどれだけの人を苦しめた？"  target="*Q3"  autopos="true"  ]
[glink  color="red"  storage="chapter209.ks"  size="25"  text="戦いを始める"  target="*battlebegin"  autopos="true"  x="0"  y="0"  width=""  height=""  _clickable_img=""  ]
[s  ]
*Q1

[mental_damage value="3"]

[name_you]

[tb_start_text mode=1 ]
お前はどうしてここにいる？何がきっかけだ？[p]
[_tb_end_text]

[tb_eval  exp="f.knowledge+=2"  name="knowledge"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.occult+=1"  name="occult"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_dhunter]

[tb_start_text mode=1 ]
この男が私の罠を踏んだ。それが始まりだ。[p]
この男は＜合理化＞という疑似餌に飛びついた。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
合理化？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
その場しのぎの言葉みたいなものだ。[r]個人や多様性、＜ありのまま＞とか＜今を生きる＞とか、そんなものだ。[p]
時にはそれが苦しみの呼び水となることもあるがな。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
＜自由の刑＞か…。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
ほう！！よく知っているな。そこまで理解できているなら話は早い。[r]そういうこともあるのだ。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*Question2"  ]
*Q2

[mental_damage value="3"]

[name_you]

[tb_start_text mode=1 ]
その人はお前のものではない。さっさと解放しろ。[p]
[_tb_end_text]

[tb_eval  exp="f.passion+=2"  name="passion"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.occult+=1"  name="occult"  cmd="+="  op="t"  val="1"  ]
[name_dhunter]

[tb_start_text mode=1 ]
最初は違ったかもしれないが、今は私の物だ。[p]
それに私の支配を失えば、この男はもっと苦しむことになる。[r]もっと大きな自己嫌悪が待っているのだ。[r]そこには慰めが必要であろう？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
お前が苦痛を煽っているだけだ。お前は彼を助けているわけではない。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
それも正しい。私は狩人だ。こいつの救い主ではない。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*Question2"  ]
*Q3

[mental_damage value="3"]

[name_you]

[tb_start_text mode=1 ]
ノダさんだけじゃない。お前は今までどれだけの人を苦しめた？[p]
[_tb_end_text]

[tb_eval  exp="f.knowledge+=2"  name="knowledge"  cmd="+="  op="t"  val="2"  ]
[tb_eval  exp="f.occult+=1"  name="occult"  cmd="+="  op="t"  val="1"  ]
[name_dhunter]

[tb_start_text mode=1 ]
とても長い年月をかけて狩りをしていた…。[r]お前の想像なぞ、遠く及ばない程になるだろうな…。[p]
私は古い時代から＜そこ＞にいたのだ、居場所を変えたりはしない。[p]
ただ、呼び水や罠の形を変え、そこにかかった獲物を狩るだけだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
攻撃方法をアップデートしているのか…。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そういうことだ。新しい物が見つかったら是非教えてくれ。[r]そこで次の狩りをしたい。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
その必要はない。もうお前に会うことはないからな。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*Question2"  ]
*Question2

[name_you]

[tb_start_text mode=4 ]
（何を話そうか？それとも戦うか？）
[_tb_end_text]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="前に魚の悪霊に出会った"  target="*Q4"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="作った展示品を紹介して"  target="*Q5"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="お前の名前は？"  target="*Q6"  autopos="true"  ]
[glink  color="red"  storage="chapter209.ks"  size="25"  text="戦いを始める"  target="*battlebegin"  autopos="true"  x="0"  y="0"  width=""  height=""  _clickable_img=""  ]
[s  ]
*Q4

[mental_damage value="4"]

[name_you]

[tb_start_text mode=1 ]
以前、人の孤独を狙う魚の悪霊に出会った。[r]あいつはお前の知り合いか？[p]
[_tb_end_text]

[tb_eval  exp="f.occult+=2"  name="occult"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[name_dhunter]

[tb_start_text mode=1 ]
ははは、あいつか…時代遅れの無知なヤツだ。[p]
持ち場が無くなってウロウロしてたのを見たが、お前が追い払ったのか？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あぁ、ボコボコにしてやったよ。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
なるほど。[p]
それで…あの女の名前は＜リナ＞だったか？[r]もしかして、彼女はまた独りぼっちなのか？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
お前には関係がない。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうだ、関係がない。今のところはな…。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*battlebegin"  ]
*Q5

[mental_damage value="4"]

[name_you]

[tb_start_text mode=1 ]
この世界にたくさんの展示品があったが、あれらは何をモチーフにしているんだ？[p]
[_tb_end_text]

[tb_eval  exp="f.empathy-=8"  name="empathy"  cmd="-="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.faith-=3"  name="faith"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.occult+=18"  name="occult"  cmd="+="  op="t"  val="18"  val_2="undefined"  ]
[name_dhunter]

[tb_start_text mode=1 ]
私の展示品に興味があるのか？それは実に素晴らしい感性だ！！[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ノダさんがどんな痛みを背負っているのかを知る。）[r]（そのためには、こいつから情報を得なくてはいけない。）[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
知ってのとおり、私の展示品はこの男の様々な苦痛、そしてその象徴だ。[p]
まず、この男はある女と結婚したが、家庭内での不和や不倫から離婚している。[r]それから浮気相手の娘に告発されただろ？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ノダさんにそんなことがあったのか…大変そうだな…。）[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
それから目先の夢に飛びついて借金をした。慰謝料もまともに払えないのにだ。[p]
それから、自動車事故、しかも人身事故だ。よっぽど急いでたのだろう。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（失敗が焦りを生んでいる。）[r]（彼の負の連鎖をどこかで断ち切らないといけないな。）[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
とっておきの罠もある。[p]
この男の実の娘だよ。あぁ、いつか会わせてやりたい。[r]そして実の父親、この男を憎悪していることをちゃんと告げてもらうのだ。[p]
そうなると、もっと私の薬が必要になるはずだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そうはならない。お前はここで終わりだ。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*battlebegin"  ]
*Q6

[mental_damage value="4"]

[tb_eval  exp="f.occult+=1"  name="occult"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
悪霊よ、お前の名前は？[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
我が名は[font color=#FFF100] ＜シノウェ＞ [resetfont]。狩人の名はシノウェだ。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*battlebegin"  ]
*battlebegin

[name_you]

[tb_start_text mode=1 ]
悪霊よ、お前との話は十分だ。[r]さっさと戦いを始めよう。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうか…だが安心しろ。お前にも良い薬を用意してある。[p]
さぁ、狩りの時間だ。[p]
[_tb_end_text]

[playbgm  volume="65"  time="0"  loop="true"  storage="Dangerous-scene.mp3"  fadein="true"  ]
[jump  storage="chapter209.ks"  target="*logos1"  ]
*logos1

[mental_damage value="2"]

[name_dhunter]

[tb_start_text mode=4 ]
神は不変だ。しかし時代は変化する。人はそれに従うべきだ。
[_tb_end_text]

[wait  time="4000"  ]
[logos_timer_start storage="chapter209.ks" target="*logos1_timeout" duration="30000"]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="人を変えてはいけない。そのままでいい。"  target="*logos1_a"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="人は変わっても神の言葉は変わらない。"  target="*logos1_b"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="この世と妥協してはならない。"  target="*logos1_c"  autopos="true"  ]
[s  ]
*logos1_timeout

[logos_timer_stop]

[mental_damage value="13"]

[name_system]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos2"  ]
*logos1_a

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
人間にはそれぞれの良さがある。それを変化させてはいけない。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうだな。こいつの逃げ癖もお前らの言う＜賜物＞なのだ。[r]おっと、酒癖の悪さや虚言もか？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
いや…欠点もあるが…人の本質は…その…。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
お前だってこの男を見下しているはずだ。それも賜物か？[r]素晴らしいギフトだな？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
いや…違う。俺は…。[p]
[_tb_end_text]

[mental_damage value="12"]

[jump  storage="chapter209.ks"  target="*logos2"  ]
*logos1_b

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
人間は変わってしまうだろう。しかし…[p]
天地は滅びます。しかし、わたしの言葉は決して滅びません。[r]新約聖書 マタイによる福音書 ２４：３５ にそう書いてある。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[playse  volume="80"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.demon_hunter-=20"  name="demon_hunter"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[if exp="f.demon_hunter < 0"]

[eval exp="f.demon_hunter = 0"]

[endif]

[name_dhunter]

[tb_start_text mode=1 ]
神の言葉は変わらないだと？[p]
この男は神の言葉を受け入れたことなぞ、一度もない。[r]こいつには関係のないことだろ？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
俺がもっと伝える。彼にも理解できる日が来ると信じている。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
この男には無理だ。決して理解なぞできない。[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
悪霊の力が少し弱まった。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos2"  ]
*logos1_c

[logos_timer_stop]

[tb_eval  exp="f.faith+=3"  name="faith"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.occult-=2"  name="occult"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.demon_hunter-=25"  name="demon_hunter"  cmd="-="  op="t"  val="25"  val_2="undefined"  ]
[if exp="f.demon_hunter < 0"]

[eval exp="f.demon_hunter = 0"]

[endif]

[name_you]

[tb_start_text mode=1 ]
あなたがたは、この世と妥協してはならない。[p]
むしろ、心を新たにして自分を変え、何が神の御旨であるか、何が良いことで、[r]神に受けいれられ、かつ完全であるかを見わけるがよい。[r]新約聖書 ローマ人への手紙 １２：２ にそう書いてある。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="狩人の悪霊"  time="400"  cross="true"  storage="chara/10/hunter-rage.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
その名前を出すな！！人間はこの世で生まれて育つ！！世俗の奴隷だ！！[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos2"  ]
*logos2

[mental_damage value="2"]

[chara_mod  name="狩人の悪霊"  time="400"  cross="true"  storage="chara/10/hunter-normal.png"  ]
[set_bad_choice_color]

[name_dhunter]

[tb_start_text mode=4 ]
真理を知りたいのか？それなら学びや知識が必要であろう？[r]お前はそれを否定するのか？
[_tb_end_text]

[wait  time="4000"  ]
[logos_timer_start storage="chapter209.ks" target="*logos2_timeout" duration="30000"]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="知識は必要だが、なくても良い"  target="*logos2_a"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="主に信頼せよ、自分の知識にたよるな"  target="*logos2_b"  autopos="true"  ]
[if exp="tf.bad_choice_color == 'blue'"]

[glink  color="blue"  storage="chapter209.ks"  size="25"  text="真理を知らなくても人は自由になれる"  target="*logos2_c"  autopos="true"  ]
[else]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="真理を知らなくても人は自由になれる"  target="*logos2_c"  autopos="true"  ]
[endif]

[s  ]
*logos2_timeout

[logos_timer_stop]

[mental_damage value="13"]

[name_system]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos3"  ]
*logos2_a

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
知識は必要かもしれない。しかし、無くてもどうにかなる。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうだな。全ては個人の裁量に委ねられている。[p]
この男の好きな自由主義というものだ。[r]この男は学びを欲した。私の薬がその道を開くのだ。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos3"  ]
*logos2_b

[logos_timer_stop]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge+=1"  name="knowledge"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
心をつくして主に信頼せよ、自分の知識にたよるな。[p]
あなたの行く所どこでも、主を認めよ。[r]そうすれば、主はあなたの道をまっすぐにされる。[r]旧約聖書 箴言 ３：５ ～ ６ にそう書いてある。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="狩人の悪霊"  time="400"  cross="true"  storage="chara/10/hunter-rage.png"  ]
[tb_eval  exp="f.demon_hunter-=25"  name="demon_hunter"  cmd="-="  op="t"  val="25"  val_2="undefined"  ]
[name_dhunter]

[tb_start_text mode=1 ]
その名前を出すな！！[r]知識を求め、それを支配したいというのは人間の本質だ！！[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[if exp="f.demon_hunter < 0"]

[eval exp="f.demon_hunter = 0"]

[endif]

[jump  storage="chapter209.ks"  target="*logos3"  ]
*logos2_c

[logos_timer_stop]

[tb_eval  exp="f.faith-=4"  name="faith"  cmd="-="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=3"  name="knowledge"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[name_you]

[tb_start_text mode=1 ]
たとえ真理を知らなくても、人間は自由になれる。[r]人は自由を自分で掴み取れるはずだ。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
なんだと！？[p]
あなたたちは真理を知るであろう。[r]そして真理は、あなたがたに自由を得させるであろう。[r]新約聖書 ヨハネによる福音書 ８：３２ にそう書いてある。[p]
[_tb_end_text]

[chara_mod  name="狩人の悪霊"  time="400"  cross="true"  storage="chara/10/hunter-rage.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
お前は反逆者だ！！神を冒涜しているのだ！！やはり腐敗を持ってきたのはお前だったのだ！！[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あぁ、違う…やめろ…やめてくれ…俺は…違う。[p]
[_tb_end_text]

[mental_damage value="30"]

[jump  storage="chapter209.ks"  target="*logos3"  ]
*logos3

[mental_damage value="1"]

[chara_mod  name="狩人の悪霊"  time="700"  cross="true"  storage="chara/10/hunter-normal.png"  ]
[set_bad_choice_color]

[name_dhunter]

[tb_start_text mode=4 ]
この男の苦しみはどこから来ている？[r]これら全ては、こいつ自身が蒔いた種じゃないのか？
[_tb_end_text]

[wait  time="4000"  ]
[logos_timer_start storage="chapter209.ks" target="*logos3_timeout" duration="30000"]

[if exp="tf.bad_choice_color == 'blue'"]

[glink  color="blue"  storage="chapter209.ks"  size="25"  text="全ての人の罪の代償はイエス様が支払っている"  target="*logos3_a"  autopos="true"  ]
[else]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="全ての人の罪の代償はイエス様が支払っている"  target="*logos3_a"  autopos="true"  ]
[endif]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="義のために迫害されてきた人たちは幸いだ"  target="*logos3_b"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="神はその愛する者に試練を与えることもある"  target="*logos3_C"  autopos="true"  ]
[s  ]
*logos3_timeout

[logos_timer_stop]

[mental_damage value="13"]

[name_system]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos4"  ]
*logos3_a

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
全ての人の罪の代償はイエス様が支払っているはずだ。[r]ノダさんの罪の報酬はもう存在していない。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
お前は何を言っている？この男はまだ救い主を知らないだろう？[p]
この男の罪は大きい。その罰も大きい。もっと見せつけてやらねばならない。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
彼もすぐに救い主を知って、信じるようになる。[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_dhunter]

[tb_start_text mode=1 ]
それはどうかな…？[p]
教会のありがたい「お話」にもこいつは耳を貸さなかっただろう？[r]こいつは誰の言うことも聞かない人間だ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…彼もいつかわかるようになる。[p]
[_tb_end_text]

[mental_damage value="11"]

[jump  storage="chapter209.ks"  target="*logos4"  ]
*logos3_b

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
義のために迫害される人々は、幸いである、天国は彼らのものである。[r]新約聖書 マタイによる福音書 ５：１０ にそう書いてある。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
義だと！？[p]
ハハッ、笑わせるな。こいつの義は何だ？[r]不貞か？自己弁護か？虚偽か？妬みか？罵りか？[r]こいつのどこに義がある？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…彼にも良いところはあるはずだ。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
今、お前の中で裁きの心が少し見えたぞ？[r]どうする？摘出してやろうか？お前用の展示品も作ってやろう。[p]
[_tb_end_text]

[mental_damage value="12"]

[jump  storage="chapter209.ks"  target="*logos4"  ]
*logos3_C

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
主はその愛する者を鍛え、子として受け入れる者を皆、鞭打たれるからである。[r]新約聖書 ヘブライ人への手紙 １２：６ にそう書いてある。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.demon_hunter-=25"  name="demon_hunter"  cmd="-="  op="t"  val="25"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="狩人の悪霊"  time="400"  cross="true"  storage="chara/10/hunter-rage.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
その名前を出すな！！理由なき罰を受け入れる者は愚か者だけだ！！[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[if exp="f.demon_hunter < 0"]

[eval exp="f.demon_hunter = 0"]

[endif]

[jump  storage="chapter209.ks"  target="*logos4"  ]
*logos4

[mental_damage value="1"]

[chara_mod  name="狩人の悪霊"  time="1000"  cross="true"  storage="chara/10/hunter-normal.png"  ]
[name_dhunter]

[tb_start_text mode=4 ]
私の薬でこいつの知恵が開かれる。それで最高級の平安が与えられるはずだ。[r]何の問題がある？
[_tb_end_text]

[wait  time="4000"  ]
[logos_timer_start storage="chapter209.ks" target="*logos4_timeout" duration="30000"]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="お前の薬は知恵ではなく、＜その場しのぎ＞だ。"  target="*logos4_a"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="知恵の初めは神を恐れること"  target="*logos4_b"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="神による平安が一番"  target="*logos4_c"  autopos="true"  ]
[s  ]
*logos4_timeout

[logos_timer_stop]

[mental_damage value="13"]

[name_system]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos5"  ]
*logos4_a

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
お前の薬は知恵ではなく、＜その場しのぎ＞だ。[r]決して救いにはならない。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
たしかにそうかもしれない。[p]
しかし、この男はそれでも欲しがるだろう。[r]苦痛に耐えるためには、これが必要なのだ。[p]
この男はこの＜その場しのぎ＞が大好きなのだからな！！[p]
[_tb_end_text]

[mental_damage value="11"]

[jump  storage="chapter209.ks"  target="*logos5"  ]
*logos4_b

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
神を恐れることは知恵の初め。[r]旧約聖書 箴言 ９：１０ にそう書いてある。[p]
お前の薬は知恵には繋がらない。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge+=3"  name="knowledge"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.demon_hunter-=20"  name="demon_hunter"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[chara_mod  name="狩人の悪霊"  time="1000"  cross="true"  storage="chara/10/hunter-normal.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
ふざけるな。こいつは神を恐れてはいない。[r]ならばこいつは知恵無き者だ！！[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
悪霊の力が少し弱まった。[p]
[_tb_end_text]

[if exp="f.demon_hunter < 0"]

[eval exp="f.demon_hunter = 0"]

[endif]

[jump  storage="chapter209.ks"  target="*logos5"  ]
*logos4_c

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
最高の平安は神から与えられるものだ。[p]
求めているものを神に打ち明けなさい。[r]そうすれば、人間のすべての考えをはるかに超えた神の平安が、[r]あなたがたの心と思いとをキリスト・イエスにあって守るであろう。[r]新約聖書 フィリピ人への手紙 ４：７ にそう書いてある。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.demon_hunter-=25"  name="demon_hunter"  cmd="-="  op="t"  val="25"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="狩人の悪霊"  time="400"  cross="true"  storage="chara/10/hunter-rage.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
その名前を出すな！！こいつは神と語りはしない！！[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[if exp="f.demon_hunter < 0"]

[eval exp="f.demon_hunter = 0"]

[endif]

[jump  storage="chapter209.ks"  target="*logos5"  ]
*logos5

[mental_damage value="1"]

[name_dhunter]

[tb_start_text mode=4 ]
あの男は何度も罪を犯した。神はあんな人間を許すと思うか！？
[_tb_end_text]

[wait  time="4000"  ]
[logos_timer_start storage="chapter209.ks" target="*logos5_timeout" duration="30000"]

[glink  color="black"  storage="chapter209.ks"  size="25"  text="彼にはまだチャンスがある"  target="*logos5_a"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="神は罪を責めたりしない"  target="*logos5_b"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="罪の清算を終えればよい"  target="*logos5_c"  autopos="true"  ]
[s  ]
*logos5_timeout

[logos_timer_stop]

[mental_damage value="13"]

[name_system]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos6"  ]
*logos5_a

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
彼にはまだチャンスがある。変わりたいとあの人が思えば、そこから変わる。[r]神様もそれをきっと応援してくれるはずだ。[p]
わたしは彼らの不義に憐れみをかけ、もはや彼らの罪を思い起こさない。[r]新約聖書 ヘブライ人への手紙 ８：１２ にそう書いてある。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.demon_hunter-=25"  name="demon_hunter"  cmd="-="  op="t"  val="25"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="狩人の悪霊"  time="400"  cross="true"  storage="chara/10/hunter-rage.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
その名前を出すな！！こいつは邪悪で変わらない！！そして私の獲物だ！！[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[if exp="f.demon_hunter < 0"]

[eval exp="f.demon_hunter = 0"]

[endif]

[jump  storage="chapter209.ks"  target="*logos6"  ]
*logos5_b

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
真実の神は愛の神だ。許しの神だ。どんな罪も責めたりはしない。[p]
[_tb_end_text]

[tb_eval  exp="f.faith-=3"  name="faith"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=4"  name="knowledge"  cmd="-="  op="t"  val="4"  val_2="undefined"  ]
[name_dhunter]

[tb_start_text mode=1 ]
ならばお前にこの戦いは関係無い。[p]
この男は今後も失態を重ねるだろう。そして私と共にそれを刈り取るのだ。[r]この男に改善の必要は無い。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
だが、もっと聖い生き方もできるはずだ。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
それはお前のエゴイズムだ。[r]今のこの男は間違った生き方をしていると言いたいのか？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
いや…そうではあるが…今後変わるだろう。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
お前は人を裁く人間だ。[r]自分がされた痛みを人に擦り付けようとしているのだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
俺は…もう人は裁かない…そう決めたんだ…クソ…。[p]
[_tb_end_text]

[mental_damage value="13"]

[jump  storage="chapter209.ks"  target="*logos6"  ]
*logos5_c

[logos_timer_stop]

[name_you]

[tb_start_text mode=1 ]
たしかに彼には、罪の悔い改めが必要かもしれない。[r]でも、そのあと聖く生まれ変われるかもしれない。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
あぁ、生まれ変われるだろう。[p]
そうしたら、もっと罪を犯すようになるかもな。[r]今度は人を殺したりするんじゃないのか？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そんなことはない…。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうか？[p]
だが罪を重ねることはほぼ間違いないだろう。[r]今、お前がそう思っているようにな。[p]
[_tb_end_text]

[mental_damage value="12"]

[jump  storage="chapter209.ks"  target="*logos6"  ]
*logos6

[mental_damage value="0"]

[chara_mod  name="狩人の悪霊"  time="1000"  cross="true"  storage="chara/10/hunter-normal.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
お前のことは仲間から聞いたぞ。あの時は辛かっただろう？[p]
みんながお前のことを指さしていた。[r]こう呼ばれていたな？＜悪い見本＞だと。[p]
[_tb_end_text]

[tb_image_show  time="2000"  storage="default/accusation.png"  width="1296"  height="865"  x="-13"  y="-2"  _clickable_img=""  ]
[name_dhunter]

[tb_start_text mode=1 ]
ほら、みんなが来たぞ？お前を非難するために、全員集まったそうだ。[p]
[_tb_end_text]

[if exp="f.demon_hunter <= 0"]

[jump  storage="chapter209.ks"  target="*logos6_win"  ]
[else]

[jump  storage="chapter209.ks"  target="*logos6_lose"  ]
[endif]

*logos6_lose

[if exp="f.faith >= 60"]

[name_you]

[tb_start_text mode=4 ]
たしかに、あの時の俺は間違っていたのかもしれない。
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="それでもやり直せる"  target="*logos6_faith_correct"  autopos="true"  ]
[glink  color="black"  storage="chapter209.ks"  size="25"  text="受けるべき罰があるのかもしれない"  target="*logos6_faith_wrong"  autopos="true"  ]
[s  ]
[endif]

[jump  storage="chapter209.ks"  target="*logos6_lose_end"  ]
*logos6_faith_correct

[name_you]

[tb_start_text mode=1 ]
たしかに俺にも間違いはあったかもしれない。[r]でも、神様は俺にもう一度チャンスをくれた。[p]
誰にだって、やり直せるチャンスがある。イエス様がそれを俺にくれたんだ。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.demon_hunter-=5"  name="demon_hunter"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="狩人の悪霊"  time="1000"  cross="true"  storage="chara/10/hunter-rage.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
そんなことはどうでもいい！！みんながお前のことを非難しているぞ！？[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
悪霊の力が少し弱まった。[p]
[_tb_end_text]

[if exp="f.demon_hunter <= 0"]

[eval exp="f.demon_hunter = 0"]

[jump  storage="chapter209.ks"  target="*logos6_win"  ]
[else]

[jump  storage="chapter209.ks"  target="*logos6_lose_end"  ]
[endif]

*logos6_faith_wrong

[name_you]

[tb_start_text mode=1 ]
まだ…俺には受けるべき罰があるのかもしれない…[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*logos6_lose_end"  ]
*logos6_lose_end

[name_you]

[tb_start_text mode=1 ]
俺はベストを尽くした…それでもうまくいかないこともある。[p]
理解されないこともある…みんなが悪いわけじゃない。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
そうだ、悪いのはお前だ。あの時は誰も間違っていなかったのだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
違う…みんな…話を聞いてくれ…俺は…。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
ははは！！そうだ！！やっと思い出したか！？[p]
それじゃあ、終わりにしようか？[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="4"  storage="sword.mp3"  ]
[name_clear]

[tb_start_text mode=1 ]
悪霊の手に持つ鋏がギラりと輝いた。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_dhunter]

[tb_start_text mode=1 ]
だが勘違いはするなよ？お前用の良い薬もちゃんと用意してある。[r]しっかりここで苦しむといい…。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="4"  storage="stab.mp3"  loop="true"  ]
[mental_damage value="999"]

[stopse  time="1000"  buf="4"  ]
*logos6_win

[name_you]

[tb_start_text mode=1 ]
あの時のみんなか…ずいぶん懐かしいな。[r]みんな元気にしてるかな。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
さぁ、もっと見ろ！！みんなお前に後ろ指を指してるぞ！？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
昔の話だ。古いものは過ぎ去る。[p]
何があったかはもう興味がない。人は変わるからな。[p]
[_tb_end_text]

[name_dhunter]

[tb_start_text mode=1 ]
なんだと？どうなっている？ほら、これがお前の苦痛だろ！？[r]＜お前を非難する者たち＞だ。素晴らしい展示物だろ！？[p]
どうだ！？悲鳴を聞かせろ！！[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
もういい…終わりにしよう。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_dhunter]

[tb_start_text mode=1 ]
待て！！それなら次の展示だ！！[p]
お前の…えっと…家族のやつだ！！[r]すぐに展示を用意してやる！！[p]
[_tb_end_text]

[jump  storage="chapter209.ks"  target="*battle_clear"  ]
*battle_clear

[logos_timer_stop]

[hide_mental_warning]

[name_you]

[tb_start_text mode=1 ]
お前との話はもう終わりだ！！[p]
イエスの御名によって命じる。ここから立ち去れ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[chara_mod  name="狩人の悪霊"  time="2000"  cross="true"  storage="chara/10/hunter-defeated.png"  ]
[name_dhunter]

[tb_start_text mode=1 ]
あぁ…[p]
私の…獲物…薬…。[p]
[_tb_end_text]

[chara_hide  name="狩人の悪霊"  time="5000"  wait="false"  pos_mode="true"  ]
[wait  time="1000"  ]
[name_clear]

[tb_start_text mode=1 ]
狩人の悪霊は塵になって消えていく。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="鉄の扉を開ける.mp3"  ]
[playse  volume="100"  time="500"  buf="3"  storage="風が吹く.mp3"  fadein="true"  loop="true"  ]
[name_clear]

[tb_start_text mode=1 ]
扉が開き、部屋に風が吹いた。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
そして風は、その塵をどこかに連れて行った。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（時間がない…ノダさんを助けなければ…。）[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="noda-hospital_or.png"  ]
[name_you]

[tb_start_text mode=1 ]
ノダさん！！大丈夫ですか！？[p]
[_tb_end_text]

[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[chara_show  name="ノダ"  time="1000"  wait="true"  storage="chara/9/noda-10.png"  width="830"  height="830"  left="212"  top="104"  reflect="false"  ]
[playse  volume="20"  time="500"  buf="3"  storage="otoko_umeki.mp3"  fadein="true"  ]
[name_noda]

[tb_start_text mode=1 ]
あぁ…もう嫌だ…苦しいのはもう見たくないんだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
もう大丈夫ですよ、今から祈りますね。[p]
神様、今ここに彼がいます。彼の傷ついた心にどうか触れてください。[p]
彼の痛みに主が触れてくださいますように…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（神様は必ず来てくださる。）[p]
（ノダさんの痛みもきっと癒してくださるはずだ。）[p]
[_tb_end_text]

[chara_hide  name="ノダ"  time="1000"  wait="true"  pos_mode="true"  ]
[bg  time="3000"  method="crossfade"  storage="noda_and_jesus1.png"  ]
[name_clear]

[tb_start_text mode=1 ]
世界は少しだけ明るくなり、そして、＜彼＞は来てくれた…。[p]
[_tb_end_text]

[name_jesus]

[tb_start_text mode=1 ]
やっと会えたね…すまないね…今まであなたに寂しい思いをさせてしまった。[p]
さぁ、立って。一緒に帰ろう。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
優しい光がノダさんを包んでいく…これで彼もきっと…[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="noda_and_jesus2.png"  ]
[name_noda]

[tb_start_text mode=1 ]
俺に触るな！！出ていけ！！[p]
もう俺に関わるな！！俺は何も悪くないだろうが！！[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
えっ！？ま、待ってください！！ノダさん、この人は…[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
もういい！！俺にはもう何も必要ない！！[p]
こいつなんか知らねぇよ！！いいから出てけよ！！[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
ノダさんの叫びが部屋に響きわたった。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="noda_and_jesus3.png"  ]
[tb_start_text mode=1 ]
そして＜彼＞は何も言わず去っていってしまった。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あぁ…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（どうする…？）[p]
（いずれにせよ精神の限界が近い…ダイブはここで終了だ。）[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ノダさん、向こうにエントランスがありました。[r]そこから出られるはずです。[p]
…外で待ってますね。[p]
[_tb_end_text]

[name_noda]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[hide_dive_gauge]

[jump  storage="chapter210.ks"  target=""  ]
