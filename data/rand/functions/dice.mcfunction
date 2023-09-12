# ダイス用の変数を格納するためのインスタンス
summon area_effect_cloud ~ ~ ~ {Tags:["DICE"]}

# 乱数を取得する
function rand:get

# タイトルをクリアする
title @a clear

# ダイスの結果に応じて画面出力する
execute if score @e[tag=DICE,distance=..0.01,limit=1] rand matches 1 run title @a title "⚀"
execute if score @e[tag=DICE,distance=..0.01,limit=1] rand matches 2 run title @a title "⚁"
execute if score @e[tag=DICE,distance=..0.01,limit=1] rand matches 3 run title @a title "⚂"
execute if score @e[tag=DICE,distance=..0.01,limit=1] rand matches 4 run title @a title "⚃"
execute if score @e[tag=DICE,distance=..0.01,limit=1] rand matches 5 run title @a title "⚄"
execute if score @e[tag=DICE,distance=..0.01,limit=1] rand matches 6 run title @a title "⚅"

# スコアボードの右クリック情報をクリアする
scoreboard players set @a r_click 0

# ダイス格納用の変数を削除した
kill @e[tag=DICE,distance=..0.01,limit=1]