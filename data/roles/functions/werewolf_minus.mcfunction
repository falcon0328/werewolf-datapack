# 人狼の人数をマイナスする
# ゲーム前に実行することで、参加する人狼の数を減らすことができる

execute if score werewolf roles matches 2.. run scoreboard players remove werewolf roles 1

# 役職人数表を表示する
function roles:setdisplay_sidebar
