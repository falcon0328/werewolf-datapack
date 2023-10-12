# 人狼のID設定

# 人狼を1名設定する
execute if score werewolf roles matches 1 run scoreboard players set @e[scores={id=0..,role_id=0},sort=random,limit=1] role_id 1
# 人狼を2名設定する
execute if score werewolf roles matches 2 run scoreboard players set @e[scores={id=0..,role_id=0},sort=random,limit=2] role_id 1
# 人狼を3名設定する
execute if score werewolf roles matches 3 run scoreboard players set @e[scores={id=0..,role_id=0},sort=random,limit=3] role_id 1
# 人狼を4名設定する
execute if score werewolf roles matches 4 run scoreboard players set @e[scores={id=0..,role_id=0},sort=random,limit=4] role_id 1
# 人狼を5名設定する
execute if score werewolf roles matches 5 run scoreboard players set @e[scores={id=0..,role_id=0},sort=random,limit=5] role_id 1
