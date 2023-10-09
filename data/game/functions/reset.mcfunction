# 時刻を昼に戻す
time set day

# タイトルをクリアする
title @a clear

# 各変数を削除する
scoreboard objectives remove day_count
scoreboard objectives remove day_timer_count
scoreboard objectives remove night_timer_count
scoreboard objectives remove is_end_day_timer
scoreboard objectives remove is_end_night_timer
scoreboard objectives remove uranai_result
scoreboard objectives remove reibai_result
scoreboard objectives remove game_info
scoreboard objectives remove id
scoreboard objectives remove uranai_id
scoreboard objectives remove wolf_roles
scoreboard objectives remove uranai_roles

# ボスバーを削除する
bossbar remove day_timer_bossbar
bossbar remove night_timer_bossbar

# 事前に全チームを削除する
team remove villager
team remove werewolf
