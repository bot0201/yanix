# 递归绘画子弹轨迹
particle smoke ~ ~ ~ 0 0 0 0 1 force

# 伤害计算（消音器减伤: 20 → 18）
execute \
    if score #supp_active tmp matches 0 \
    as @e[distance=..2,type=!player] \
    run damage @s 20 player_attack by @p[tag=shooting_m2]
execute \
    if score #supp_active tmp matches 1.. \
    as @e[distance=..2,type=!player] \
    run damage @s 18 player_attack by @p[tag=shooting_m2]

scoreboard players add @s recursion_running_count 1

# 递归条件（80 格射程）
execute \
    positioned ^ ^ ^1 \
    unless score @s recursion_running_count matches 80.. \
    if block ~ ~ ~ #pve:shoot_passable \
    run function pve:gun/m2/shoot_recursion_child
# 碎玻璃
execute \
    positioned ^ ^ ^1 \
    unless score @s recursion_running_count matches 80.. \
    if block ~ ~ ~ minecraft:glass \
    run function pve:gun/shoot_damage_glass_child