# 村人の人数をマイナスする
# ゲーム前に実行することで、参加する村人の数を減らすことができる

# 負の値にならにようにブロックするロジックだけ入れている
execute if score villager roles matches 1.. run scoreboard players remove villager roles 1

# 役職人数表を表示する
function roles:setdisplay_sidebar
