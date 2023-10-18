# 占い師の役職設定時の関数

# 占いに使う各ユーザIDを用意する
scoreboard objectives add uranai_id dummy
scoreboard players set uranai_targets game_info 0
execute as @e[scores={id=0..}] run execute unless score @s role_id matches 2 run function uranai:assign_uranai_id

# 役職本の配布
function uranai:give_new_uranai_book
