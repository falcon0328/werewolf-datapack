# タイマーを停止する処理

# タイマーの終了フラグを立てる
scoreboard players set @a is_end_day_timer 1

# 全プレイヤーの画面にN日目終了と表示する
title @a title [{"score":{"name":"*","objective":"day_count"},"bold":true},{"text":"日目","bold":true},{"text":"終了","bold":true}]

# 日数をインクリメントする
scoreboard players add @a day_count 1

# タイマー管理用の各変数を削除する
scoreboard objectives remove day_timer_count
bossbar remove day_timer_bossbar