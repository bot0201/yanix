## 此函数用于获取玩家当前位置至计分板
# 需要传参：as 玩家 at @s(若不at玩家，则会导致作为这个玩家但是位置没有传过去)、mode宏（0=脚位置,1=眼睛位置）

$scoreboard players set #lib_get_pos_mode db $(mode)

# 报错
execute \
    if score #lib_get_pos_mode db matches -2147483647..-1 \
    run tellraw @s {\
        "text":"执行失败!mode宏应为0(脚位置)/1(眼睛位置)!",\
        "color":"red"\
    }
execute \
    if score #lib_get_pos_mode db matches 2..2147483647 \
    run tellraw @s {\
        "text":"执行失败!mode宏应为0(脚位置)/1(眼睛位置)!",\
        "color":"red"\
    }

## 脚位置
# x轴坐标
execute \
    at @s \
    if score #lib_get_pos_mode db matches 0 \
    store result score @s player_x \
    run data get entity @s Pos[0]

# y轴坐标
execute \
    at @s \
    if score #lib_get_pos_mode db matches 0 \
    store result score @s player_y \
    run data get entity @s Pos[1]

# z轴坐标
execute \
    at @s \
    if score #lib_get_pos_mode db matches 0 \
    store result score @s player_z \
    run data get entity @s Pos[2]

## 眼睛位置
# x轴坐标
execute \
    at @s \
    anchored eyes \
    if score #lib_get_pos_mode db matches 1 \
    store result score @s player_x \
    run data get entity @s Pos[0]

# y轴坐标
execute \
    at @s \
    anchored eyes \
    if score #lib_get_pos_mode db matches 1 \
    store result score @s player_y \
    run data get entity @s Pos[1]

# z轴坐标
execute \
    at @s \
    anchored eyes \
    if score #lib_get_pos_mode db matches 1 \
    store result score @s player_z \
    run data get entity @s Pos[2]
