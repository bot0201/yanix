# 弹丸轨迹粒子
particle crit ~ ~ ~ 0 0 0 0 1 force

# 伤害计算（消音器减伤: 3 → 2 每颗弹丸）
execute \
    if score #supp_active tmp matches 0 \
    as @e[distance=..2,type=!player] \
    run damage @s 3 player_attack by @p[tag=shooting_m1014]
execute \
    if score #supp_active tmp matches 1.. \
    as @e[distance=..2,type=!player] \
    run damage @s 2 player_attack by @p[tag=shooting_m1014]

scoreboard players add @s recursion_running_count 1

# 递归条件
execute \
    positioned ^ ^ ^1 \
    unless score @s recursion_running_count matches 25.. \
    if block ~ ~ ~ #pve:shoot_passable \
    run function pve:gun/m1014/shoot_recursion_child

# 碎玻璃
execute \
    positioned ^ ^ ^1 \
    unless score @s recursion_running_count matches 25.. \
    if block ~ ~ ~ minecraft:glass \
    run function pve:gun/shoot_damage_glass_child