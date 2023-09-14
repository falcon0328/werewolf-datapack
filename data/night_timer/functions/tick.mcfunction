# 夜タイマーが作動している間は夜タイマー用のロジックを動作させる
execute if score @p is_end_night_timer matches 0 run function night_timer:exec