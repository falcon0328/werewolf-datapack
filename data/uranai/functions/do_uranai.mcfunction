# 占いを行うスクリプト

# 人狼陣営かどうかの確認
$execute if score @e[scores={uranai_id=$(uranai_id)},limit=1] uranai_result matches 1 run tellraw @s [{"selector":"@e[scores={uranai_id=$(uranai_id)},limit=1]"},{"text": " は "},{"text":"人狼です","color": "dark_red", "bold": true}]
# 人狼陣営以外かどうかの確認
$execute unless score @e[scores={uranai_id=$(uranai_id)},limit=1] uranai_result matches 1 run tellraw @s [{"selector":"@e[scores={uranai_id=$(uranai_id)},limit=1]"},{"text": " は "},{"text":"人狼ではないようだ", "bold": true}]

# 占い本（能力利用済み）の配布
function uranai:give_used_uranai_book