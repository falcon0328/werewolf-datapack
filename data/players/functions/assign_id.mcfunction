# ゲーム設定変更
gamemode adventure @s

# 各エンティティにIDを割り当てる

# 自身にIDを設定する
execute store result score @s id run scoreboard players get players game_info
# 値のインクリメントを行う
scoreboard players add players game_info 1
