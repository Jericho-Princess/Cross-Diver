[_tb_system_call storage=system/_chapter110.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[playse  volume="50"  time="2500"  buf="1"  storage="水ぶくぶく.mp3"  loop="true"  fadein="true"  ]
[hide_dive_gauge]

[place_title text="水槽部屋"]

[place_bg storage="水槽部屋.png"]

[playse  volume="15"  time="500"  buf="0"  storage="呼吸音.mp3"  loop="true"  ]
[show_dive_gauge]

[name_clear]

[tb_start_text mode=1 ]
水槽のあるリビングルームだ。[r]エアーポンプの音だけが、そこには響く。[p]
夜のように暗い部屋を照らしていたのは、水槽の照明だけであった。[p]
そして、水槽の中に[font color=#FFF100] ＜そいつ＞ [resetfont]はいた。[p]
やがて、そいつは俺に向かって語りかけてきた…。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
ここに入って来れたのだな…。[p]
リナか…彼女が扉を開けたのだな…。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
さぁ、もっとこっちに来い。[r]お前の話を聞かせてくれ。
[_tb_end_text]

[wait  time="1000"  ]
[glink  color="black"  storage="chapter110.ks"  size="50"  text="近づく"  target="*approach"  ]
[s  ]
*approach

[mental_damage value="7"]

[bg  time="1000"  method="crossfade"  storage="水槽部屋②.png"  ]
[chara_show  name="魚の悪霊"  time="1000"  wait="true"  storage="chara/5/魚の悪霊①.png"  width="552"  height="830"  left="367"  top="-155"  reflect="false"  ]
[playbgm  volume="50"  time="0"  loop="true"  storage="100.mp3"  ]
[name_clear]

[tb_start_text mode=1 ]
それは魚のような姿をしていた。鈍く輝く鱗、[r]おぞましい気配、そしてその顔は人間によく似ていた。[p]
こいつは、悪霊だ。間違いない。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
それで…何をしに来た？[r]話をしに来たのか？[p]
お前も孤独なのだろう。[r]私は知っているぞ、お前のこともな。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（悪霊との対話。事情を知るのも大事だが、あまり長居はできない。）[p]
（必要ならすぐに戦いを始める。この覚悟が必要だ。）[p]
[_tb_end_text]

[tb_start_text mode=4 ]
何を話そうか？それとも戦うか？
[_tb_end_text]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="彼女の心から出ていけ。"  target="*Q1"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="何故ここにいる？"  target="*Q2"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="こんな水槽は壊してやる。"  target="*Q3"  autopos="true"  ]
[glink  color="red"  storage="chapter110.ks"  size="25"  text="戦いを始めよう。"  target="*battle"  autopos="true"  ]
[s  ]
*Q1

[mental_damage value="4"]

[name_you]

[tb_start_text mode=1 ]
彼女の心から出ていけ。[r]ここはお前の居場所ではない。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
どうして、そんな残酷なことを言える？[r]私が出ていけば、リナはまた孤独になる。[r]彼女が私を求めているのだ。[p]
それを引き剥がすとは、お前は彼女を傷つけに来たのだろう。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*question2"  ]
*Q2

[mental_damage value="4"]

[name_you]

[tb_start_text mode=1 ]
何故ここにいる？[r]ずっとこの場所にいたのか？[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
最初からここにいたわけではない。[r]私は提案をし、彼女はそれを受け入れたのだ。[p]
彼女は心の拠り所を見つけ、私もこの場所を手に入れることができた。[p]
これは助け合いなのだ。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*question2"  ]
*Q3

[mental_damage value="3"]

[name_you]

[tb_start_text mode=1 ]
こんな水槽はリナには必要ない。[r]俺が叩き壊してやる。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
この水槽は私の神殿だ。[r]お前にとっては壊したい物だろうが、これを壊すことはできない。[p]
この水槽はリナが大事に守っている。[r]彼女が私の場所を守ってくれているのだ。[p]
お前は彼女の大事な物を奪いに来たのか？[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*question2"  ]
*question2

[name_you]

[tb_start_text mode=4 ]
何を話そうか？それとも戦うか？
[_tb_end_text]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="この街に他の悪霊はいる？"  target="*Q4"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="リナはお前を嫌っている。"  target="*Q5"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="どうやったらお前を呼びだせる？"  target="*Q6"  autopos="true"  ]
[glink  color="red"  storage="chapter110.ks"  size="25"  text="戦いを始めよう。"  target="*battle"  autopos="true"  ]
[s  ]
*Q4

[mental_damage value="6"]

[name_you]

[tb_start_text mode=1 ]
この街に他の悪霊はいるのか？[r]お前みたいな奴はまだいるのか？[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
知りたいか？[r]お前の頼み方次第では教えてやってもいい。[p]
だが言っておくぞ、我々はお前が思っている以上に多く潜伏している。[r]この街はすでに我々の支配下なのだ。[p]
[_tb_end_text]

[tb_eval  exp="f.knowledge+=3"  name="knowledge"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの＜知性＞が少し上昇した。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*question3"  ]
*Q5

[mental_damage value="3"]

[name_you]

[tb_start_text mode=1 ]
リナはお前のことを嫌っている。[r]本当に好きだった物と、お前は違う。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
それは間違いだ。[r]彼女の心はずっと私を呼んでいた。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
それはお前の勘違いだろ？[r]そのペットはもう死んだはずだ。[p]
そして、お前は自分が呼ばれたと勘違いしたんだ。[r]この＜間抜け＞が。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
そういうお前は、彼女に呼ばれてここに来たのか？[r]お前が勝手に入ってきたんじゃないのか？[p]
お前は何も変わっていない。[r]ほら…昔のようにまた＜密告者＞がお前を指差しているぞ？[p]
[_tb_end_text]

[mental_damage value="7"]

[jump  storage="chapter110.ks"  target="*question3"  ]
*Q6

[mental_damage value="2"]

[name_you]

[tb_start_text mode=1 ]
ここ以外でお前に会いたい時、[r]どうやったらお前を呼びだせる？[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
呼吸法を呼び水にしている者があの街にいる。[p]
羊水の呼吸。[r]奴らはそれをセミナーでそう呼んでいたはずだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
セミナー？[p]
街に妙な動きをしている人間がいるわけか…。[r]貴重な情報どうも。[p]
[_tb_end_text]

[tb_eval  exp="f.occult+=8"  name="occult"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの＜禁忌＞が少し上昇した。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*question3"  ]
*question3

[name_you]

[tb_start_text mode=4 ]
何を話そうか？それとも戦うか？
[_tb_end_text]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="イエスキリストがお前を見ている。"  target="*Q7"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="お前の名前は？"  target="*Q8"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="俺の心に住む？"  target="*Q9"  autopos="true"  ]
[glink  color="red"  storage="chapter110.ks"  size="25"  text="戦いを始めよう。"  target="*battle"  autopos="true"  ]
[s  ]
*Q7

[mental_damage value="1"]

[name_you]

[tb_start_text mode=1 ]
イエスキリストがお前を見ているぞ。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
おい、その名前は出すな。[p]
…出してはいけない名前だ。[p]
きっと、お前も酷い目に合うぞ…。[r]気をつけろ…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そうか…。[p]
じゃあイエスキリストの名のもとに、本題に入ろうか…。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*battle"  ]
*Q8

[mental_damage value="6"]

[name_you]

[tb_start_text mode=1 ]
悪霊よ、お前の名前は？[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
我が名は[font color=#FFF100] ＜テヌマ＞ [resetfont]。[r]覚えておくがいい。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
テヌマよ。[r]イエスの御名によって命じる、ここから立ち去れ。[p]
[_tb_end_text]

[tb_eval  exp="f.occult+=6"  name="occult"  cmd="+="  op="t"  val="6"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの＜禁忌＞が少し上昇した。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*battle"  ]
*Q9

[mental_damage value="6"]

[name_you]

[tb_start_text mode=1 ]
俺の心の中に住んでみるか？[r]この水槽よりもっと良い場所も用意しておく。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
良いのか？[p]
本当にそれが望みなら、リナと縁を切ってもいい。[p]
お前のダイブ能力は有効利用できそうだ。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
さぁ、契約の時だ。[r]利き手を出せ…。
[_tb_end_text]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="嘘だよ。騙されたのか？"  target="*temptation_no"  autopos="true"  ]
[glink  color="red"  storage="chapter110.ks"  size="25"  text="契約する"  target="*temptation_yes"  autopos="true"  ]
[s  ]
*temptation_no

[name_you]

[tb_start_text mode=1 ]
嘘に決まってるだろう。[r]悪霊でも騙されるなんて、なんか笑えるな。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
お前はやっぱり嘘つきだ。[r]みんなが言っていたことは間違いじゃなかったのだ。[p]
あの時から変わらず、お前は嘘つきだ。[r]人々に呪いをもたらす者だ。[p]
[_tb_end_text]

[mental_damage value="7"]

[jump  storage="chapter110.ks"  target="*battle"  ]
*temptation_yes

[name_dfish]

[tb_start_text mode=1 ]
契約の時だ。[p]
さぁこれから２人でやっていこう…。[p]
[_tb_end_text]

[jump  storage="gameover.ks"  target="*gameover_start"  ]
*battle

[cm  ]

;==================================================
; テヌマ戦 初期化
;==================================================


[iscript]
if (window.tenumaBattleTimer) {
clearTimeout(window.tenumaBattleTimer);
window.tenumaBattleTimer = null;
}
window.tenumaBattleLocked = false;
[endscript]

[eval exp="f.demon_fish = 100"]

[eval exp="f.tenuma_turn = 0"]

[name_system]

[tb_start_text mode=4 ]
これより悪霊との戦闘を開始します。
戦闘のルールを聞きますか？
[_tb_end_text]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="聞く"  target="*howtobattle_yes"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="必要ない"  target="*battlebegin"  ]
[s  ]
*howtobattle_yes

[tb_start_text mode=1 ]
霊的な戦いにおいては、神の言葉こそが悪霊に対する最強の武器になります。[r]相手の言葉に対して神の真理に近い回答で反撃してください。[p]
また、あなたの＜知性＞の数値次第では危険な選択肢が青く見えることもあります。[r]青い選択肢はなるべく選ばないようにしましょう。[p]
戦闘中は時間制限が存在します。[r]選択肢が表示されてから一定時間経過するとダメージが発生します。[p]
また戦闘時もダイブ使用中であり＜精神＞は常に消耗します。[r]あなたの＜精神＞が０にならないように気を付けてください。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*battlebegin"  ]
*battlebegin

[mental_damage value="5"]

[name_system]

[name_you]

[tb_start_text mode=1 ]
悪霊よ、お前との話は十分だ。[p]
さっさと戦いを始めよう。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
戦う…？[p]
違うな。[p]
お前がここで溺れ死ぬだけだ。[p]
[_tb_end_text]

[playbgm  volume="70"  time="500"  loop="true"  storage="101.mp3"  fadein="true"  ]
[jump  storage="chapter110.ks"  target="*logos1"  ]

;==================================================
; タイマー停止用：各選択肢ラベル冒頭で使用
;==================================================


*tenuma_stop_timer

[iscript]
window.tenumaBattleLocked = true;
if (window.tenumaBattleTimer) {
clearTimeout(window.tenumaBattleTimer);
window.tenumaBattleTimer = null;
}
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
[endscript]

[free layer="2" name="battle_timer_text"]

[return  ]

;==================================================
; 勝利判定：demon_fish が 0 以下なら勝利
;==================================================


*tenuma_check_after_logos1

[if exp="f.demon_fish <= 0"]

[jump  storage="chapter110.ks"  target="*battlevictory"  ]
[endif]

[jump  storage="chapter110.ks"  target="*logos2"  ]
*tenuma_check_after_logos2

[if exp="f.demon_fish <= 0"]

[jump  storage="chapter110.ks"  target="*battlevictory"  ]
[endif]

[jump  storage="chapter110.ks"  target="*logos3"  ]
*tenuma_check_after_logos3

[if exp="f.demon_fish <= 0"]

[jump  storage="chapter110.ks"  target="*battlevictory"  ]
[endif]

[jump  storage="chapter110.ks"  target="*logos4"  ]
*tenuma_check_after_logos4

[if exp="f.demon_fish <= 0"]

[jump  storage="chapter110.ks"  target="*battlevictory"  ]
[endif]

[jump  storage="chapter110.ks"  target="*logos5"  ]
*tenuma_check_after_logos5


; 5ターン生き残ったので勝利


[jump  storage="chapter110.ks"  target="*battlevictory"  ]

;==================================================
; ターン1
;==================================================


*logos1

[cm  ]
[eval exp="f.tenuma_turn = 1"]


; ターン1の基本精神ダメージ


[mental_damage value="7"]

[name_dfish]

[tb_start_text mode=4 ]
神は人間を見捨てたのだ。[r]何もしてくれないではないか。
[_tb_end_text]

[wait  time="4000"  ]

; 10秒タイマー開始
; 10秒タイマー開始＋残り時間表示


[layopt layer="2" visible="true"]

[ptext layer="2" x="1055" y="28" size="28" color="0xffffff" edge="3px 0x000000" text="残り 10秒" name="battle_timer_text" overwrite="true"]

[iscript]
if (window.tenumaBattleTimer) {
clearTimeout(window.tenumaBattleTimer);
window.tenumaBattleTimer = null;
}
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
window.tenumaBattleLocked = false;
window.tenumaRemainTime = 10;
window.tenumaCountdownInterval = setInterval(function(){
if (window.tenumaBattleLocked) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
return;
}
window.tenumaRemainTime -= 1;
if (window.tenumaRemainTime > 0) {
TYRANO.kag.ftag.startTag("ptext", {
layer: "2",
x: "1055",
y: "28",
size: "28",
color: "0xffffff",
edge: "3px 0x000000",
text: "残り " + window.tenumaRemainTime + " 秒",
name: "battle_timer_text",
overwrite: "true"
});
}
}, 1000);
window.tenumaBattleTimer = setTimeout(function(){
if (!window.tenumaBattleLocked) {
window.tenumaBattleLocked = true;
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
TYRANO.kag.ftag.startTag("jump", {
storage: "chapter110.ks",
target: "*logos1_timeout"
});
}
}, 10000);
[endscript]

[set_bad_choice_color]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="神は人間を孤児にはしない"  target="*logos1_a"  autopos="true"  ]
[glink  color="&tf.bad_choice_color"  storage="chapter110.ks"  size="25"  text="それでも人間は生きていける"  target="*logos1_b"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="信仰のある人間に神は味方する"  target="*logos1_c"  autopos="true"  ]
[s  ]
*logos1_a

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
わたしはあなたがたを捨てて孤児とはしない。[r]あなたがたのところに帰って来る。[r]新約聖書 ヨハネによる福音書 14:18 にそう書いてある。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 30)"]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="魚の悪霊"  time="300"  cross="true"  storage="chara/5/魚の悪霊②.png"  ]
[name_dfish]

[tb_start_text mode=1 ]
その名前を出すな！！[r]彼女は助けてもらえなかった！！[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[chara_mod  name="魚の悪霊"  time="600"  cross="true"  storage="chara/5/魚の悪霊①.png"  ]
[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos1"  ]
*logos1_b

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
たとえ神がいなくても、お前らに魂を明け渡したりはしない。[r]ここから出ていけ。[p]
[_tb_end_text]

[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 5)"]

[name_dfish]

[tb_start_text mode=1 ]
リナはどうだ？[r]そう言うと思うか？[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos1"  ]
*logos1_c

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
信じていないならそうかもしれない。[r]神は、信じる者を決して見捨てない。[r]俺は神を信じている。[p]
[_tb_end_text]

[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 10)"]

[name_dfish]

[tb_start_text mode=1 ]
お前もすぐに神のことを忘れる。[r]そして、神はそれを厳しく罰するだろう。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
悪霊の力が少し弱まった。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos1"  ]
*logos1_timeout

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_clear]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]


; 時間切れ追加ダメージ


[mental_damage value="7"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos1"  ]

;==================================================
; ターン2
;==================================================


*logos2

[cm  ]
[eval exp="f.tenuma_turn = 2"]


; ターン2の基本精神ダメージ


[mental_damage value="6"]

[name_dfish]

[tb_start_text mode=4 ]
人間は孤独なものだ。[r]人はそれを慰め合うが、孤独からは決して逃げられない。
[_tb_end_text]

[wait  time="4000"  ]

; 10秒タイマー開始＋残り時間表示


[layopt layer="2" visible="true"]

[ptext layer="2" x="1055" y="28" size="28" color="0xffffff" edge="3px 0x000000" text="残り 10秒" name="battle_timer_text" overwrite="true"]

[iscript]
if (window.tenumaBattleTimer) {
clearTimeout(window.tenumaBattleTimer);
window.tenumaBattleTimer = null;
}
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
window.tenumaBattleLocked = false;
window.tenumaRemainTime = 10;
window.tenumaCountdownInterval = setInterval(function(){
if (window.tenumaBattleLocked) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
return;
}
window.tenumaRemainTime -= 1;
if (window.tenumaRemainTime > 0) {
TYRANO.kag.ftag.startTag("ptext", {
layer: "2",
x: "1055",
y: "28",
size: "28",
color: "0xffffff",
edge: "3px 0x000000",
text: "残り " + window.tenumaRemainTime + " 秒",
name: "battle_timer_text",
overwrite: "true"
});
}
}, 1000);
window.tenumaBattleTimer = setTimeout(function(){
if (!window.tenumaBattleLocked) {
window.tenumaBattleLocked = true;
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
TYRANO.kag.ftag.startTag("jump", {
storage: "chapter110.ks",
target: "*logos2_timeout"
});
}
}, 10000);
[endscript]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="孤独になることで見えるものがある"  target="*logos2_a"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="俺がずっと彼女のそばにいる"  target="*logos2_b"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="神は世の終わりまで共にいる"  target="*logos2_c"  autopos="true"  ]
[s  ]
*logos2_a

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
人は孤独かもしれない。[r]でも、１人にならないと見えないものがたくさんある。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
そうだな。[r]リナはそうやって、私に出会えたのだ。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos2"  ]
*logos2_b

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
人間は独りじゃない。[r]俺が彼女のそばに居続ければいいだけだ。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
お前にそれができるのか？[r]お前は何度も人を裏切り、悲しませた。[p]
またそれを繰り返したいのか？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
いや、違う……俺は……。[p]
[_tb_end_text]


; 追加ダメージ


[mental_damage value="12"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos2"  ]
*logos2_c

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
見よ、わたしは世の終りまで、[r]いつもあなたがたと共にいるのである。[r]新約聖書 マタイによる福音書 28:20 にそう書いてある。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 30)"]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="魚の悪霊"  time="300"  cross="true"  storage="chara/5/魚の悪霊②.png"  ]
[name_dfish]

[tb_start_text mode=1 ]
その名前を出すな！！[r]人間は孤独だ！！[r]お前もそうだ！！[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[chara_mod  name="魚の悪霊"  time="600"  cross="true"  storage="chara/5/魚の悪霊①.png"  ]
[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos2"  ]
*logos2_timeout

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_clear]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]


; 時間切れ追加ダメージ


[mental_damage value="8"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos2"  ]

;==================================================
; ターン3
;==================================================


*logos3

[cm  ]
[eval exp="f.tenuma_turn = 3"]


; ターン3の基本精神ダメージ


[mental_damage value="5"]

[name_dfish]

[tb_start_text mode=4 ]
お前はリナの何を知っている？[r]彼女の本当の理解者だと言えるか？
[_tb_end_text]

[wait  time="4000"  ]

; 10秒タイマー開始＋残り時間表示


[layopt layer="2" visible="true"]

[ptext layer="2" x="1055" y="28" size="28" color="0xffffff" edge="3px 0x000000" text="残り 10秒" name="battle_timer_text" overwrite="true"]

[iscript]
if (window.tenumaBattleTimer) {
clearTimeout(window.tenumaBattleTimer);
window.tenumaBattleTimer = null;
}
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
window.tenumaBattleLocked = false;
window.tenumaRemainTime = 10;
window.tenumaCountdownInterval = setInterval(function(){
if (window.tenumaBattleLocked) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
return;
}
window.tenumaRemainTime -= 1;
if (window.tenumaRemainTime > 0) {
TYRANO.kag.ftag.startTag("ptext", {
layer: "2",
x: "1055",
y: "28",
size: "28",
color: "0xffffff",
edge: "3px 0x000000",
text: "残り " + window.tenumaRemainTime + " 秒",
name: "battle_timer_text",
overwrite: "true"
});
}
}, 1000);
window.tenumaBattleTimer = setTimeout(function(){
if (!window.tenumaBattleLocked) {
window.tenumaBattleLocked = true;
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
TYRANO.kag.ftag.startTag("jump", {
storage: "chapter110.ks",
target: "*logos3_timeout"
});
}
}, 10000);
[endscript]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="お前よりは知っている"  target="*logos3_a"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="知らないけど愛することはできる"  target="*logos3_b"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="ダイブ能力で全てを知ることができる"  target="*logos3_c"  autopos="true"  ]
[s  ]
*logos3_a

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
お前よりは知っているつもりだ。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
出会って１日で何が理解できる？[r]私は何年もここにいるのだ。[r]全ての悩みを聞いてきたのだ。[p]
お前は何も知らない部外者なのだ。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos3"  ]
*logos3_b

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
神である主を愛しなさい。[r]また、隣人を自分のように愛しなさい。[r]新約聖書 ルカによる福音書 10:27 にそう書いてある。[p]
その人を知るのは愛することにおいて重要ではない。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 15)"]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="魚の悪霊"  time="300"  cross="true"  storage="chara/5/魚の悪霊②.png"  ]
[name_dfish]

[tb_start_text mode=1 ]
その名前を出すな！！[r]お前に人を愛することはできない！！[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[chara_mod  name="魚の悪霊"  time="600"  cross="true"  storage="chara/5/魚の悪霊①.png"  ]
[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos3"  ]
*logos3_c

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
俺にはこのダイブがある。[r]全てを知ることができる。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
お前がやっていることは、あの魔術師と同じだ。[r]お前もまた悪魔側の人間なのだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
いや、違う……。[r]俺は……神の真理を……。[p]
[_tb_end_text]


; 追加ダメージ


[mental_damage value="13"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos3"  ]
*logos3_timeout

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_clear]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]


; 時間切れ追加ダメージ


[mental_damage value="8"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos3"  ]

;==================================================
; ターン4
;==================================================


*logos4

[cm  ]
[eval exp="f.tenuma_turn = 4"]


; ターン4の基本精神ダメージ


[mental_damage value="6"]

[name_dfish]

[tb_start_text mode=4 ]
人は決して自由になれない。[r]人間の魂に解放は無いのだ。
[_tb_end_text]

[wait  time="4000"  ]

; 10秒タイマー開始＋残り時間表示


[layopt layer="2" visible="true"]

[ptext layer="2" x="1055" y="28" size="28" color="0xffffff" edge="3px 0x000000" text="残り 10秒" name="battle_timer_text" overwrite="true"]

[iscript]
if (window.tenumaBattleTimer) {
clearTimeout(window.tenumaBattleTimer);
window.tenumaBattleTimer = null;
}
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
window.tenumaBattleLocked = false;
window.tenumaRemainTime = 10;
window.tenumaCountdownInterval = setInterval(function(){
if (window.tenumaBattleLocked) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
return;
}
window.tenumaRemainTime -= 1;
if (window.tenumaRemainTime > 0) {
TYRANO.kag.ftag.startTag("ptext", {
layer: "2",
x: "1055",
y: "28",
size: "28",
color: "0xffffff",
edge: "3px 0x000000",
text: "残り " + window.tenumaRemainTime + " 秒",
name: "battle_timer_text",
overwrite: "true"
});
}
}, 1000);
window.tenumaBattleTimer = setTimeout(function(){
if (!window.tenumaBattleLocked) {
window.tenumaBattleLocked = true;
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
TYRANO.kag.ftag.startTag("jump", {
storage: "chapter110.ks",
target: "*logos4_timeout"
});
}
}, 10000);
[endscript]

[set_bad_choice_color]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="神の真理が人を自由にする"  target="*logos4_a"  autopos="true"  ]
[glink  color="&tf.bad_choice_color"  storage="chapter110.ks"  size="25"  text="自由が無いから人生は楽しい"  target="*logos4_b"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="どんな道も切り開いて見せる"  target="*logos4_c"  autopos="true"  ]
[s  ]
*logos4_a

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
あなたたちは真理を知るであろう。[r]そして真理は、あなたがたに自由を得させるであろう。[r]新約聖書 ヨハネによる福音書 8:32 にそう書いてある。[p]
人は神により自由になれる。イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 30)"]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="魚の悪霊"  time="300"  cross="true"  storage="chara/5/魚の悪霊②.png"  ]
[name_dfish]

