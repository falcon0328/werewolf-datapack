# 各役職の夜開始時の処理を実行する
tellraw @s "夜開始"

execute if score @s role_id matches 2 run function uranai:night_start