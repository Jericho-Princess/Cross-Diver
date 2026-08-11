[_tb_system_call storage=system/_chapter201.ks]

*start

[tb_eval  exp="f.mental=100"  name="mental"  cmd="="  op="t"  val="100"  val_2="undefined"  ]
[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text="自宅"]

[place_bg storage="room205.png"]

[name_you]

[tb_start_text mode=1 ]
（朝か…。今は何時だ？）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
この街で初めてダイブを行ってから数日が経った。[r]あの日は激しい戦いであった。[p]
これは当事者以外にとっては何が起こっているのか、[r]はっきり理解できないようなものだ。[p]
自分たちの戦いはこういう物なのだ。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="mirror.png"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="facewash.mp3"  loop="false"  ]
[name_clear]

[tb_start_text mode=1 ]
以前出会ったリナは元気にしてるだろうか？[r]あの時は彼女の世界にダイブし、なんとか解放に導けた…かもしれない。[p]
彼女が少しでも神様の存在を体験することができたのなら、それがベストだろう。[r]あとは、彼女次第だ。[p]
この街には彼女のように、自身の心の世界に囚われている人が大勢いるのかもしれない。[p]
自分の責務は自分が思っているよりも何倍も大きいのだろう。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（今日から少しこの街を探索してみよう。）[r]（今後の為にも色々と情報を集めておきたい。）[p]
よし、行こう。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="玄関ドアを開ける.mp3"  ]
[jump  storage="chapter202.ks"  target=""  ]
