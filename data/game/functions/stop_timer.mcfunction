# タイマーを停止する処理

# タイマーの終了フラグを立てる
scoreboard players set @a isEndTimer 1
# 全プレイヤーの画面に終了と表示する
title @a title "終了"

# タイマー管理用の各変数を削除する
scoreboard objectives remove timerCount
bossbar remove minecraft:timer