# 各エンティティにIDを割り当てる

# ゲーム情報を初期化する
# ゲーム情報にはプレイヤー人数、IDが含まれる
scoreboard objectives add game_info dummy "ゲーム情報"
scoreboard objectives add id dummy
scoreboard players set players game_info 0
# 全プレイヤー（検証中のため村人を対象にしている）に対してID設定処理を実行させる
execute as @e[type=minecraft:villager] run function players:assign_id