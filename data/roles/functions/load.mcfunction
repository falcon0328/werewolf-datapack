# 役職人数情報が何も設定されてない場合、テーブル追加と各値の初期化を行う
#
# scoreboardコマンドで直接操作した場合を除いて人狼の人数が1を下回ることはない
# 1を下回っている場合はスコアボードが作成されてなかったか、想定外の値を設定されている
# そのため人狼の役職人数を確認することで何も設定されてないかの判断を行い、必要に応じて役職人数の初期化を行う
scoreboard objectives add roles dummy
execute unless score werewolf roles matches 1.. run function roles:reset

# 役職人数表を表示する
function roles:setdisplay_sidebar
