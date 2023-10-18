# 占いを行うスクリプト
# 対象はuranai_id = 0のプレイヤー

# 人狼陣営かどうかの確認
execute if score @e[scores={uranai_id=1},limit=1] uranai_result matches 1 run tellraw @s [{"selector":"@e[scores={uranai_id=1},limit=1]"},{"text": " は "},{"text":"人狼です","color": "dark_red", "bold": true}]
# 人狼陣営以外かどうかの確認
execute unless score @e[scores={uranai_id=1},limit=1] uranai_result matches 1 run tellraw @s [{"selector":"@e[scores={uranai_id=1},limit=1]"},{"text": " は "},{"text":"人狼ではないようだ", "bold": true}]

# 占い本の削除
clear @s minecraft:written_book{uranai_book: true}
# 占い本（能力利用済み）の配布
give @s minecraft:written_book{author: "", title: "役職本（能力使用済み）", pages: ['[{"text":"役職:","bold":true},{"text":"占い師","color":"green"},{"text":"\\n"},{"text":"説明："},{"text":"一晩に一人を指名し人狼かを知れます。得た情報をもとに村人陣営に貢献しましょう。"},{"text":"\\n\\n"},{"text":"既に能力を使用しました","bold":true, "color":"red"}]'], HideFlags: 32, role_book: true, uranai_book: true}