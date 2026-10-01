# ========================================
# 磁吸炸弹 - tick 驱动
# 仅在 PVE 维度运行
# ========================================

execute \
    in minecraft:pve \
    as @e[type=marker,tag=magnetic_bomb] \
    at @s \
    run function pve:magnetic_bomb/physics/step