# マイクラ人狼RPG ゲーム開始スクリプト 

# ゲーム情報を管理するテーブルを用意する
scoreboard objectives add game_info dummy "ゲーム情報"
# ゲームを開始したことを記録する
scoreboard players set is_start game_info 1

# プレイヤーID・役職の割当を行う
function players:assign
function roles:assign

# ゲーム管理用のアーマースタンドを召喚する
kill @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]}]
summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["game_manager"]}

# 経過日数を初期化する
scoreboard objectives add day_count dummy
scoreboard players set @a day_count 1 
scoreboard players set @e[type=minecraft:armor_stand,nbt={Tags:["game_manager"]},limit=1] day_count 1 

# 昼タイマーを発火させる
function day_timer:start