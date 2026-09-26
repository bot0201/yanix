# @s = 手榴弹 marker 实体
# 1. 读取当前位置（×100）
execute \
    store result score #gx grenade_math \
    run data get entity @s Pos[0] 100
execute \
    store result score #gy grenade_math \
    run data get entity @s Pos[1] 100
execute \
    store result score #gz grenade_math \
    run data get entity @s Pos[2] 100

# 2. 读取速度
scoreboard players operation #gvx grenade_math = @s grenade_vx
scoreboard players operation #gvy grenade_math = @s grenade_vy
scoreboard players operation #gvz grenade_math = @s grenade_vz

# 3. 欧拉积分：位置 += 速度
scoreboard players operation #gx grenade_math += #gvx grenade_math
scoreboard players operation #gy grenade_math += #gvy grenade_math
scoreboard players operation #gz grenade_math += #gvz grenade_math

# 4. 将新位置写回实体（÷100）
execute \
    store result entity @s Pos[0] double 0.01 \
    run scoreboard players get #gx grenade_math
execute \
    store result entity @s Pos[1] double 0.01 \
    run scoreboard players get #gy grenade_math
execute \
    store result entity @s Pos[2] double 0.01 \
    run scoreboard players get #gz grenade_math

# 5. 重力加速度（作用在临时变量上）
scoreboard players operation #gvy grenade_math -= #gravity grenade_math

# 6. 将速度写回实体
scoreboard players operation @s grenade_vx = #gvx grenade_math
scoreboard players operation @s grenade_vy = #gvy grenade_math
scoreboard players operation @s grenade_vz = #gvz grenade_math

# 7. 寿命 +1
scoreboard players add @s grenade_life 1

# 8. 碰撞检测：非 passable 方块 → 爆炸
execute \
    at @s \
    unless block ~ ~ ~ #pve:shoot_passable \
    run function pve:grenade/explode

# 9. 寿命耗尽 → 爆炸（若未被碰撞引爆）
execute \
    if entity @s \
    if score @s grenade_life >= #max_life grenade_math \
    run function pve:grenade/explode