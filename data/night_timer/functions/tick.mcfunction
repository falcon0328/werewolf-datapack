# 夜タイマーが作動している間は夜タイマー用のロジックを動作させる
execute if score @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] is_end_night_timer matches 0 run function night_timer:exec