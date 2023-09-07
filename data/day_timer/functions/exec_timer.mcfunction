# タイマー処理
# tick.jsonから呼ぶことを前提にした処理

# サイドバーに表示する
scoreboard objectives setdisplay sidebar timerCount
# 1以下の間はタイマーの値から減算を行う
execute if score @p timerCount matches 1.. run scoreboard players remove @p timerCount 1
# タイマーの値をボスバーの値と同期させる
execute store result bossbar minecraft:timer value run scoreboard players get @p timerCount
# タイマーの値が0になった際に終了と出力させる
execute if score @p isEndTimer matches 0 run execute if score @p timerCount matches 0 run function day_timer:stop_timer