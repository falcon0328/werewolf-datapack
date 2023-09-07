# タイマーを停止する処理

# タイマーの終了フラグを立てる
scoreboard players set @a is_end_day_timer 1

# 全プレイヤーの画面にN日目終了と表示する
title @a title [{"score":{"name":"*","objective":"day_count"},"bold":true},{"text":"日目","bold":true},{"text":" 昼 終了","bold":true}]

# タイマー管理用の各変数を削除する
scoreboard objectives remove day_timer_count
bossbar remove day_timer_bossbar

# 夜タイマーを発火させる
function night_timer:start