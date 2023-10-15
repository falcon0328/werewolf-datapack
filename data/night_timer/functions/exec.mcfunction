# タイマー処理
# tick.jsonから呼ぶことを前提にした処理

# 1以下の間はタイマーの値から減算を行う
execute if score @e[type=minecraft:armor_stand,nbt={Tags: ["game_manager"]},limit=1] night_timer_count matches 1.. run scoreboard players remove @e[type=minecraft:armor_stand,nbt={Tags: ["game_manager"]},limit=1] night_timer_count 1

# タイマーの値をボスバーの値と同期させる
execute store result bossbar night_timer_bossbar value run scoreboard players get @e[type=minecraft:armor_stand,nbt={Tags: ["game_manager"]},limit=1] night_timer_count

# タイマーの名前をN日目 夜の形式に変更する
# 通信切断などの対策のために随時表示名更新を行なっている
bossbar set day_timer_bossbar name [{"score":{"name":"@e[type=armor_stand,nbt={Tags: [\"game_manager\"]},limit=1]","objective":"day_count"},"bold":true},{"text":"日目","bold":true},{"text":" 夜"}]

# タイマーの値が0になった際にタイマー終了のスクリプトを実行させる
execute if score @e[type=minecraft:armor_stand,nbt={Tags: ["game_manager"]},limit=1] night_timer_count matches 0 run function night_timer:stop