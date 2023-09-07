# マイクラ人狼RPG ゲーム開始スクリプト 

# 経過日数を初期化する
scoreboard objectives add day_count dummy
scoreboard players set @a day_count 1 

# 昼タイマーを発火させる
function day_timer:start