# ========================================
# 出售粗金 - 1 粗金 = 1 金币
# ========================================

# 计算玩家背包中的粗金数量
execute store result score #ore_count tmp run clear @s minecraft:raw_gold 0

# 如果没有粗金则提示并退出
execute if score #ore_count tmp matches 0 run tellraw @s [{"text":"你的背包中没有粗金可出售！","color":"red"}]
execute if score #ore_count tmp matches 0 run return fail

# 1 粗金 = 1 金币，直接复制
scoreboard players operation #emerald_count tmp = #ore_count tmp

# 清除所有粗金
clear @s minecraft:raw_gold

# 发放金币
scoreboard players operation @s mining_adventure_money += #emerald_count tmp

# 成功提示
tellraw @s [\
    {"text":"出售成功！","color":"green"},\
    {"text":" 出售了 ","color":"white"},\
    {"score":{"name":"#ore_count","objective":"tmp"},"color":"gold"},\
    {"text":" 个粗金，获得了 ","color":"white"},\
    {"score":{"name":"#emerald_count","objective":"tmp"},"color":"gold"},\
    {"text":" 金币（余额：","color":"white"},\
    {"score":{"name":"@s","objective":"mining_adventure_money"},"color":"gold"},\
    {"text":"）","color":"white"}\
]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1