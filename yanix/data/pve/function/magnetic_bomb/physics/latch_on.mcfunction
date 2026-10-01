# ========================================
# 磁吸炸弹 - 吸附到敌人身上
# @s = 磁吸炸弹 marker，飞行中碰到敌人
# ========================================

# 标记为已吸附
tag @s add magnetic_latched

# 吸附音效（金属碰撞声）
execute \
    at @s \
    run playsound minecraft:block.anvil.place block @a ~ ~ ~ 1 0.8

# 吸附粒子（紫色火花，体现磁性）
execute \
    at @s \
    run particle minecraft:witch ~ ~ ~ 0.3 0.3 0.3 0 10 force