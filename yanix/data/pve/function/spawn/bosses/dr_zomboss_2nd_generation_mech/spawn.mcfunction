execute \
    store result score #pve random \
    run random value 1..359

execute \
    if score #pve random matches ..349 \
    run tag @s add invalid

scoreboard players operation @s count = #pve random

execute \
    if score @s random matches 0 \
    run tag @s add invalid

execute \
    unless entity @s[tag=invalid] \
    run function pve:spawn/bosses/dr_zomboss_2nd_generation_mech/spawn_child

scoreboard players remove #summon_zombie recursion_running_count 1
execute \
    unless score #summon_zombie recursion_running_count matches ..0 \
    run function pve:spawn/bosses/dr_zomboss_2nd_generation_mech/start