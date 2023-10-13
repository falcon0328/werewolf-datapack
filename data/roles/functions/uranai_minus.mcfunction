# 占い師の人数をマイナスする
# ゲーム前に実行することで、参加する占い師の数を減らすことができる

# 負の値にならないようにブロックするロジックだけ入れている
execute if score uranai roles matches 1.. run scoreboard players remove uranai roles 1

# 役職人数表を表示する
function roles:setdisplay_sidebar
