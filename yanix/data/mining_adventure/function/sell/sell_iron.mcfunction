# ========================================
# 出售粗铁 - 2 粗铁 = 1 金币
# ========================================

# 计算玩家背包中的粗铁数量
execute store result score #ore_count tmp run clear @s minecraft:raw_iron 0

# 如果没有粗铁则提示并退出
execute if score #ore_count tmp matches 0 run tellraw @s [{"text":"你的背包中没有粗铁可出售！","color":"red"}]
execute if score #ore_count tmp matches 0 run return fail

# 计算应得金币数量 = 粗铁数 / 2
scoreboard players operation #emerald_count tmp = #ore_count tmp
scoreboard players operation #emerald_count tmp /= #2 const

# 清除所有粗铁
clear @s minecraft:raw_iron

# 如果计算出的金币为 0（不足 2 个粗铁），提示并退出
execute if score #emerald_count tmp matches 0 run tellraw @s [{"text":"粗铁不足 2 个，无法出售！","color":"red"}]
execute if score #emerald_count tmp matches 0 run return fail

# 发放金币
scoreboard players operation @s money += #emerald_count tmp

# 成功提示
tellraw @s [\
    {"text":"出售成功！","color":"green"},\
    {"text":" 出售了 ","color":"white"},\
    {"score":{"name":"#ore_count","objective":"tmp"},"color":"white"},\
    {"text":" 个粗铁，获得了 ","color":"white"},\
    {"score":{"name":"#emerald_count","objective":"tmp"},"color":"gold"},\
    {"text":" 金币（余额：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"},\
    {"text":"）","color":"white"}\
]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2