# ゲームに参加するプレイヤーを確定させる
# 参加するプレイヤーへのゲーム設定変更やID設定もこのスクリプトで行う

# ゲーム情報を初期化する
# ゲーム情報にはプレイヤー人数、IDが含まれる
scoreboard objectives add game_info dummy "ゲーム情報"
scoreboard objectives add id dummy
scoreboard players set players game_info 0
# 全プレイヤー（検証中のため村人も対象にしている）に対してID設定処理を実行させる
execute as @e[type=minecraft:villager] run function players:assign_id
execute as @e[type=player] run function players:assign_id
