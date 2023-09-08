# タイマーとボスバーの追加処理を行う

# 時刻設定を昼にする
time set day

# 全プレイヤーの画面にN日目と表示する
title @a subtitle [{"text": "- ", "color":"gold"},{"score":{"name":"*","objective":"day_count"}, "color":"gold"},{"text": "日目", "color":"gold"},{"text": " -", "color":"gold"}]
title @a title [{"text": "☀ ","color":"gold"},{"text": "昼","color":"yellow"},{"text": " ☀","color":"gold"}]

# BOSSバーの初期設定を行う 
bossbar add day_timer_bossbar [{"score":{"name":"@a","objective":"day_count"},"bold":true},{"text":"日目","bold":true},{"text":" 昼"}]
bossbar set day_timer_bossbar players @a
bossbar set day_timer_bossbar max 600
bossbar set day_timer_bossbar color yellow
bossbar set day_timer_bossbar style notched_6

# タイマー用の変数管理を行う
scoreboard objectives add day_timer_count dummy
scoreboard players set @a day_timer_count 600
scoreboard objectives add is_end_day_timer dummy
scoreboard players set @a is_end_day_timer 0