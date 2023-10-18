# マイクラ人狼RPG起動時スクリプト 

# アドベンチャーモードに変更する
gamemode adventure

# コマンドの出力を停止する
gamerule sendCommandFeedback false
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
# 進捗達成の報告をされないようにする
gamerule announceAdvancements false


# 各プレイヤーの持ち物を消去する
# ただし、基本的にはゲーム実行中にリロードするパターンを除き持ち物を持っている状態でこのコードが呼ばれることはない想定
clear @a
# 前回のゲームの情報が残っていることがあるためリセットを行う
function game:stop