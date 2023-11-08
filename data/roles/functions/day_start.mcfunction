# 各役職の昼開始時の処理を実行する
tellraw @s "昼開始"

execute if score @s role_id matches 2 run function uranai:day_start