# タイマーを停止する処理

# タイマーの終了フラグを立てる
scoreboard players set @a isEndTimer 1

# 全プレイヤーの画面にN日目終了と表示する
title @a title [{"score":{"name":"*","objective":"dayCount"},"bold":true},{"text":"日目","bold":true},{"text":"終了","bold":true}]

# 日数をインクリメントする
scoreboard players add @a dayCount 1

# タイマー管理用の各変数を削除する
scoreboard objectives remove timerCount
bossbar remove minecraft:timer