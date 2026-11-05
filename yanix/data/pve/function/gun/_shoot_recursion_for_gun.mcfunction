# 递归绘画子弹轨迹
$particle $(particle) ~ ~ ~ 0 0 0 0 1 force

# 伤害计算（消音器减伤）
$execute \
    if score #supp_active db matches 0 \
    as @e[distance=..2,type=!player] \
    run damage @s $(damage) player_attack by @p[tag=$(shooting_tag)]
$execute \
    if score #supp_active db matches 1.. \
    as @e[distance=..2,type=!player] \
    run damage @s $(damage_supp) player_attack by @p[tag=$(shooting_tag)]

scoreboard players add @s recursion_running_count 1

# 递归条件
$execute \
    positioned ^ ^ ^1 \
    unless score @s recursion_running_count matches $(range).. \
    if block ~ ~ ~ #pve:shoot_passable \
    run function pve:gun/_shoot_recursion_for_gun \
        {particle:"$(particle)",damage:"$(damage)",damage_supp:"$(damage_supp)",shooting_tag:"$(shooting_tag)",range:"$(range)"}
# 碎玻璃
$execute \
    positioned ^ ^ ^1 \
    unless score @s recursion_running_count matches $(range).. \
    if block ~ ~ ~ minecraft:glass \
    run function pve:gun/shoot_damage_glass_child