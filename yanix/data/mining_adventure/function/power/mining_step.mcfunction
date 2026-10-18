# ========================================
# 自动采矿机 - 射线步进
# 从玩家视线发射射线，最多检测 10 格
# ========================================

scoreboard players add #power_ray_dist tmp 1

# 找到非空气方块 -> 准备建造
execute \
    unless score #power_ray_dist tmp matches 11.. \
    positioned ^ ^ ^1 \
    unless block ~ ~ ~ air \
    align xyz \
    run function mining_adventure:power/mining_hit

# 仍然空气 -> 继续步进
execute \
    unless score #power_ray_dist tmp matches 11.. \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ air \
    run function mining_adventure:power/mining_step

# 超出最大距离 -> 未找到
execute \
    if score #power_ray_dist tmp matches 11.. \
    run tellraw @s [{"text":"未找到合适位置，请对准地面再试！","color":"red"}]
execute \
    if score #power_ray_dist tmp matches 11.. \
    run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1