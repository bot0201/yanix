# ========================================
# 磁吸炸弹 - 已吸附状态
# @s = 吸附在敌人身上的磁吸炸弹 marker
# ========================================

# 1. 寻找最近的敌人
execute \
    at @s \
    as @e[type=!player,type=!marker,type=!item,distance=..10,sort=nearest,limit=1] \
    at @s \
    run tp @e[tag=magnetic_latched,distance=..15,sort=nearest,limit=1] ~ ~ ~

# 2. 吸附中粒子（持续火花）
execute \
    at @s \
    run particle minecraft:witch ~ ~0.5 ~ 0.2 0.2 0.2 0 2

# 3. 若无敌人可跟随（目标已死/远离），解除吸附
execute \
    unless entity @e[type=!player,type=!marker,type=!item,distance=..10,limit=1] \
    run tag @s remove magnetic_latched

# 4. 寿命 +1
scoreboard players add @s magnetic_life 1

# 5. 寿命耗尽 → 爆炸
execute \
    if entity @s \
    if score @s magnetic_life >= #mag_max_life magnetic_math \
    run function pve:magnetic_bomb/explode

# 6. 碰撞检测：撞到方块也爆炸
execute \
    at @s \
    if entity @s \
    unless block ~ ~ ~ #pve:shoot_passable \
    run function pve:magnetic_bomb/explode