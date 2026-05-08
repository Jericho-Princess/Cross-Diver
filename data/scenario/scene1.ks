[_tb_system_call storage=system/_scene1.ks]

*start

[playse  volume="100"  time="1000"  buf="0"  storage="決定ボタン.mp3"  ]
[tb_start_tyrano_code]
tyrano.plugin.kag.config.holdSkip = "false";
[_tb_end_tyrano_code]

[cm  ]
[bg  time="1000"  method="crossfade"  storage="黒スクリーン.png"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
このゲームはテストバージョンです。[r]現在の仕様や内容は今後、変更される場合があります。[p]
このゲーム内には霊的葛藤、心の痛み、トラウマとの対面といった要素が含まれます。[r]気分が悪くなった場合は、すぐにプレイを中断してください。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopbgm  time="1000"  fadeout="true"  ]
[wait  time="2000"  ]
[jump  storage="chapter101.ks"  target=""  ]
