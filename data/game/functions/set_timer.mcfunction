# タイマーとボスバーの追加処理を行う
# BOSSバーの初期設定を行う 
bossbar add timer "残り時間"
bossbar set minecraft:timer players @a
bossbar set minecraft:timer max 600
bossbar set minecraft:timer color yellow
bossbar set minecraft:timer style notched_6
# タイマー用の変数管理を行う
scoreboard objectives add timerCount dummy
scoreboard players set @a timerCount 600
scoreboard objectives add isEndTimer dummy
scoreboard players set @a isEndTimer 0