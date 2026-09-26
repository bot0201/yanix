execute \
    store result score #pve random \
    run random value 1..359
execute \
    as @a[tag=gaming_pve] \
    at @s \
    if dimension minecraft:pve \
    run summon minecraft:marker ~ ~ ~ {\
    Tags:[\
        "candidate"\
    ],\
    Invisible:1b,\
    Marker:1b,\
    NoGravity:1b\
}

execute \
    as @e[type=marker,tag=candidate] \
    run function pve:spawn/zombie/child

scoreboard players remove #summon_zombie recursion_running_count 1
execute \
    unless score #summon_zombie recursion_running_count matches ..0 \
    run function pve:spawn/zombie/spawn