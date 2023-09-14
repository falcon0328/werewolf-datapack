# 昼タイマーが作動している間は昼タイマー用のロジックを動作させる
execute if score @p is_end_day_timer matches 0 run function day_timer:exec