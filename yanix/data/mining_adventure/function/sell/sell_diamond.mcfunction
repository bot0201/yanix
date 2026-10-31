# ========================================
# 出售钻石 - 1 钻石 = 3 金币
# ========================================

# 计算玩家背包中的钻石数量
execute store result score #ore_count tmp run clear @s minecraft:diamond 0

# 如果没有钻石则提示并退出
execute if score #ore_count tmp matches 0 run tellraw @s [{"text":"你的背包中没有钻石可出售！","color":"red"}]
execute if score #ore_count tmp matches 0 run return fail

# 计算应得金币数量 = 钻石数 × 3
scoreboard players operation #emerald_count tmp = #ore_count tmp
scoreboard players operation #emerald_count tmp *= #3 const

# 清除所有钻石
clear @s minecraft:diamond

# 发放金币
scoreboard players operation @s money += #emerald_count tmp

# 成功提示
tellraw @s [\
    {"text":"出售成功！","color":"green"},\
    {"text":" 出售了 ","color":"white"},\
    {"score":{"name":"#ore_count","objective":"tmp"},"color":"aqua"},\
    {"text":" 个钻石，获得了 ","color":"white"},\
    {"score":{"name":"#emerald_count","objective":"tmp"},"color":"gold"},\
    {"text":" 金币（余额：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"},\
    {"text":"）","color":"white"}\
]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2