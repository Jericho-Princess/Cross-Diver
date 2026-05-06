[_tb_system_call storage=system/_chapter101.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[new_game_init]

[playse  volume="100"  time="1000"  buf="0"  storage="革靴で歩く.mp3"  fadein="false"  html5="false"  ]
[wait  time="2000"  ]
[stopse  time="5000"  buf="0"  fadeout="true"  ]
[bg  time="5000"  method="crossfade"  storage="最高会議室前.png"  ]
[glink  color="black"  storage="chapter101.ks"  size="50"  x="415"  y="460"  width="300"  height="30"  text="扉を開ける"  _clickable_img=""  target="*openthedoor"  autopos="false"  ]
[s  ]
*openthedoor

[playse  volume="100"  time="1000"  buf="0"  storage="鉄の扉を開ける.mp3"  ]
[place_title text="世界福音最高議会"]

[playbgm  volume="100"  time="500"  loop="true"  storage="魔力に満ちた部屋.mp3"  fadein="true"  ]
[place_bg storage="世界福音最高議会.png"]

[name_council]

[tb_start_text mode=1 ]
何故、君が呼ばれたのか…。[r]もうわかっているはずだ…。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
あの街にて、我らが神、その救いの流れが止まったのだ…。[p]
見たまえ…。[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/スクリーン①.png"  width="323"  height="181"  x="482"  y="133"  _clickable_img=""  name="img_16"  ]
[tb_start_text mode=1 ]
あの街、聖見（ヒジリミ）にて、聖霊の火が下ったのを我々で確認できた。[p]
あの時、リバイバルが始まっても不思議ではなかった。[p]
ところが…。[p]
[_tb_end_text]

[tb_image_hide  time="500"  ]
[tb_image_show  time="500"  storage="default/スクリーン②.png"  width="322"  height="181"  x="482"  y="133"  _clickable_img=""  name="img_19"  ]
[tb_start_text mode=1 ]
神の御心に従わぬ邪悪な霊、つまり悪霊の働きが激化したのだ。[p]
そしてそれらが人々を救いから遠ざけてしまったのだ…。[r]実に残念だった…。[p]
かの悪しき者共を排除できたのなら、おのずと人々は救いへ導かれることだろう。[p]
そして、あの街から救いが始まれば、この国の、[r]ひいては世界の救いにも繋がるだろう。[p]
あそこはそういう場所なのだ。[p]
この計画は、君のその特異なる技術、[font color=#FFF100]「ダイブ」[resetfont]が成功の鍵となるだろう…。[p]
[_tb_end_text]

[font  size="36"  color="0xfff100"  bold="true"  ]
[tb_start_text mode=1 ]
キミはあの街に行き、救いのムーブメントを起こさねばならない。[p]

[_tb_end_text]

[resetfont  ]
[tb_start_text mode=3 ]
まずはメインゲートに行き、トゥアンと話をしろ。[r]君に必要な物を用意してくれているはずだ。[p][r]
[_tb_end_text]

[tb_image_hide  time="500"  ]
[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="鉄の扉を開ける.mp3"  ]
[place_bg storage="エントランス①.png"]

[name_you]

[tb_start_text mode=3 ]
（顔も合わせず、抑揚の無い喋り方。どこか人間味のない奴らだったな。）[p][r]
（そもそも何故、俺が選ばれたのだろうか？）[p][r]
[_tb_end_text]

[tb_start_text mode=4 ]
（まぁいい。さて、どこに行こうか…？）
[_tb_end_text]

[glink  color="black"  storage="chapter101.ks"  size="25"  text="メインゲート"  target="*maingate"  x="100"  y="100"  width=""  height=""  _clickable_img=""  autopos="true"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="最高会議室"  autopos="true"  target="*conference"  ]
[s  ]
*conference

[name_you]

[tb_start_text mode=1 ]
（出発の前にもっと聞きたいことがある。もう一度、あの部屋に行ってみよう。）[p]
[_tb_end_text]

[place_bg storage="最高会議室前.png"]

[name_clear]

[tb_start_text mode=4 ]
部屋の中で何かを話し合っている声がする。[r]盗み聞きができるかもしれない。[p]

[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
この物語はあなたの選択が、あなたの魂の形を変化させるときがあります。[p]
そして、その数値によって人間関係や運命が変わってしまうこともあります。[p]
やり直しはできません。決断を誤らないように…。[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=1 ]
画面右上の「ステータス」ボタンがあなたの役に立つでしょう。[r]画面を閉じる際はステータス画面下側の扉のボタンを押してください。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=4 ]
部屋の中で何かを話し合っている声がする。盗み聞きができるかもしれない。

[_tb_end_text]

[glink  color="black"  storage="chapter101.ks"  size="25"  target="*eavesdrop"  autopos="true"  text="盗み聞きをする"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="メインゲートに行く"  autopos="true"  target="*leave"  ]
[s  ]
*eavesdrop

[name_you]

[tb_start_text mode=1 ]
（気になるな、少し聞いてみるか…。）[p]
[_tb_end_text]

[tb_eval  exp="f.knowledge+=1"  name="knowledge"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<知性>が少し上昇した。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
扉の向こう側から声がする。[p]
[_tb_end_text]

[name_unknown]

[tb_start_text mode=1 ]
あの者は信用できるのか？前任者のようにならないと良いが…。[p]
あの純粋さが吉と出るか、凶と出るか…。[p]
もし、また誰かが欠けるとなれば、その代償はあまりにも大きくなるだろう。[p]
…吉報を待とう。信じ、祈る、我々にできるのはそれだけだ…。[p]
それに…こちらも準備はしている…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（前任者？…とにかく今はメインゲートに行こう。）[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*maingate"  ]
*leave

[name_you]

[tb_start_text mode=1 ]
（盗み聞きはあまり良くないよな…。早く行こう。）[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*maingate"  ]
[glink  color="black"  storage=""  size="30"  target="*maingate"  text="メインゲートに行く"  autopos="true"  ]
[s  ]
[tb_hide_message_window  ]
*maingate

[place_title text="メインゲート"]

[place_bg storage="メインゲート①.png"]

[name_you]

[tb_start_text mode=1 ]
ゲートの前に誰かが立っている。[r]多分、あれが[font color=#FFF100] ＜トゥアン＞ [resetfont]さんだ。[p]
[_tb_end_text]

[chara_show  name="トゥアン"  time="1000"  wait="true"  storage="chara/2/トゥアン①.png"  width="581"  height="874"  left="355"  top="142"  reflect="false"  ]
[name_you]

[tb_start_text mode=1 ]
（白がよく似合う綺麗な女性だ。しかし、こっちも得体の知れない雰囲気だな。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
少しの静寂の後、彼女は喋り始めた。[p]
[_tb_end_text]

[name_tuan]

[tb_start_text mode=1 ]
貴方は来たるべくして、ここに現れた…。[p]
そして今日、あの街へと遣わされていく…。[p]
霊的な流れがどうなっているかは把握できても、街の実際の様子はここからでは見当もつきません。[p]
どうかお気をつけて。[p]
その人の心を開き、その精神世界に潜入、そして、魂に触れる。[r]そんな、あなたの[font color=#FFF100]「ダイブ」[resetfont]の賜物がどうか守られ、祝福されますように。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ダイブ…。相手の心に潜り込み、その精神世界を歩く。）[p]
（俺はあの時から、この不思議な能力を使うことができる。）[p]
（最初は偶然だったし、何が起きているのか信じられなかった。）[p]
（…っていうか、今でも半信半疑だ。）[p]
（もうこの能力を使いたくなかったが、また使うハメになるとは…。）[p]
[_tb_end_text]

[name_tuan]

[tb_start_text mode=1 ]
しかし、そのダイブの性質は、貴方の魂の在り方に強く影響を受けている様子ですね。[p]
念のため、旅立ちの前にあなたの魂の形を確認させてください。[p]
いくつか簡単な質問をします。あなたにとっての「答え」を教えてください。[p]
[_tb_end_text]

[wait  time="1000"  ]
[name_tuan]

[tb_start_text mode=4 ]
質問１、あなたは神の存在を信じていますか？
[_tb_end_text]

[wait  time="1500"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="存在しているという確信がある"  autopos="true"  x="460"  y="384"  width=""  height=""  _clickable_img=""  target="*Q1A"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="実在したら嬉しいね"  autopos="true"  target="*Q1B"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="そんな物は作り話だろう"  autopos="true"  target="*Q1C"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="人間の進化の先に神がいるのだ"  autopos="true"  target="*Q1D"  ]
[s  ]
*Q1A

[tb_eval  exp="f.faith+=3"  name="faith"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<堅信>が少し上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q2"  ]
*Q1B

[tb_eval  exp="f.passion+=1"  name="passion"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<情熱>が少し上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q2"  ]
*Q1C

[tb_eval  exp="f.occult+=5"  name="occult"  cmd="+="  op="t"  val="5"  ]
[tb_eval  exp="f.faith-=10"  name="faith"  cmd="-="  op="t"  val="10"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=3 ]
あなたの<禁忌>が上昇した。[r]
あなたの<堅信>が大きく減少した。[p][r]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q2"  ]
*Q1D

[tb_eval  exp="f.occult+=2"  name="occult"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.faith-=5"  name="faith"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=3 ]
あなたの<禁忌>が上昇した。[r]
あなたの<堅信>が減少した。[p][r]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q2"  ]
*Q2

[name_tuan]

[tb_start_text mode=4 ]
質問２、あなたにとって最も嬉しいことは？
[_tb_end_text]

[wait  time="1500"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="霊的な物との接触"  autopos="true"  target="*Q2A"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="目の前の人が救われる"  autopos="true"  target="*Q2B"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="自分の信じている物が正しいと証明される"  autopos="true"  target="*Q2C"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="誰かが自分を信じてくれる"  autopos="true"  target="*Q2D"  ]
[s  ]
*Q2A

[tb_eval  exp="f.spiritual+=2"  name="spiritual"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<霊感>が上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q3"  ]
*Q2B

[tb_eval  exp="f.passion+=3"  name="passion"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<情熱>が上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q3"  ]
*Q2C

[tb_eval  exp="f.knowledge+=2"  name="knowledge"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<知性>が上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q3"  ]
*Q2D

[tb_eval  exp="f.empathy+=2"  name="empathy"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<共感>が上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q3"  ]
*Q3

[name_tuan]

[tb_start_text mode=4 ]
質問３、誰かの心が見える。それは神からの賜物？それとも呪い？
[_tb_end_text]

[wait  time="1500"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="それだけでなく、すべてが神からの恵みだ"  autopos="true"  target="*Q3A"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="人の心が見えても、良いことは何もない"  autopos="true"  target="*Q3B"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="使い方次第だ。悪く使えば呪いにもなるだろう"  autopos="true"  target="*Q3C"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="他の賜物が良かった…"  autopos="true"  target="*Q3D"  ]
[s  ]
*Q3A

[tb_eval  exp="f.faith+=5"  name="faith"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.empathy-=3"  name="empathy"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=3 ]
あなたの<堅信>が大きく上昇した。[r]
あなたの<柔軟>が減少した。[p][r]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q4"  ]
*Q3B

[tb_eval  exp="f.spiritual+=1"  name="spiritual"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.faith-=2"  name="faith"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=3 ]
あなたの<霊感>が少し上昇した。[r]
あなたの<堅信>が少し減少した。[p][r]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q4"  ]
*Q3C

[tb_eval  exp="f.knowledge+=1"  name="knowledge"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<知性>が少し上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q4"  ]
*Q3D

[tb_eval  exp="f.faith-=5"  name="faith"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<堅信>が大きく減少した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q4"  ]
*Q4

[name_tuan]

[tb_start_text mode=4 ]
質問４、もし、あなたが災害に巻き込まれてしまった時、最初に何をする？
[_tb_end_text]

[wait  time="1500"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="祈り、耐え忍ぶ"  autopos="true"  target="*Q4A"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="まずは自衛、それから避難行動"  autopos="true"  target="*Q4B"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="周囲に困っている人がいないかを探す"  autopos="true"  target="*Q4C"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="何もしない。なるようになるものだ"  autopos="true"  target="*Q4D"  ]
[s  ]
*Q4A

[tb_eval  exp="f.faith+=5"  name="faith"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=1"  name="knowledge"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=3 ]
あなたの<堅信>が大きく上昇した。[r]
あなたの<知性>が少し減少した。[p][r]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q5"  ]
*Q4B

[tb_eval  exp="f.knowledge+=3"  name="knowledge"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<知性>が上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q5"  ]
*Q4C

[tb_eval  exp="f.empathy+=3"  name="empathy"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.passion+=1"  name="passion"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=3 ]
あなたの<柔軟>が上昇した。[r]
あなたの<情熱>が少し上昇した。[p][r]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q5"  ]
*Q4D

[tb_eval  exp="f.spiritual+=1"  name="spiritual"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.passion-=5"  name="passion"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=3 ]
あなたの<霊感>が少し上昇した。[r]
あなたの<情熱>が大きく減少した。[p][r]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*Q5"  ]
*Q5

[name_tuan]

[tb_start_text mode=4 ]
質問５、最後に…あなたが最も恐れていることは？
[_tb_end_text]

[wait  time="1500"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="誰も救えずに役目を終えること"  autopos="true"  target="*Q5A"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="自分自身が闇に堕ちてしまうこと"  autopos="true"  target="*Q5B"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="神は存在しないかも？と疑ってしまうこと"  autopos="true"  target="*Q5C"  ]
[glink  color="black"  storage="chapter101.ks"  size="25"  text="誰からも愛されないこと"  autopos="true"  target="*Q5D"  ]
[s  ]
*Q5A

[tb_eval  exp="f.passion+=5"  name="passion"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<情熱>が大きく上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*question_end"  ]
*Q5B

[tb_eval  exp="f.faith+=5"  name="faith"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<堅信>が大きく上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*question_end"  ]
*Q5C

[tb_eval  exp="f.faith+=1"  name="faith"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの<堅信>が少し上昇した。[p]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*question_end"  ]
*Q5D

[tb_eval  exp="f.empathy+=3"  name="empathy"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.faith-=5"  name="faith"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=3 ]
あなたの<柔軟>が上昇した。[r]
あなたの<堅信>が大きく減少した。[p][r]
[_tb_end_text]

[jump  storage="chapter101.ks"  target="*question_end"  ]
*question_end

[name_tuan]

[tb_start_text mode=1 ]
以上で質問は終わりです。[p]
誰しも魂は、その形を保ち続けることはなく、変化していくものです。[p]
あなたの魂も今後の選択により、様々な形に変化していくことでしょう。[p]
それと、忘れないでいただきたいことが１つあります。[p]
[font color=#FFF100]ダイブは救済ではありません。あなたが誰かの救い主になることも決してありません。[resetfont][r]あなたはただ、真理の証人としてそこに立つだけです。[r]お気を付けください。[p]
さぁ、時間です。[r]あなた用の車を１台、そして現地にはあなたの住居も用意してあります。[p]
あなたのこの旅が守られますように、こちらからお祈りしております。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ありがとう。忘れないようにしておくよ。[p]
それじゃあ行ってくる。[r]あの街、[font color=#FFF100] ＜聖見＞[resetfont]へ。[p]
[_tb_end_text]

[playse  volume="100"  time="0"  buf="0"  storage="鉄の扉を開ける.mp3"  ]
[name_tuan]

[tb_start_text mode=1 ]
…。[p]
彼に宿る導きの声よ。[p]
どうか、その導きが光から離れませんように。[p]
彼の心の旅を導いてあげてください。[r]どうかお願いいたします。[p]
[_tb_end_text]

[chara_hide  name="トゥアン"  time="1000"  wait="true"  ]
[tb_hide_message_window  ]
[jump  storage="chapter102.ks"  target=""  ]