[tb_start_text mode=1 ]
その名前を出すな！！[r]人間に自由はない！！[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
悪霊の力が大きく弱まった。[p]
[_tb_end_text]

[chara_mod  name="魚の悪霊"  time="600"  cross="true"  storage="chara/5/魚の悪霊①.png"  ]
[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos4"  ]
*logos4_b

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
たしかに制約に満ちた人生かもしれない。[r]それを楽しむ方法だってきっとある。[r]見つけてみせる。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
リナも私と共に歩むことを楽しんでいることだろう。[r]お前にそれを邪魔する権利はない。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos4"  ]
*logos4_c

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
どんな壁も打ち破ってみせる。[r]俺達は自由を勝ち取れるんだ。[p]
[_tb_end_text]

[name_dfish]

[tb_start_text mode=1 ]
お前にできても、それができない人間もいる。[r]リナに自由はないのだ。[p]
[_tb_end_text]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos4"  ]
*logos4_timeout

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_clear]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]


; 時間切れ追加ダメージ


[mental_damage value="8"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos4"  ]

;==================================================
; ターン5
;==================================================


*logos5

[cm  ]
[chara_mod  name="魚の悪霊"  time="300"  cross="true"  storage="chara/5/魚の悪霊②.png"  ]
[eval exp="f.tenuma_turn = 5"]

[name_dfish]

[tb_start_text mode=4 ]
私が彼女を守る。[r]お前はここから出ていけ！！
[_tb_end_text]

[wait  time="4000"  ]

; 10秒タイマー開始＋残り時間表示


[layopt layer="2" visible="true"]

[ptext layer="2" x="1055" y="28" size="28" color="0xffffff" edge="3px 0x000000" text="残り 10秒" name="battle_timer_text" overwrite="true"]

[iscript]
if (window.tenumaBattleTimer) {
clearTimeout(window.tenumaBattleTimer);
window.tenumaBattleTimer = null;
}
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
window.tenumaBattleLocked = false;
window.tenumaRemainTime = 10;
window.tenumaCountdownInterval = setInterval(function(){
if (window.tenumaBattleLocked) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
return;
}
window.tenumaRemainTime -= 1;
if (window.tenumaRemainTime > 0) {
TYRANO.kag.ftag.startTag("ptext", {
layer: "2",
x: "1055",
y: "28",
size: "28",
color: "0xffffff",
edge: "3px 0x000000",
text: "残り " + window.tenumaRemainTime + " 秒",
name: "battle_timer_text",
overwrite: "true"
});
}
}, 1000);
window.tenumaBattleTimer = setTimeout(function(){
if (!window.tenumaBattleLocked) {
window.tenumaBattleLocked = true;
if (window.tenumaCountdownInterval) {
clearInterval(window.tenumaCountdownInterval);
window.tenumaCountdownInterval = null;
}
TYRANO.kag.ftag.startTag("jump", {
storage: "chapter110.ks",
target: "*logos5_timeout"
});
}
}, 10000);
[endscript]

