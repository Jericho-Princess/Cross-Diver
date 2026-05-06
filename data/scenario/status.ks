[_tb_system_call storage=system/_status.ks]

*status_start

[layopt layer="1" visible="true"]

[tb_image_show  time="0"  storage="default/ステータス枠.png"  width="476"  height="633"  x="873"  y="-86"  _clickable_img="name"  ]
[ptext layer="1" x="1030" y="85" size="32" color="white" text="ステータス" name="status_title"]

[ptext layer="1" x="1050" y="150" size="26" color="white" text="&'精神：' + f.mental" name="status_01"]

[ptext layer="1" x="1050" y="180" size="26" color="white" text="&'堅信：' + f.faith" name="status_02"]

[ptext layer="1" x="1050" y="210" size="26" color="white" text="&'共感：' + f.empathy" name="status_03"]

[ptext layer="1" x="1050" y="240" size="26" color="white" text="&'知性：' + f.knowledge" name="status_04"]

[ptext layer="1" x="1050" y="270" size="26" color="white" text="&'情熱：' + f.passion" name="status_05"]

[ptext layer="1" x="1050" y="300" size="26" color="white" text="&'霊感：' + f.spiritual" name="status_06"]

[ptext layer="1" x="1050" y="330" size="26" color="white" text="&'禁忌：' + f.occult" name="status_07"]

[button  layer="1"  graphic="status_exit.png"  x="1075"  y="385"  target="*status_close"  height="75"  _clickable_img="name"  storage=""  ]
[s  ]
*status_close

[freeimage layer="1" name="img_1"]

[free layer="1" name="status_title"]

[free layer="1" name="status_01"]

[free layer="1" name="status_02"]

[free layer="1" name="status_03"]

[free layer="1" name="status_04"]

[free layer="1" name="status_05"]

[free layer="1" name="status_06"]

[free layer="1" name="status_07"]

[freeimage layer="1" name="img_11"]

[layopt layer="1" visible="false"]

[awakegame]

[s  ]
