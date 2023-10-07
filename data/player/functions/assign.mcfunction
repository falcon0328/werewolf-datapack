# 各エンティティにIDを割り当てる

# プレイヤー人数を初期化する
scoreboard players set players game_info 0
# 全プレイヤー（検証中のため村人を対象にしている）に対してID設定処理を実行させる
execute as @e[type=minecraft:villager] run function player:assign_id
