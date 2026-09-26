# 驱动所有手榴弹实体
# 仅在 PVE 维度运行
execute \
    in minecraft:pve \
    as @e[type=marker,tag=grenade] \
    at @s \
    run function pve:grenade/physics/step