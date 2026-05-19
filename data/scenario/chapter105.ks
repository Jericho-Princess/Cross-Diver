[_tb_system_call storage=system/_chapter105.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[bg  time="1000"  method="crossfade"  storage="黒スクリーン.png"  ]
[wait  time="3000"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="軋み.mp3"  fadein="true"  ]
[playse  volume="15"  time="2000"  buf="0"  storage="呼吸音.mp3"  loop="true"  fadein="true"  ]
[place_bg storage="黒スクリーン.png"]

[name_you]

[tb_start_text mode=1 ]
（置いていかないでくれ。俺も連れてってくれ…。）[p]
[_tb_end_text]

[name_dream]

[tb_start_text mode=1 ]
出ていけ、嘘つき。お前のせいだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
ここは…どこだ…？[p]
とても苦しい。[p]
俺は死んでしまったのか…？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="1000"  ]
[bg  time="1000"  method="fadeIn"  storage="夢の中.png"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[name_someone]

[tb_start_text mode=1 ]
そこで何をしているの？[p]
心配はいらない。もう、大丈夫。[p]
さぁ、帰ろう。私についてきて…。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopbgm  time="2000"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="黒スクリーン.png"  ]
[place_title text="自宅"]

[place_bg storage="205号室.png"]

[name_you]

[tb_start_text mode=1 ]
…。[p]
夢か…。[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
しまった、つい寝すぎてしまった。[p]
もうすぐコタニがやってくる時間だ。急いで支度をしなくては。[p]
[_tb_end_text]

[wait  time="500"  ]
[bg  time="1500"  method="crossfade"  storage="自宅洗面台.png"  ]
[name_you]

[tb_start_text mode=1 ]
（誰しも魂はその形を保ち続けることはなく、変化していくもの…だったかな。）[p]
（今の俺の魂はどんな形をしているのだろうか…。）[p]
[_tb_end_text]

[name_system]

[tb_start_text mode=3 ]
あなたの選択や物語の中でステータスは変わり続けます。[r]各ステータスの説明を聞きますか？[r]
[_tb_end_text]

[glink  color="black"  storage="chapter105.ks"  size="25"  text="ステータス説明を聞く"  target="*status_yes"  ]
[glink  color="black"  storage="chapter105.ks"  size="25"  text="説明はいらない"  target="*status_no"  ]
[s  ]
*status_yes

[name_clear]

[tb_start_text mode=1 ]
あなたの魂には７つのステータスが存在し、[r]それらは選択や物語によって変化していきます。[p]
ステータスは[r]「精神」「堅信」「共感」「知性」「情熱」「霊感」「禁忌」[r]この７つで構成されています。[p]
「精神」[r]あなたの魂の強さを表します。[r]能力の使用や精神的ダメージにより減少します。[r]この数値が０になるとゲームオーバーになります。[p]
「堅信」[r]あなたの神への信仰の堅さを表します。[r]邪悪な存在からの攻撃により受けるダメージを減少させます。[r]数値によっては共感性の低い排他的な人間だと誤解されます。[p]
「共感」[r]あなたの人の心に寄り添う力を表します。[r]人との対話時、相手の心を開きやすくなります。[r]数値によっては邪悪な存在の声に同調しやすくなります。[p]
「知性」[r]あなたの知識と知恵を表します。[r]正しいことを見抜いたり、選択肢から間違ったものを排除したりします。[r]数値によっては人の欠点や短所がはっきりと見えてしまうことがあります。[p]
「情熱」[r]あなたのやる気と熱意を表します。[r]本来不可能である選択を成功させたり、苦手な物に対して耐性を持つことができます。[r]出来事によって大きく増減することもあります。[p]
「霊感」[r]あなたの超自然的な物に対する感覚を表します。[r]悪霊や天使といった霊的な存在を感知したりしやすくなります。[r]数値によっては邪悪な存在による不要な接触が発生します。[p]
「禁忌」[r]魔術などの異端的な物に対する心の近さを表します。[r]悪魔的な思想を持つ人間や存在とコンタクトをとったりしやすくなります。[r]数値によっては物語が大きく変化してしまいます。[p]
ステータスは画面右上のボタンでいつでも確認できます。[r]自身の魂の状態を常に把握しておきましょう。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="chapter105.ks"  target="*goout"  ]
*status_no

[name_you]

[tb_start_text mode=1 ]
（自分のことは、自分が一番よく知っている。）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="chapter105.ks"  target="*goout"  ]
*goout

[playse  volume="100"  time="1000"  buf="0"  storage="チャイム.mp3"  ]
[wait  time="2500"  ]
[tb_show_message_window  ]
[name_you]

[tb_start_text mode=1 ]
（来たか…。）[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
玄関ドアの向こうからコタニの声が聞こえた。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
おーい！！起きてる！？[r]もう少し寝たい感じ！？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（ずいぶんデカい声だ…。）[p]
あぁ！！すぐに行く！！[p]
（大声じゃなくて、通話してくれたらいいのに…。）[p]
[_tb_end_text]

[jump  storage="chapter106.ks"  target=""  ]
