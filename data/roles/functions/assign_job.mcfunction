# 役職IDごとに設定する内容が異なるため分岐処理を行っている
# 0: 村人、1: 人狼、2: 占い師、3: 狂人、4: 霊媒師
execute if score @s role_id matches 0 run function roles:assign_job_00_villager
execute if score @s role_id matches 1 run function roles:assign_job_01_werewolf
execute if score @s role_id matches 2 run function roles:assign_job_02_uranai
execute if score @s role_id matches 3 run function roles:assign_job_03_kyojin
execute if score @s role_id matches 4 run function roles:assign_job_04_reibai
