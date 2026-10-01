# ========================================
# 磁吸炸弹 - 投掷启动
# 由 magnetic_bomb_throw 成就触发，@s = 投掷玩家
# ========================================

# 1. 标记玩家以便后续引用
tag @s add mag_thrower

# 2. 清除鱼钩浮标
execute \
    at @s \
    as @e[type=fishing_bobber,distance=..5,limit=1,sort=nearest] \
    run kill @s

# 3. 获取玩家眼睛坐标（×100）
execute \
    at @a[tag=mag_thrower] \
    anchored eyes \
    store result score #eye_x magnetic_math \
    run data get entity @s Pos[0] 100
execute \
    at @a[tag=mag_thrower] \
    anchored eyes \
    store result score #eye_y magnetic_math \
    run data get entity @s Pos[1] 100
execute \
    at @a[tag=mag_thrower] \
    anchored eyes \
    store result score #eye_z magnetic_math \
    run data get entity @s Pos[2] 100

# 4. 在视线前方 1 格处召唤方向标记
execute \
    at @a[tag=mag_thrower] \
    anchored eyes \
    positioned ^ ^ ^1 \
    run summon marker ~ ~ ~ {Tags:["mag_tmp"],NoGravity:1b}

# 5. 获取方向标记坐标（×100）
execute \
    as @e[tag=mag_tmp,limit=1] \
    store result score #tgt_x magnetic_math \
    run data get entity @s Pos[0] 100
execute \
    as @e[tag=mag_tmp,limit=1] \
    store result score #tgt_y magnetic_math \
    run data get entity @s Pos[1] 100
execute \
    as @e[tag=mag_tmp,limit=1] \
    store result score #tgt_z magnetic_math \
    run data get entity @s Pos[2] 100

# 6. 速度向量 = 目标 - 眼睛
scoreboard players operation #vx magnetic_math = #tgt_x magnetic_math
scoreboard players operation #vx magnetic_math -= #eye_x magnetic_math
scoreboard players operation #vy magnetic_math = #tgt_y magnetic_math
scoreboard players operation #vy magnetic_math -= #eye_y magnetic_math
scoreboard players operation #vz magnetic_math = #tgt_z magnetic_math
scoreboard players operation #vz magnetic_math -= #eye_z magnetic_math

# 7. 乘以初速倍率（v *= speed / 100）
scoreboard players operation #vx magnetic_math *= #mag_speed magnetic_math
scoreboard players operation #vy magnetic_math *= #mag_speed magnetic_math
scoreboard players operation #vz magnetic_math *= #mag_speed magnetic_math
scoreboard players operation #vx magnetic_math /= #mag_100 magnetic_math
scoreboard players operation #vy magnetic_math /= #mag_100 magnetic_math
scoreboard players operation #vz magnetic_math /= #mag_100 magnetic_math

# 8. 向上初速加成
scoreboard players operation #vy magnetic_math += #mag_boost magnetic_math

# 9. 在玩家眼睛处生成磁吸炸弹实体
execute \
    at @a[tag=mag_thrower] \
    anchored eyes \
    run summon marker ~ ~ ~ {Tags:["magnetic_bomb"],NoGravity:1b}

# 10. 将速度存入磁吸炸弹实体
execute \
    at @a[tag=mag_thrower] \
    as @e[tag=magnetic_bomb,distance=..2,sort=nearest,limit=1] \
    run scoreboard players operation @s magnetic_vx = #vx magnetic_math
execute \
    at @a[tag=mag_thrower] \
    as @e[tag=magnetic_bomb,distance=..2,sort=nearest,limit=1] \
    run scoreboard players operation @s magnetic_vy = #vy magnetic_math
execute \
    at @a[tag=mag_thrower] \
    as @e[tag=magnetic_bomb,distance=..2,sort=nearest,limit=1] \
    run scoreboard players operation @s magnetic_vz = #vz magnetic_math
execute \
    at @a[tag=mag_thrower] \
    as @e[tag=magnetic_bomb,distance=..2,sort=nearest,limit=1] \
    run scoreboard players set @s magnetic_life 0

# 11. 播放投掷音效（金属质感的投掷声）
execute \
    at @a[tag=mag_thrower] \
    run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.5 0.5

# 12. 清理
kill @e[tag=mag_tmp]
tag @a[tag=mag_thrower] remove mag_thrower