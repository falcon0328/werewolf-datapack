# 昼タイマーが作動している間は昼タイマー用のロジックを動作させる
execute if score @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] is_end_day_timer matches 0 run function day_timer:exec