[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[playbgm  volume="60"  time="1000"  loop="true"  storage="終焉の音.mp3"  ]
[tb_show_message_window] 
[chara_mod  name="コタニ"  time="10"  cross="true"  storage="chara/3/コタニ③爆笑.png"  ]
[chara_show  name="コタニ"  time="10"  wait="true"  storage="chara/3/コタニ⑤微笑.png"  width="609"  height="916"  left="120"  top="20"  reflect="false"  ]
[chara_show  name="リナ"  time="10"  wait="true"  storage="chara/4/解放リナ①通常.png"  width="473"  height="713"  left="549"  top="136"  reflect="false"  ]
[mask_off time=10]
[chara_hide  name="コタニ"  time="1000"  wait="false"  pos_mode="false"  ]
[chara_hide  name="リナ"  time="1000"  wait="true"  pos_mode="false"  ]
[playse  volume="70"  time="1000"  buf="0"  storage="街の道路.mp3"  loop="true"  ]
[place_title text="帰路"]

[playbgm  volume="80"  time="1000"  loop="true"  storage="朝露の小庭.mp3"  fadein="true"  ]
[place_bg storage="帰路①.png"]

[name_rina]

[tb_start_text mode=1 ]
あのさ、よくわかんないんだけど…[p]
[r]ずっと私のことを呼んでくれてた？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ん？どうして？[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
ううん…なんでもない…。[p]
…あの魚、アモちゃんが、死んじゃった時のことなんだけどさ、[r]私が小学校から帰ってきたらもう死んじゃっててさ、[p]
すごく悲しくなって、夜まで泣いててさ、[r]仕事から帰ってきたお母さんに泣きついたんだ。[p]
そしたらさ、お母さんにただの魚でしょ？だって言われちゃってさ、[r]それがすごくショックだったんだよね。[r]あ、私の気持ち、わかってくれないんだって。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…人間って、そういうものだ。[p]
悪気がなくても、[r]誰かの大事なものを軽く扱ってしまうことがある。[p]
俺も、そういう無理解が嫌いだ。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
そうかもね…。[p]
それでね、その後のこと、死んじゃった後のこと、やっと思い出せたの。[p]
なんで忘れちゃってたんだろうって、今でもわからないんだけどね。[p]
私、家の裏に物置があってね、その横にアモちゃんを埋めてあげたの。[r]バイバイ、今までありがとね。って言ってさ。[p]
私、ちゃんと ＜お別れ＞ をしてた。[p]
それなのに、私はアモちゃんを呼び続けちゃってさ…。[r]だから、色々おかしくなっちゃったんだと思うの。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=4 ]
（失った悲しみか…。）
[_tb_end_text]

[wait  time="1500"  ]
[glink  color="black"  storage="chapter111.ks"  size="25"  text="アモちゃんは幸せだったよ"  autopos="true"  target="*A"  ]
[glink  color="black"  storage="chapter111.ks"  size="25"  text="神様は全部知ってたよ"  autopos="true"  target="*B"  ]
[s  ]
*A

[name_you]

[tb_start_text mode=1 ]
アモちゃんは幸せだったと思うよ。[p]
[_tb_end_text]

[tb_eval  exp="f.empathy+=6"  name="empathy"  cmd="+="  op="t"  val="6"  val_2="undefined"  ]
[name_rina]

[tb_start_text mode=1 ]
…。[p]
…そうね、私もそうだと嬉しいかな。[p]
[_tb_end_text]

[jump  storage="chapter111.ks"  target="*common"  ]
*B

[name_you]

[tb_start_text mode=1 ]
神様は全部知ってたよ。[p]
死んじゃって悲しんだこと、泣いたこと。[r]お母さんにわかってもらえなくて寂しかったこと。[p]
その後も、辛かったこと…。[p]
[_tb_end_text]

[tb_eval  exp="f.faith+=4"  name="faith"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[name_rina]

[tb_start_text mode=1 ]
神様…？[r]あなたもコタニさんみたいね。[p]
そういえば、公園で見た夢？の中でね、なんか光る暖かい人に会ったような気がする。[p]
私、あの人を知ってるような気がしてさ。[r]あの人、私のこと知ってると思う？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
あぁ、きっと知っているよ。[r]全部、見てくれてたと思うよ。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
そっか…神様か…。[p]
[_tb_end_text]

[jump  storage="chapter111.ks"  target="*common"  ]
*common

[name_rina]

[tb_start_text mode=1 ]
…。[p]
…ねぇ、私、これからどうしたらいいと思う？[p]
だって結局、何も変わってないじゃん？[r]お母さんだって、みんなだって、急に分かり合えるようになるわけじゃない。[p]
…。[p]
私ね…やっぱり…。[p]
[_tb_end_text]

[wait  time="1500"  ]
[name_rina]

[tb_start_text mode=1 ]
まだ…人が嫌いかも…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[wait  time="1500"  ]
[tb_start_text mode=1 ]
…俺も。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…？[p]
[_tb_end_text]

[wait  time="1000"  ]
[name_you]

[tb_start_text mode=1 ]
俺も人が嫌いだよ…。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…。[p]
[_tb_end_text]

[name_rina]

[tb_start_text mode=1 ]
ふぅーん…。[p]
[_tb_end_text]

[wait  time="3000"  ]
[bg  time="500"  method="crossfade"  storage="帰路②.png"  ]
[tb_start_text mode=1 ]
…ありがと。[p]
[_tb_end_text]

[wait  time="1500"  ]
[name_clear]

[bg  time="4000"  method="fadeIn"  storage="黒スクリーン.png"  ]
[tb_start_text mode=1 ]
チャプター１　「Calling Me」　END[p]
[_tb_end_text]

[jump  storage="thx4playing.ks"  target=""  ]
