# （検証中コマンド）占い師の本を生成する

# 占い師の本を全員から削除する
clear @s minecraft:written_book{uranai_book:true}
# 占い師の本を生成する
# プレイヤー人数ごとに生成する必要がある
give @s minecraft:written_book{author:"",title: "占いの書",pages:['[{"text":"役職:","bold":true},{"text":"占い師","color":"dark_blue"},{"text":"\\n"},{"text":"能力："},{"text":"一晩ごとに一人を指名して人狼かどうかを知ることができます。"},{"text":"\\n"},{"selector":"@e[scores={id=0},limit=1]"},{"text":"を","color":"dark_red","bold":false},{"text":"占う","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/say id0"},"hoverEvent":{"action":"show_text","contents":"クリックすると能力を使います"}},{"text":"\\n"},{"selector":"@e[scores={id=1},limit=1]"},{"text":"を","color":"dark_red","bold":false},{"text":"占う","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/say id1"},"hoverEvent":{"action":"show_text","contents":"クリックすると能力を使います"}},{"text":"\\n"},{"selector":"@e[scores={id=2},limit=1]"},{"text":"を","color":"dark_red","bold":false},{"text":"占う","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/say id1"},"hoverEvent":{"action":"show_text","contents":"クリックすると能力を使います"}}]'],HideFlags:32,uranai_book:true}
