# 各エンティティにIDを割り当てる

# プレイヤー人数を初期化する
scoreboard players set players game_info 0
# 全プレイヤー（検証中のため村人を対象にしている）に対してID設定処理を実行させる
execute as @e[type=minecraft:villager] run function player:assign_id

# 占い・霊媒の結果を指定するための変数を用意する
scoreboard objectives add uranai_result dummy
scoreboard objectives add reibai_result dummy

# 事前に全チームを削除する
team remove villager
team remove werewolf

# 村人チームを用意する
team add villager "村人"
team modify villager friendlyFire true
team modify villager seeFriendlyInvisibles false
team modify villager nametagVisibility never
team modify villager deathMessageVisibility never 
# 検証中のため村人を全員村人陣営に加える
team join villager @e[type=minecraft:villager]

# 人狼チームを用意する
team add werewolf "人狼"
team modify werewolf friendlyFire true
team modify werewolf seeFriendlyInvisibles false
team modify werewolf nametagVisibility never
team modify werewolf deathMessageVisibility never
