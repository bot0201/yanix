# ========================================
# 自动采矿机 - 开始射线检测
# ========================================

# 检查余额
execute \
    unless score @s money matches 10.. \
    run tellraw @s [\
        {"text":"金币不足！","color":"red"},\
        {"text":" 需要 10 金币，当前余额：","color":"white"},\
        {"score":{"name":"@s","objective":"money"},"color":"gold"}\
    ]
execute \
    unless score @s money matches 10.. \
    run return fail

scoreboard players set #power_ray_dist tmp 0
execute \
    anchored eyes \
    positioned ^ ^ ^ \
    run function mining_adventure:power/mining_step