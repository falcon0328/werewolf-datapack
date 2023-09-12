# マイクラ人狼RPG起動時スクリプト 

# コマンドブロックの出力を停止する
gamerule commandBlockOutput false
# 死亡ログの出力を停止する
gamerule showDeathMessages false
# ゲームモード設定
gamemode adventure
# ゲーム難易度
difficulty easy
# 昼にする
time set day
# 天気のサイクルを停止して晴れに固定する
gamerule doWeatherCycle false
weather clear
# モブがスポーンしないようにする
gamerule doMobSpawning false
gamerule doInsomnia false
# クリーパーやガスト等のMobがブロックに変更を加えられないようにする
gamerule mobGriefing false

# 前回のゲームの情報が残っていることがあるためリセットを行う
function game:reset

# 乱数用スコアボードの追加
scoreboard objectives add is_use_carrot_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rand dummy
scoreboard objectives add rand_range dummy
scoreboard objectives add rand_appendix dummy