# 役職数の設定を初期化
# プレイヤー数が確定した後に呼び出す前提のロジック

tellraw @a [{"text":"player count is "},{"score":{"name":"players", "objective":"game_info"}}]
execute if score players game_info matches 4 run tellraw @a [{"text": "4"}]
execute if score players game_info matches 5 run tellraw @a [{"text": "5"}]
execute if score players game_info matches 6 run tellraw @a [{"text": "6"}]
execute if score players game_info matches 7 run tellraw @a [{"text": "7"}]
execute if score players game_info matches 8 run tellraw @a [{"text": "8"}]
execute if score players game_info matches 9 run tellraw @a [{"text": "9"}]
execute if score players game_info matches 10 run tellraw @a [{"text": "10"}]
execute if score players game_info matches 11 run tellraw @a [{"text": "11"}]
execute if score players game_info matches 12 run tellraw @a [{"text": "12"}]
