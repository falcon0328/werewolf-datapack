# タイマーとボスバーの追加処理を行う

# 時刻設定を昼にする
time set day

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