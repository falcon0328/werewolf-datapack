# 乱数を取得する
function rand:get

# タイトルをクリアする
title @a clear

# ダイスの結果に応じて画面出力する
execute if score @p rand matches 1 run title @a title "⚀"
execute if score @p rand matches 2 run title @a title "⚁"
execute if score @p rand matches 3 run title @a title "⚂"
execute if score @p rand matches 4 run title @a title "⚃"
execute if score @p rand matches 5 run title @a title "⚄"
execute if score @p rand matches 6 run title @a title "⚅"

# スコアボードの右クリック情報をクリアする
scoreboard players set @a r_click 0