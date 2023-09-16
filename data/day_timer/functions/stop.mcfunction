# タイマーを停止する処理

# タイマーの終了フラグを立てる
scoreboard players set @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] is_end_day_timer 1

# タイマー管理用の各変数を削除する
scoreboard objectives remove day_timer_count
bossbar remove day_timer_bossbar

# 夜タイマーを発火させる
function night_timer:start