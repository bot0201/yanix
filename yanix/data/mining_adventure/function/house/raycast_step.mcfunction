# ========================================
# 射线步进 - 沿视线方向步进 1 格
# 最多检测 20 格
# ========================================

scoreboard players add #house_ray_dist tmp 1

# 找到非空气方块 -> 命中
execute \
    unless score #house_ray_dist tmp matches 21.. \
    positioned ^ ^ ^1 \
    unless block ~ ~ ~ air \
    align xyz \
    run function mining_adventure:house/raycast_hit

# 仍然空气 -> 继续步进
execute \
    unless score #house_ray_dist tmp matches 21.. \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ air \
    run function mining_adventure:house/raycast_step

# 超出最大距离 -> 未找到
execute \
    if score #house_ray_dist tmp matches 21.. \
    run tellraw @s [{"text":"未找到目标方块，请对准房屋基底方块再试！","color":"red"}]
execute \
    if score #house_ray_dist tmp matches 21.. \
    run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1