# サイドバーのクリア
scoreboard objectives setdisplay sidebar
# 役職一覧（表示用）のクリア
scoreboard objectives remove display_roles
# 役職一覧の設定
scoreboard objectives add display_roles dummy "§f§l役職一覧§r"
execute store result score 1.§a§l村人§r display_roles run scoreboard players get villager roles
execute store result score 2.§c§l人狼§r display_roles run scoreboard players get werewolf roles
execute store result score 3.§a§l占い師§r display_roles run scoreboard players get uranai roles
execute store result score 4.§c§l狂人§r display_roles run scoreboard players get kyojin roles
execute store result score 5.§a§l霊能者§r display_roles run scoreboard players get reibai roles

scoreboard objectives setdisplay sidebar display_roles
