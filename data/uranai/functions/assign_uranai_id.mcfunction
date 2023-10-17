# 占いに利用する専用のIDを付与する関数
# @sのターゲットセレクタが利用できる前提

# 自身にIDを設定する
execute store result score @s uranai_id run scoreboard players get uranai_targets game_info
# 値のインクリメントを行う
scoreboard players add uranai_targets game_info 1
