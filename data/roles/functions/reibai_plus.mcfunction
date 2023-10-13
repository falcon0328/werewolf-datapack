# 霊媒師の人数をプラスする
# ゲーム前に実行することで、参加する霊媒師の数を増やすことができる

# ただし参加できる占い師は1名まで
# 2名以上にならないようにブロックするロジックだけ入れている
execute if score reibai roles matches ..0 run scoreboard players add reibai roles 1

# 役職人数表を表示する
function roles:setdisplay_sidebar
