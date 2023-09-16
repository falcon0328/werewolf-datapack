# タイマー処理
# tick.jsonから呼ぶことを前提にした処理

# 1以下の間はタイマーの値から減算を行う
execute if score @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] day_timer_count matches 1.. run scoreboard players remove @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] day_timer_count 1
# タイマーの値をボスバーの値と同期させる
execute store result bossbar day_timer_bossbar value run scoreboard players get @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] day_timer_count
# タイマーの値が0になった際にタイマー終了のスクリプトを実行させる
execute if score @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] day_timer_count matches 0 run function day_timer:stop