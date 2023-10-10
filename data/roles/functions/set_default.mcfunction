# 役職数の設定を初期化
# プレイヤー数が確定した後に呼び出す前提のロジック

scoreboard objectives add roles dummy "役職情報"

execute if score players game_info matches 4 run function roles:set_default_4
execute if score players game_info matches 5 run function roles:set_default_5
execute if score players game_info matches 6 run function roles:set_default_6
execute if score players game_info matches 7 run function roles:set_default_7
execute if score players game_info matches 8 run function roles:set_default_8
