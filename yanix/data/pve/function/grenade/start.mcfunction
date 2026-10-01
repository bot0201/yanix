# 由 grenade_throw 成就触发，@s = 投掷玩家
# 1. 标记玩家以便后续引用
tag @s add grenade_thrower

# 2. 清除鱼钩浮标
execute \
    at @s \
    as @e[type=fishing_bobber,distance=..5,limit=1,sort=nearest] \
    run kill @s

# 3. 获取玩家眼睛坐标（×100）
execute \
    at @a[tag=grenade_thrower] \
    anchored eyes \
    store result score #eye_x grenade_math \
    run data get entity @s Pos[0] 100
execute \
    at @a[tag=grenade_thrower] \
    anchored eyes \
    store result score #eye_y grenade_math \
    run data get entity @s Pos[1] 100
execute \
    at @a[tag=grenade_thrower] \
    anchored eyes \
    store result score #eye_z grenade_math \
    run data get entity @s Pos[2] 100

# 4. 在视线前方 1 格处召唤方向标记
execute \
    at @a[tag=grenade_thrower] \
    anchored eyes \
    positioned ^ ^ ^1 \
    run summon marker ~ ~ ~ {Tags:["grenade_tmp"],NoGravity:1b}

# 5. 获取方向标记坐标（×100）
execute \
    as @e[tag=grenade_tmp,limit=1] \
    store result score #tgt_x grenade_math \
    run data get entity @s Pos[0] 100
execute \
    as @e[tag=grenade_tmp,limit=1] \
    store result score #tgt_y grenade_math \
    run data get entity @s Pos[1] 100
execute \
    as @e[tag=grenade_tmp,limit=1] \
    store result score #tgt_z grenade_math \
    run data get entity @s Pos[2] 100

# 6. 速度向量 = 目标 - 眼睛
scoreboard players operation #vx grenade_math = #tgt_x grenade_math
scoreboard players operation #vx grenade_math -= #eye_x grenade_math
scoreboard players operation #vy grenade_math = #tgt_y grenade_math
scoreboard players operation #vy grenade_math -= #eye_y grenade_math
scoreboard players operation #vz grenade_math = #tgt_z grenade_math
scoreboard players operation #vz grenade_math -= #eye_z grenade_math

# 7. 乘以初速倍率（v *= speed / 100）
scoreboard players operation #vx grenade_math *= #speed grenade_math
scoreboard players operation #vy grenade_math *= #speed grenade_math
scoreboard players operation #vz grenade_math *= #speed grenade_math
scoreboard players operation #vx grenade_math /= #100 grenade_math
scoreboard players operation #vy grenade_math /= #100 grenade_math
scoreboard players operation #vz grenade_math /= #100 grenade_math

# 8. 向上初速加成
scoreboard players operation #vy grenade_math += #boost grenade_math

# 9. 在玩家眼睛处生成手榴弹实体
execute \
    at @a[tag=grenade_thrower] \
    anchored eyes \
    run summon marker ~ ~ ~ {Tags:["grenade","frag_grenade"],NoGravity:1b}

# 10. 将速度存入手榴弹实体
execute \
    at @a[tag=grenade_thrower] \
    as @e[tag=grenade,distance=..2,sort=nearest,limit=1] \
    run scoreboard players operation @s grenade_vx = #vx grenade_math
execute \
    at @a[tag=grenade_thrower] \
    as @e[tag=grenade,distance=..2,sort=nearest,limit=1] \
    run scoreboard players operation @s grenade_vy = #vy grenade_math
execute \
    at @a[tag=grenade_thrower] \
    as @e[tag=grenade,distance=..2,sort=nearest,limit=1] \
    run scoreboard players operation @s grenade_vz = #vz grenade_math
execute \
    at @a[tag=grenade_thrower] \
    as @e[tag=grenade,distance=..2,sort=nearest,limit=1] \
    run scoreboard players set @s grenade_life 0

# 11. 清理
kill @e[tag=grenade_tmp]
tag @a[tag=grenade_thrower] remove grenade_thrower