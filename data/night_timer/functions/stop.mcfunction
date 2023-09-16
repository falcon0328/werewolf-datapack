# タイマーを停止する処理

# タイマーの終了フラグを立てる
scoreboard players set @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] is_end_night_timer 1

# 日数をインクリメントする
scoreboard players add @a day_count 1

# タイマー管理用の各変数を削除する
scoreboard objectives remove night_timer_count
bossbar remove night_timer_bossbar

# 昼タイマーを発火させる
function day_timer:start