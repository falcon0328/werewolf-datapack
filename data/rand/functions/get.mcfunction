# rand_range・randの値を6に設定
scoreboard players set rand_range rand 6

# Area Effect Cloudを召喚
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}

# 召喚したAria Effect CloudのUUIDを取得
execute store result score @p rand run data get entity @e[tag=RNG,distance=..0.01,limit=1] UUID[0]

# 1tick内に同じ人が複数回乱数生成をするとき (3コマンド→4コマンド)
kill @e[tag=RNG,distance=..0.01,limit=1]

# 取得したUUIDをrand_rangeで割った時の余りを取得
scoreboard players operation @p rand %= rand_range rand

# 生成した乱数に任意の値を足す
# サイコロなどに利用する際は0以外から始まる任意の乱数を生成したいため
scoreboard players set @p rand_appendix 1
scoreboard players operation @p rand += @p rand_appendix