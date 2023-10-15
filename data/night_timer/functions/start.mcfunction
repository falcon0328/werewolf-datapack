# タイマーとボスバーの追加処理を行う

# 時刻設定を深夜にする
time set midnight

# 全プレイヤーの画面にN日目と表示する
title @a subtitle [{"text": "- ", "color":"gold"},{"score":{"name":"*","objective":"day_count"}, "color":"gold"},{"text": "日目", "color":"gold"},{"text": " -", "color":"gold"}]
title @a title [{"text": "☽ ","color":"yellow"},{"text": "夜","color":"blue"},{"text": " ☽","color":"yellow"}]

# BOSSバーの初期設定を行う 
bossbar add night_timer_bossbar [{"score":{"name":"@e[type=armor_stand,nbt={Tags: [\"game_manager\"]},limit=1]","objective":"day_count"},"bold":true},{"text":"日目","bold":true},{"text":" 夜"}]
bossbar set night_timer_bossbar players @a
bossbar set night_timer_bossbar max 600
bossbar set night_timer_bossbar color purple
bossbar set night_timer_bossbar style notched_6

# タイマー用の変数管理を行う
scoreboard objectives add night_timer_count dummy
scoreboard players set @e[type=minecraft:armor_stand,nbt={Tags: ["game_manager"]},limit=1] night_timer_count 600
scoreboard objectives add is_end_night_timer dummy
scoreboard players set @e[type=minecraft:armor_stand,nbt={Tags: ["game_manager"]},limit=1] is_end_night_timer 0