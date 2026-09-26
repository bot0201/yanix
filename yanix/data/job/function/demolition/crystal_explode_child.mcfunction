
# === 在箭矢位置生成标记 ===
summon marker ~ ~ ~ {Tags:["crystal_explosion"]}

# === 视觉效果 ===
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1

execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    run particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 100

# === 存储水晶 Y 坐标 ===
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    store result score #crystal_y crystal_y \
    run data get entity @s Pos[1]

# === 存储附近玩家的 Y 坐标 ===
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=..6] \
    at @s \
    anchored feet \
    store result score @s player_y \
    run data get entity @s Pos[1]

# === 伤害判定：高于水晶（高伤害）===

# 中心 0~1 格：100 伤害
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=..1] \
    if score @s player_y > #crystal_y crystal_y \
    run damage @s 100

# 近距 1~2.5 格：70 伤害
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=1..2.5] \
    if score @s player_y > #crystal_y crystal_y \
    run damage @s 70

# 中距 2.5~4 格：40 伤害
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=2.5..4] \
    if score @s player_y > #crystal_y crystal_y \
    run damage @s 40

# 远距 4~6 格：20 伤害
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=4..6] \
    if score @s player_y > #crystal_y crystal_y \
    run damage @s 20

# === 伤害判定：低于水晶（低伤害）===

# 中心 0~1 格：10 伤害
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=..1] \
    unless score @s player_y > #crystal_y crystal_y \
    run damage @s 10

# 近距 1~2.5 格：6 伤害
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=1..2.5] \
    unless score @s player_y > #crystal_y crystal_y \
    run damage @s 6

# 中距 2.5~4 格：3 伤害
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=2.5..4] \
    unless score @s player_y > #crystal_y crystal_y \
    run damage @s 3

# 远距 4~6 格：1 伤害
execute \
    as @e[\
        type=marker,\
        tag=crystal_explosion,\
        limit=1,\
        sort=nearest\
    ] \
    at @s \
    as @a[distance=4..6] \
    unless score @s player_y > #crystal_y crystal_y \
    run damage @s 1

# === 清理 ===
kill @e[\
    type=marker,\
    tag=crystal_explosion,\
    limit=1,\
    sort=nearest\
]

kill @s
