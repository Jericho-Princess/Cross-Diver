[_tb_system_call storage=system/_chapter203.ks]

[call  storage="system/_chapter_init.ks"  target=""  ]
[place_title text="自宅"]

[playbgm  volume="50"  time="1000"  loop="true"  storage="ブレンド.mp3"  fadein="true"  ]
[place_bg storage="room205.png"]

[name_clear]

[tb_start_text mode=1 ]
その日の晩、俺は自宅で端末を操作していた。[p]
ROOTS（ルーツ）について、コタニに聞いてみよう。[r]たしか通話機能が端末にあったはずだ。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
（アイツのIDは何だっけ？）[r]（端末に登録してあるって前に言ってたが…。）[p]
…あった、これだ。＜Be-the-LIGHT＞か。[r]ははっ、アイツらしいIDだな。発信ボタンは…これか？[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/item-frame.png"  width="424"  height="424"  x="818"  y="60"  _clickable_img=""  name="img_8"  ]
[tb_image_show  time="1000"  storage="default/phone3.png"  width="218"  height="327"  x="918"  y="119"  _clickable_img=""  name="img_8"  ]
[playse  volume="70"  time="1000"  buf="0"  storage="携帯電話の着信音3.mp3"  ]
[wait  time="5000"  ]
[tb_hide_message_window  ]
[tb_show_message_window  ]
[stopse  time="1000"  buf="0"  fadeout="false"  ]
[name_kotani]

[tb_start_text mode=1 ]
はいはーい。[r]お疲れー。[p]
元気してた？[r]ちゃんと連絡くれたんだ、ありがとね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
まぁな。[r]それよりコタニに聞きたいことがあって電話したんだ。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
聞きたいこと？[r]あぁ良いよ、なんでも聞いてよ。[p]
[_tb_end_text]

*phone_question

[name_you]

[tb_start_text mode=4 ]
（聞きたいことは…。）
[_tb_end_text]

[wait  time="1000"  ]
[if exp="f.ch2_phone_street_done != 1"]

[glink  color="black"  storage="chapter203.ks"  size="25"  text="商店街について"  target="*Q1"  autopos="true"  ]
[else]

[glink  color="gray"  storage="chapter203.ks"  size="25"  text="商店街について"  target="*phone_question"  autopos="true"  ]
[endif]

[if exp="f.ch2_phone_rina_done != 1"]

[glink  color="black"  storage="chapter203.ks"  size="25"  text="＜リナ＞について"  target="*Q2"  autopos="true"  ]
[else]

[glink  color="gray"  storage="chapter203.ks"  size="25"  text="＜リナ＞について"  target="*phone_question"  autopos="true"  ]
[endif]

[glink  color="black"  storage="chapter203.ks"  size="25"  text="ROOTS&nbsp;について"  target="*Q3"  autopos="true"  ]
[s  ]
*Q1

[eval exp="f.ch2_phone_street_done = 1"]

[name_you]

[tb_start_text mode=1 ]
ショッピングモールから少し離れた場所に商店街があったよな？[r]あそこはどんな感じだ？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
あぁ、あそこね。[r]昔は賑わってたけど、あのショッピングモールができてからかな？[r]一気に人がいなくなっちゃったね。[p]
まだいくつか店は残ってるし、新しい店もたまに開いているけど…。[p]
それが開業したのはほとんど怪しい店なのよね。[r]占いとか、なんとかセラピーとかさ。[p]
あのどんよりした空気、あんまり好きじゃないね。[r]近くを通っただけで体調崩しちゃうこともあったよ？[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そんな状態なのか…。[r]わかった、こっちも注意しておく。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
他に聞きたいことはある？[p]
[_tb_end_text]

[jump  storage="chapter203.ks"  target="*phone_question"  ]
*Q2

[eval exp="f.ch2_phone_rina_done = 1"]

[name_you]

[tb_start_text mode=1 ]
リナちゃんって女の子、前に会っただろ？[r]あの子はどうなったの？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
あ！！それ！！[p]
言おうと思ってたけど、すっかり忘れてたわ！！[p]
リナちゃんね、この前ROOTSに画像をアップしててさ、[r]また仲間内で音楽バンドをやりたいって、ベースの手入れしてる画像あげてたよ！？[r]良かったね！！[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
そうか、元気そうで良かった。[p]
彼女、ベーシストだったのか。[r]たしかに似合うかもな。[r]ライブとかあったら、また行かないといけないな。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
そうだね。またタイミングみて連絡してみるよ。[r]その時が楽しみだね。[p]
他に聞きたいことある？[p]
[_tb_end_text]

[jump  storage="chapter203.ks"  target="*phone_question"  ]
*Q3

[name_you]

[tb_start_text mode=1 ]
ROOTSっていうサービス？ アプリ？ があるって話をよく耳にする。[r]興味あるんだが、どうやったら使える？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
あれ？その端末にもあるはず…。[p]
あ、そっか。ほとんど初期化してたから、入ってないかもね。[p]
良いよ、教えるよ。インストールはすぐだよ、簡単。[r]まず、セントラルページに飛んでさ…[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
…？[p]
セントラル？ エントラル？ センチネル？[r]どこを押したらそれが開くんだ？？？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
あぁ、なるほど…。[p]
良いよ！！ ゆっくり教えるね！！[p]
[_tb_end_text]

[name_clear]

[tb_start_text mode=1 ]
それから４０分が経過した。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
はぁ…なんとかインストールできたな。[r]ありがとう。[p]
登録はどうやるんだ？すぐに使えるのか？[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
あ、その端末IDですぐアクセスできるよ。[p]
で、ページを作る時とか、メッセージのやり取り、掲示板とかでもさ、[r]そのIDが相手にも見えるから気を付けてよ？[p]
フォンナンバーは親密ユーザー同士じゃないと見えないから、通話はできないけどね。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
？？？…あぁ。よくわからないけど、とりあえずわかった。[r]色々検索してみる。[p]
[_tb_end_text]

[name_kotani]

[tb_start_text mode=1 ]
君の肌が強いからって、あんまり夜更かししないでよ？[r]じゃあね、シャローム。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
遅くまでありがとう。シャローム。[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[name_clear]

[tb_start_text mode=1 ]
通話を終了した。[p]
[_tb_end_text]

[name_you]

[tb_start_text mode=1 ]
さて、起動してみるか。[p]
[_tb_end_text]

[playbgm  volume="60"  time="1000"  loop="true"  storage="Calm-Cosmos.mp3"  fadein="true"  ]
[bg  time="1000"  method="crossfade"  storage="roots_1.png"  ]
[name_you]

[tb_start_text mode=1 ]
これが ROOTS か。[p]
（色んな物が表示されているが…どうしたら…？）[p]
近いエリア機能？もあるのか。この街周辺のコミュニティがこれで見えるのか。[r]ずいぶん便利なアプリだな。[p]
[_tb_end_text]

[name_you]

[bg  time="1000"  method="crossfade"  storage="roots_2.png"  ]
[tb_start_text mode=1 ]
（掲示板ページ？このエリアでのコミュニティチャットか…様々な物があるようだ。）[p]
[_tb_end_text]

*roots_first_menu

[name_you]

[tb_start_text mode=4 ]
（興味あるコミュニティは…。）
[_tb_end_text]

[wait  time="1000"  ]
[if exp="f.ch2_roots_dark_done != 1"]

[glink  color="black"  storage="chapter203.ks"  size="25"  text="＜死にたい人集まれ＞"  target="*roots_dark"  autopos="true"  ]
[else]

[glink  color="gray"  storage="chapter203.ks"  size="25"  text="＜死にたい人集まれ＞"  target="*roots_first_menu"  autopos="true"  ]
[endif]

[if exp="f.ch2_roots_breath_done != 1"]

[glink  color="black"  storage="chapter203.ks"  size="25"  text="＜呼吸覚醒セミナー同志の集い＞"  target="*roots_breath"  autopos="true"  ]
[else]

[glink  color="gray"  storage="chapter203.ks"  size="25"  text="＜呼吸覚醒セミナー同志の集い＞"  target="*roots_first_menu"  autopos="true"  ]
[endif]

[glink  color="black"  storage="chapter203.ks"  size="25"  text="＜聖見&nbsp;祈り手の集い&nbsp;～Hijirimi&nbsp;Prayers&nbsp;Ministry～＞"  target="*roots_prayers"  autopos="true"  ]
[s  ]
*roots_dark

[eval exp="f.ch2_roots_dark_done = 1"]

[tb_eval  exp="f.faith-=3"  name="faith"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[roots_board_open thread="＜死にたい人集まれ＞"]

[roots_post user="39Benrikun" text="そうゆーこと。早い者勝ちの競争。生きるのをやめたら勝ち、俺は知ってる。他は知らん"]

[roots_post user="Rittanlove" text="痛くないのある？"]

[roots_post user="RyuSayGun" text="赤レンガ"]

[roots_post user="Kenchanpapa" text="結局、口だけのやつ多すぎる。ﾜﾗｼﾍﾞ見習え。"]

[roots_post user="d0r0e0a0m" text="死ぬ前に金くれ"]

[roots_post user="massan-nishi" text="ロープが降ってくる夢見た"]

[roots_post user="lastwill4U" text="今時使わねぇよ"]

[roots_post user="1-kyu-New-Con" text="前に同級生がいったけど失敗して、今も後遺症残ってる。飯も一人で食えない。バスケ部副キャプテンだったのに"]

[roots_post user="rolling100ton" text="中途半端に残るのが一番きついぞ。勢いつけろ"]

[roots_post user="UK8900" text="死にたいわけじゃない。生きたくないだけなんよ。飯は喰いたい。/nリバキンのアニメもまだ見たい。でも仕事とか家族付き合いとか生きるルーチンは嫌い。/nわかるか？俺はお前らより劣ってんだよ。ハズレクジなんだよ。"]

[roots_post user="1nject1on" text="ripある？"]

[roots_post user="BBBB55trample" text="↑別板。ｲﾄﾚ行け"]

[roots_post user="IMI-Galil" text="グレ自作はオススメしない。やめとけ。捕まるぞ"]

[roots_post user="RX-78-2" text="オイクチ工業の電話対応するより辛いことあんの？２８連勤に勝てるやついる？/nカローシしたいやつ来い。来なきゃ俺がカロる。"]

[roots_post user="Lone-Wolf98" text="娘を返せクソ女、死ね"]

[roots_post user="BB-GUN" text="★心のヘルプSOS★ ID：kokorohelp2U ★心のヘルプSOS★ ID：kokorohelp2U ★心のヘルプSOS★"]

[roots_post user="terror911" text="それ深夜やってねぇだろ"]

[roots_post user="BB-GUN" text="やってるつってんだろ、カス"]

[roots_post user="Speeddevil" text="キリスト教のやつどうなった"]

[roots_post user="ClovesU" text="炊き出しみたいなカフェごっこならまだやってる、かわいい子多いからオススメ"]

[roots_post user="1asaridesu1" text="目の保養目の保養"]

[roots_post user="math-effect" text="愛をください"]

[roots_post user="0xchocotanx0" text="ｆ/154/73でも？"]

[roots_post user="BBBB55trample" text="お前ら元気だな、はよ寝ろ"]

[roots_post user="kani-beam" text="非番なんだよ、察しろ"]

[roots_post user="BB-GUN" text="★心のヘルプSOS★ ID：kokorohelp2U ★心のヘルプSOS★ ID：kokorohelp2U ★心のヘルプSOS★"]

[roots_post user="math-effect" text="愛をください"]

[roots_board_close]

[name_you]

[tb_start_text mode=1 ]
（ひどい掲示板だ…。）[r]（この街の痛みが、ここ１か所に流れ込んでいるのかもしれない。）[p]
[_tb_end_text]

[tb_eval  exp="f.mental-=2"  name="mental"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[name_system]

[tb_start_text mode=1 ]
あなたの＜精神＞が少し低下した。[p]
[_tb_end_text]

[jump  storage="chapter203.ks"  target="*roots_first_menu"  ]
*roots_breath

[eval exp="f.ch2_roots_breath_done = 1"]

[tb_eval  exp="f.occult+=4"  name="occult"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.knowledge-=3"  name="knowledge"  cmd="-="  op="t"  val="3"  val_2="undefined"  ]
[roots_board_open thread="＜呼吸覚醒セミナー同志の集い＞"]

[roots_post user="moon-read-cocoa" text="たしかに、まずは行動ですね♪ 思いを形にアウトプットしていきましょ"]

[roots_post user="anzu-anju" text="はい、イッショにがんばりましょ"]

[roots_post user="meet-higher-self" text="次の懇親セミナーではミコちゃん先生が来るらしいですね。半年ぶり"]

[roots_post user="another-ricco" text="彼女のリーディングはタメになります( ..)φメモメモ"]

[roots_post user="AmandaRose18" text="４０過ぎてから湧水の呼吸法で頭がクラっとするようになりました。年齢ですかね"]

[roots_post user="noodle-chuchu" text="基礎の大樹の呼吸からやって身体を作ってからやるのがオススメです"]

[roots_post user="358cotton358" text="電気タクシーのせいでヒジリミの電磁波が強くなってます。敏感で蕁麻疹がでるのですぐわかります"]

[roots_post user="loveyuya4ever" text="↑わかります！！ EV車増えてから身体周期が不安定になってます。クレーム電話しても無視で最低の企業です"]

[roots_post user="1000nen-enjoy-life" text="電磁波によってチャクラの穴がボロボロになる話は有名で、論文でも証明されています。天皿の呼吸で回復できます"]

[roots_post user="yumedream-miho" text="羊水の呼吸もオススメです。医学的に万能で、あーちゃん先生がいつもオススメしてくれます。娘にもやらせてます。"]

[roots_post user="linlin358" text="リウマチがひどくて仕事をやめました…。辛いです。"]

[roots_post user="xxxOverVisionxxx" text="大丈夫、辛いのは今だけ。空いた器には、もっと良いものが注がれます。それを拒まないでください。"]

[roots_post user="habanerotan" text="政府は水道水に毒を混ぜています。気脈浄化フィルターを使ってから、洗い物しても手が荒れませんよ♪"]

[roots_post user="Sakanya-Thomas" text="初コメ。お前ら何言ってんのバカじゃないの"]

[roots_post user="another-ricco" text="↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑敗走↑"]

[roots_post user="Mocachan" text="↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑屈服↑↑"]

[roots_post user="SuperProphet-saya" text="↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑飢餓↑↑↑"]

[roots_board_close]

[name_you]

[tb_start_text mode=1 ]
（異様な空間だ…。）[r]（理解できない何かがここを占領しているかのようだ…。）[p]
[_tb_end_text]

[jump  storage="chapter203.ks"  target="*roots_first_menu"  ]
*roots_prayers

[roots_board_open thread="＜聖見 祈り手の集い ～Hijirimi Prayers Ministry～＞"]

[roots_post user="Toshihiko-Evangelism" text="先週の伝道ミニストリーは光ヶ浜（ヒカリガハマ）での祝福された１日でした。/n信仰告白まではいかなくとも、イエス様に興味を持ってくださった方が２人も与えられて感謝です。/n今後も祈って歩んでいきたいと思っています。"]

[roots_post user="Psalm119-37" text="↑ Hallelujah！！ 主は良いお方です。"]

[roots_post user="PraisetheLord_Hijirimi" text="聖見プレイズザロード教会実施のオープンカフェが、次回は１３時から開かれます。/nノンクリスチャンの方、ご家族・友人と共に来られる方も大歓迎です。是非いらしてください。"]

[roots_post user="PraisetheLord_Hijirimi" text="↑駐車場利用に関して/n駐車場は６台まで停めることができます。向かい側のコンビニに駐車するのはご遠慮ください。"]

[roots_post user="Emiko-Bellflower22" text="【祈祷課題】/nなかざキリストの集い教会のサカイ先生が肺気胸により手術することになりました。/n手術の成功と、その後の回復のためにお祈りください。"]

[roots_post user="David5Stones" text="↑祈ります"]

[roots_post user="Joshua1-7" text="↑↑守られるように祈っております"]

[roots_post user="MakotoAikawa316" text="↑↑↑主の癒しがあることを宣言します"]

[roots_post user="Emiko-Bellflower22" text="ありがとうございます。"]

[roots_post user="junjimakita" text="来週そちらの教会に母方の祖父を連れていきます。未信者ですがよろしくお願いいたします。"]

[roots_post user="888Lika888" text="来期の市長選挙候補者にアステリアと癒着している人間がいます。投票時、気を付けましょう"]

[roots_post user="JetHelmet" text="↑ここは伝道や集会、祈りについて交流する掲示板です。皆様の不安につながるような発言は控えましょう。"]

[roots_post user="Hijirimi_PrayerHouse" text="【伝道集会のお知らせ】/n聖見祈りの家チャーチにて、明日もリバイバルに向けた伝道集会が開かれます。/n今回のテーマは＜遣わされた人＞。"]

[roots_post user="Hijirimi_PrayerHouse" text="この街は霊的な戦いにおいて重要な場所であり、最近では次々に新しく遣わされた、主にある兄弟姉妹が集まってきております。"]

[roots_post user="Hijirimi_PrayerHouse" text="彼らを祝福し、サポートするため、そしてずっとこの街で主との聖い交わりを守り続けている人のためにも祈っていきたいです。"]

[roots_post user="Hijirimi_PrayerHouse" text="ノンクリスチャンの方も続々と参加されています。/n聖書の真理を求める人が一人でも神様と出会えるように助けていきたいですね。"]

[roots_post user="Hijirimi_PrayerHouse" text="今回のスピーカーはハナフサ牧師が担当します。彼の説教が守られるようにもお祈りください。"]

[roots_board_close]

[name_you]

[tb_start_text mode=1 ]
（遣わされた人…霊的な戦い…。）[r]（この街で何が起きているのか、もう少し知る必要がある。）[p]
（この集会なら何か情報を掴めるかもしれない。よし、行ってみよう。）[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[place_bg storage="room205.png"]

[name_you]

[tb_start_text mode=1 ]
（もうこんな時間か…。明日の集会に備えて今日は早めに寝よう。）[p]
[_tb_end_text]

[place_bg storage="black-screen.png"]

[jump  storage="chapter204.ks"  target=""  ]
