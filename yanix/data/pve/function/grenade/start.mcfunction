# 1. 玩家视角坐标，并存入计分板（放大100倍，即乘以100）
execute \
    as @s \
    run function main:lib/tools/get_pos_eye

# 2. 在视线前方1格处召唤一个隐形的计算标记（用盔甲架最稳）
execute \
    at @s anchored eyes \
    positioned ^ ^ ^1 \
    run summon minecraft:marker ~ ~ ~ {\
        Tags:["grenade_vector_marker"],\
        NoGravity:1b\
    }

# 3. 获取该标记的坐标，存入计分板（同样放大100倍）
execute \
    as @e[tag=grenade_vector_marker,limit=1] \
    store result score #tgt_x grenade_math \
    run data get entity @s Pos[0] 100
execute \
    as @e[tag=grenade_vector_marker,limit=1] \
    store result score #tgt_y grenade_math \
    run data get entity @s Pos[1] 100
execute \
    as @e[tag=grenade_vector_marker,limit=1] \
    store result score #tgt_z grenade_math \
    run data get entity @s Pos[2] 100

# 4. 计算初始速度向量 (目标坐标 - 视线坐标)
scoreboard players operation #dx_speed grenade_math = #tgt_x grenade_math
scoreboard players operation #dx_speed grenade_math -= #eye_x grenade_math

scoreboard players operation #dy_speed grenade_math = #tgt_y grenade_math
scoreboard players operation #dy_speed grenade_math -= #eye_y grenade_math

scoreboard players operation #dz_speed grenade_math = #tgt_z grenade_math
scoreboard players operation #dz_speed grenade_math -= #eye_z grenade_math

# 5. 此时 #dx_speed 等大约是 ±100 之间的数（代表1格）。乘以初速度倍率（例如5m/s对应0.25格/tick，即25/100）
scoreboard players operation #dx_speed grenade_math *= #25 grenade_math
scoreboard players operation #dy_speed grenade_math *= #25 grenade_math
scoreboard players operation #dz_speed grenade_math *= #25 grenade_math
scoreboard players operation #dx_speed grenade_math /= #100 grenade_math
scoreboard players operation #dy_speed grenade_math /= #100 grenade_math
scoreboard players operation #dz_speed grenade_math /= #100 grenade_math

# 6. 重力加速度 (0.08 * 100 = 8)
scoreboard players remove #dy_speed grenade_math 8

# 7. 清理临时标记
kill @e[tag=grenade_vector_marker]