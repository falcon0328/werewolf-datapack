# 時刻を昼に戻す
time set day

# 各変数を削除する
scoreboard objectives remove day_count
scoreboard objectives remove day_timer_count
scoreboard objectives remove night_timer_count
scoreboard objectives remove is_end_day_timer
scoreboard objectives remove is_end_night_timer
bossbar remove day_timer_bossbar
bossbar remove night_timer_bossbar