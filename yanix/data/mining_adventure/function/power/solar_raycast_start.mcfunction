# ========================================
# 太阳能发电机 - 开始射线检测
# ========================================

# 检查余额
execute \
    unless score @s money matches 5.. \
    run tellraw @s [\
        {"text":"金币不足！","color":"red"},\
        {"text":" 需要 5 金币，当前余额：","color":"white"},\
        {"score":{"name":"@s","objective":"money"},"color":"gold"}\
    ]
execute \
    unless score @s money matches 5.. \
    run return fail

scoreboard players set #power_ray_dist tmp 0
execute \
    anchored eyes \
    positioned ^ ^ ^ \
    run function mining_adventure:power/solar_step