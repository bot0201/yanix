# PVE 统一波次生成宏
# 参数: zombies (普通僵尸数量), babies (小僵尸数量)
$scoreboard players set #summon_zombie recursion_running_count $(zombies)
execute \
    if score #summon_zombie recursion_running_count matches 1.. \
    run function pve:spawn/zombie/spawn_zombie_per_player_entrance
$scoreboard players set #summon_baby_zombie recursion_running_count $(babies)
execute \
    if score #summon_baby_zombie recursion_running_count matches 1.. \
    run function pve:spawn/baby_zombie/spawn_baby_zombie_per_player_entrance