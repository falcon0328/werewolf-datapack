# 占い師の人数をプラスする
# ゲーム前に実行することで、参加する占い師の数を増やすことができる

# ただし参加できる占い師は1名まで
# 2名以上にならないようにブロックするロジックだけ入れている
execute if score uranai roles matches ..0 run scoreboard players add uranai roles 1

# 役職人数表を表示する
function roles:setdisplay_sidebar
