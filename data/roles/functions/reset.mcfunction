# 役職人数を保存する変数を追加する
scoreboard objectives add roles dummy

# 役職人数の各変数に0を設定する
scoreboard players set werewolf roles 1
scoreboard players set kyojin roles 0
scoreboard players set uranai roles 0
scoreboard players set reibai roles 0
scoreboard players set villager roles 0

# 役職人数表を表示する
function roles:setdisplay_sidebar
