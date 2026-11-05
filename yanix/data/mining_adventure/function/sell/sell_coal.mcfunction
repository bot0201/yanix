# ========================================
# 出售煤炭 - 4 煤炭 = 1 金币
# ========================================

# 计算玩家背包中的煤炭数量
execute store result score #ore_count db run clear @s minecraft:coal 0

# 如果没有煤炭则提示并退出
execute if score #ore_count db matches 0 run tellraw @s [{"text":"你的背包中没有煤炭可出售！","color":"red"}]
execute if score #ore_count db matches 0 run return fail

# 计算应得金币数量 = 煤炭数 / 4
scoreboard players operation #emerald_count db = #ore_count db
scoreboard players operation #emerald_count db /= #4 const

# 清除所有煤炭
clear @s minecraft:coal

# 如果计算出的金币为 0（不足 4 个煤炭），提示并退出
execute if score #emerald_count db matches 0 run tellraw @s [{"text":"煤炭不足 4 个，无法出售！","color":"red"}]
execute if score #emerald_count db matches 0 run return fail

# 发放金币
scoreboard players operation @s money += #emerald_count db

# 成功提示
tellraw @s [\
    {"text":"出售成功！","color":"green"},\
    {"text":" 出售了 ","color":"white"},\
    {"score":{"name":"#ore_count","objective":"db"},"color":"dark_gray"},\
    {"text":" 个煤炭，获得了 ","color":"white"},\
    {"score":{"name":"#emerald_count","objective":"db"},"color":"gold"},\
    {"text":" 金币（余额：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"},\
    {"text":"）","color":"white"}\
]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2