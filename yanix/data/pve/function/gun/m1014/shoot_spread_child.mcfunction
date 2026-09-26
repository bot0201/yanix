# ============================================================
#  M1014 散弹: 散布角随机化 + 递归射线
#  @s = 射击玩家
# ============================================================

# 取玩家当前偏航角
execute \
    store result score #m1014 random \
    run data get entity @s Rotation[0] 1

# 随机偏航偏移 (-7 ~ 7 度)
execute \
    store result score #m1014 recursion_running_count \
    run random value -7..7

# 偏航 = 玩家偏航 + 随机偏移
scoreboard players operation #m1014 random += #m1014 recursion_running_count

# 取玩家当前仰角
execute \
    store result score #m1014 recursion_running_count \
    run data get entity @s Rotation[1] 1

# 随机仰角偏移 (-3 ~ 3 度)
execute \
    store result score #m1014 time \
    run random value -3..3

# 仰角 = 玩家仰角 + 随机偏移
scoreboard players operation #m1014 recursion_running_count += #m1014 time

# 在玩家眼前生成弹丸盔甲架
execute \
    at @s \
    anchored eyes \
    run summon minecraft:armor_stand ~ ~ ~ {\
        Tags:[\
            "m1014_pellet"\
        ],\
        Invisible:1b,\
        Marker:1b,\
        NoGravity:1b\
    }

# 写入偏航角
execute \
    store result entity @e[tag=m1014_pellet,limit=1,sort=nearest] Rotation[0] float 1 \
    run scoreboard players get #m1014 random

# 写入仰角
execute \
    store result entity @e[tag=m1014_pellet,limit=1,sort=nearest] Rotation[1] float 1 \
    run scoreboard players get #m1014 recursion_running_count

# 初始化射线递归计数
scoreboard players set @e[tag=m1014_pellet,limit=1,sort=nearest] recursion_running_count 0

# 执行射线
execute \
    as @e[tag=m1014_pellet,limit=1,sort=nearest] \
    at @s \
    run function pve:gun/m1014/shoot_recursion_child

# 清理弹丸
kill @e[tag=m1014_pellet,limit=1,sort=nearest]

# 继续下一颗弹丸
scoreboard players remove #m1014 pellet_m1014 1
execute \
    unless score #m1014 pellet_m1014 matches ..0 \
    run function pve:gun/m1014/shoot_spread_child