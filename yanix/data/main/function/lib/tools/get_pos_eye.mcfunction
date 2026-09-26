# 此函数用于获取玩家当前位置至计分板
# 需要传参：execute的子命令：as 玩家

# x轴坐标
execute \
    at @s \
    anchored eyes \
    store result score @a player_x \
    run data get entity @s Pos[0]

# y轴坐标
execute \
    at @s \
    anchored eyes \
    store result score @a player_y \
    run data get entity @s Pos[1]

# z轴坐标
execute \
    at @s \
    anchored eyes \
    store result score @a player_z \
    run data get entity @s Pos[2]

