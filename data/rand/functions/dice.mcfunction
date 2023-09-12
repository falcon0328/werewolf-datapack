# 乱数を取得する
function rand:get

# タイトルをクリアする
title @s clear

# ダイスの結果に応じて画面出力する
execute if score @s rand matches 1 run title @s title "⚀"
execute if score @s rand matches 2 run title @s title "⚁"
execute if score @s rand matches 3 run title @s title "⚂"
execute if score @s rand matches 4 run title @s title "⚃"
execute if score @s rand matches 5 run title @s title "⚄"
execute if score @s rand matches 6 run title @s title "⚅"

# スコアボードの右クリック情報をクリアする
scoreboard players set @s is_use_carrot_stick 0