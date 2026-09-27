execute \
    store result score #pve random \
    run random value 1..359
execute \
    as @r[tag=gaming_pve] \
    at @s \
    if dimension minecraft:pve \
    run summon minecraft:marker ~ ~ ~ {\
    Tags:[\
        "candidate"\
    ],\
    NoGravity:1b\
}

execute \
    as @e[type=marker,tag=candidate] \
    run function pve:spawn/bosses/dr_zomboss_1st_generation_mech/spawn_child

scoreboard players remove #summon_zombie recursion_running_count 1
execute \
    unless score #summon_zombie recursion_running_count matches ..0 \
    run function pve:spawn/bosses/dr_zomboss_1st_generation_mech/start