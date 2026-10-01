# ========================================
# 磁吸炸弹 - 自由落体物理
# @s = 磁吸炸弹 marker，尚未吸附
# ========================================

# 1. 读取当前位置（×100）
execute \
    store result score #gx magnetic_math \
    run data get entity @s Pos[0] 100
execute \
    store result score #gy magnetic_math \
    run data get entity @s Pos[1] 100
execute \
    store result score #gz magnetic_math \
    run data get entity @s Pos[2] 100

# 2. 读取速度
scoreboard players operation #gvx magnetic_math = @s magnetic_vx
scoreboard players operation #gvy magnetic_math = @s magnetic_vy
scoreboard players operation #gvz magnetic_math = @s magnetic_vz

# 3. 欧拉积分：位置 += 速度
scoreboard players operation #gx magnetic_math += #gvx magnetic_math
scoreboard players operation #gy magnetic_math += #gvy magnetic_math
scoreboard players operation #gz magnetic_math += #gvz magnetic_math

# 4. 将新位置写回实体（÷100）
execute \
    store result entity @s Pos[0] double 0.01 \
    run scoreboard players get #gx magnetic_math
execute \
    store result entity @s Pos[1] double 0.01 \
    run scoreboard players get #gy magnetic_math
execute \
    store result entity @s Pos[2] double 0.01 \
    run scoreboard players get #gz magnetic_math

# 5. 重力加速度
scoreboard players operation #gvy magnetic_math -= #mag_gravity magnetic_math

# 6. 将速度写回实体
scoreboard players operation @s magnetic_vx = #gvx magnetic_math
scoreboard players operation @s magnetic_vy = #gvy magnetic_math
scoreboard players operation @s magnetic_vz = #gvz magnetic_math

# 7. 飞行粒子（深色金属粉尘）
execute \
    at @s \
    run particle minecraft:dust{color:[0.2,0.2,0.2],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 0 3

# 8. 碰撞检测：非 passable 方块 → 爆炸
execute \
    at @s \
    unless block ~ ~ ~ #pve:shoot_passable \
    run function pve:magnetic_bomb/explode

# 9. 吸附检测：附近有敌人 → 吸附上去
execute \
    at @s \
    if entity @s \
    if entity @e[type=!player,type=!marker,type=!item,distance=..3,limit=1] \
    run function pve:magnetic_bomb/physics/latch_on

# 10. 寿命 +1
scoreboard players add @s magnetic_life 1

# 11. 寿命耗尽 → 爆炸（若未被引爆）
execute \
    if entity @s \
    if score @s magnetic_life >= #mag_max_life magnetic_math \
    run function pve:magnetic_bomb/explode