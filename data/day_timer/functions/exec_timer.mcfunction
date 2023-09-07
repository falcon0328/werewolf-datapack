# タイマー処理
# tick.jsonから呼ぶことを前提にした処理

# サイドバーに表示する
scoreboard objectives setdisplay sidebar day_timer_count
# 1以下の間はタイマーの値から減算を行う
execute if score @p day_timer_count matches 1.. run scoreboard players remove @p day_timer_count 1
# タイマーの値をボスバーの値と同期させる
execute store result bossbar day_timer_bossbar value run scoreboard players get @p day_timer_count
# タイマーの値が0になった際にタイマー終了のスクリプトを実行させる
execute if score @p day_timer_count matches 0 run function day_timer:stop_timer