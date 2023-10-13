# 役職数の設定を初期化
# プレイヤー数が確定した後に呼び出す前提のロジック

scoreboard objectives remove roles
scoreboard objectives add roles dummy

# プレイヤーIDを設定する
# 人数をカウントするのが目的
function players:assign

# プレイヤー人数毎にデフォルト設定を読み込む
execute if score players game_info matches 4 run function roles:set_default_4
execute if score players game_info matches 5 run function roles:set_default_5
execute if score players game_info matches 6 run function roles:set_default_6
execute if score players game_info matches 7 run function roles:set_default_7
execute if score players game_info matches 8 run function roles:set_default_8

# 役職人数表を表示する
function roles:setdisplay_sidebar
