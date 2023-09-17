# カウントしている日数を各プレイヤーに同期させる
execute store result score @a day_count run scoreboard players get @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] day_count