# 役職ごとのIDを用意する
scoreboard objectives add role_id dummy

# 占い・霊媒の結果を指定するための変数を用意する
scoreboard objectives add uranai_result dummy
scoreboard objectives add reibai_result dummy

# 村人チームを用意する
team add villager "村人"
team modify villager friendlyFire true
team modify villager seeFriendlyInvisibles false
team modify villager nametagVisibility never
team modify villager deathMessageVisibility never 

# 人狼チームを用意する
team add werewolf "人狼"
team modify werewolf friendlyFire true
team modify werewolf seeFriendlyInvisibles false
team modify werewolf nametagVisibility never
team modify werewolf deathMessageVisibility never

# 全員に役職IDを割り当てる
# 最初に全員を村人としてIDを設定し、その後各役職を選定する
# 0: 村人、1: 人狼、2: 占い師、3: 狂人、4: 霊媒師
scoreboard players set @e[scores={id=0..}] role_id 0

# 人狼のID割当
# 占い師のID割当
execute if score uranai roles matches 1.. run scoreboard players set @e[scores={id=0..,role_id=0},sort=random,limit=1] role_id 2
# 狂人のID割当
execute if score kyojin roles matches 1.. run scoreboard players set @e[scores={id=0..,role_id=0},sort=random,limit=1] role_id 3
# 霊媒師のID割当
execute if score reibai roles matches 1.. run scoreboard players set @e[scores={id=0..,role_id=0},sort=random,limit=1] role_id 4

# プレイヤーIDの存在する全エンティティに役職の内容を割り当てる
execute as @e[scores={id=0..}] run function roles:assign_job
