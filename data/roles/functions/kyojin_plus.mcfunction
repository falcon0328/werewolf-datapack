# 狂人の人数をプラスする
# ゲーム前に実行することで、参加する狂人の数を増やすことができる

# ただし参加できる狂人は1名まで
# 2名以上にならないようにブロックするロジックだけ入れている
execute if score kyojin roles matches ..0 run scoreboard players add kyojin roles 1

# 役職人数表を表示する
function roles:setdisplay_sidebar
