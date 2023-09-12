# 昼タイマーが作動している間は昼タイマー用のロジックを動作させる
execute if score @p is_end_day_timer matches 0 run function day_timer:exec
# 夜タイマーが作動している間は昼タイマー用のロジックを動作させる
execute if score @p is_end_night_timer matches 0 run function night_timer:exec
# ダイスのスクリプト
execute as @a[nbt={Inventory: [{id: "minecraft:carrot_on_a_stick"}]},limit=1] run execute if score @s is_use_carrot_stick matches 1.. run function rand:dice