[glink  color="black"  storage="chapter110.ks"  size="25"  text="お前は偽物だ"  target="*logos5_a"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="イエスの御名によって出ていけ"  target="*logos5_b"  autopos="true"  ]
[glink  color="black"  storage="chapter110.ks"  size="25"  text="リナは神の子供だ"  target="*logos5_c"  autopos="true"  ]
[s  ]
*logos5_a

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
お前は偽物だ。ただの悪霊だ。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 100)"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos5"  ]
*logos5_b

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
もうお前の言うことは聞かない。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 100)"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos5"  ]
*logos5_c

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_you]

[tb_start_text mode=1 ]
彼女を創ったのは神様だ。彼女は神の子だ。[r]お前には一切関係ない。[p]
イエスキリストの御名により命じる。[r]出ていけ！！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[eval exp="f.demon_fish = Math.max(0, f.demon_fish - 100)"]

[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos5"  ]
*logos5_timeout

[call  target="*tenuma_stop_timer"  storage=""  ]
[cm  ]
[name_clear]

[tb_start_text mode=1 ]
あなたは恐れに飲まれてしまった。[p]
[_tb_end_text]


; 最終ターンの時間切れ追加ダメージ


[mental_damage value="9"]


; 5ターン生存扱いで勝利へ


[jump  storage="chapter110.ks"  target="*tenuma_check_after_logos5"  ]

;==================================================
; 勝利
;==================================================


*battlevictory

[cm  ]
[iscript]
if (window.tenumaBattleTimer) {
clearTimeout(window.tenumaBattleTimer);
window.tenumaBattleTimer = null;
}
window.tenumaBattleLocked = true;
[endscript]

[name_you]

[tb_start_text mode=1 ]
イエスの御名によって命じる。[r]ここから立ち去れ！！[p]
[_tb_end_text]

[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopbgm  time="1000"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="雷魔法.mp3"  ]
[chara_mod  name="魚の悪霊"  time="2000"  cross="true"  storage="chara/5/魚の悪霊③.png"  ]
[name_dfish]

[tb_start_text mode=1 ]
…あぁ…う…。[p]
リナ…。[p]
私を…呼ん…。[p]
[_tb_end_text]

[name_clear]

[chara_hide  name="魚の悪霊"  time="8000"  wait="false"  ]
[tb_start_text mode=1 ]
魚の悪霊は塵になって消えていく。[p]
[_tb_end_text]

[playse  volume="100"  time="500"  buf="3"  storage="風が吹く.mp3"  fadein="true"  ]
[playse  volume="100"  time="0"  buf="4"  storage="鉄の扉を開ける.mp3"  fadein="true"  ]
[name_clear]

[tb_start_text mode=1 ]
扉が開き、部屋に風が吹いた。[p]
そして風はその塵をどこかに連れて行った。[p]
[_tb_end_text]

[bg  time="5000"  method="crossfade"  storage="水槽部屋③.png"  ]
[name_clear]

[tb_start_text mode=1 ]
部屋が明るくなっていく。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…彼女の所に戻ろう。[p]
[_tb_end_text]

[playse  volume="100"  time="0"  buf="4"  storage="玄関ドアを開ける.mp3"  fadein="true"  ]
[stopse  time="2000"  buf="3"  fadeout="true"  ]
[wait  time="1500"  ]
[bg  time="4000"  method="crossfade"  storage="リナの心の世界（倉庫②）.png"  ]
[name_rina]

[tb_start_text mode=1 ]
…。[p]
終わっちゃったんだね…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あぁ…。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…。[p]
神様、今ここに彼女がいます。彼女の傷ついた心にどうか触れてください。[p]
彼女の痛みに主が触れてくださいますように…。[p]
[_tb_end_text]

[bg  time="2000"  method="crossfade"  storage="リナの心の世界（倉庫③）.png"  ]
[name_clear]

[tb_start_text mode=1 ]
意識せず、自然とそう祈ってしまった…。[p]
すると不思議なことに、この世界は少しだけ明るくなった。[p]
そして、彼はちゃんと来てくれた…。[p]

[_tb_end_text]

[name_jesus]

[tb_start_text mode=1 ]
もう大丈夫。[p]
さぁ、立って。[p]

[_tb_end_text]

[bg  time="3000"  method="crossfade"  storage="リナの心の世界（倉庫④）.png"  ]
[name_rina]

[tb_start_text mode=1 ]
これは…？[p]
あ…私…。[r]この人のことを知っているかも…？[p]
そっか…そういうことだったんだ…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…。[p]
さぁ、一緒に帰ろう。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
うん。[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[jump  storage="chapter111.ks"  target=""  ]
