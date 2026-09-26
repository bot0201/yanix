execute \
    as @e[type=minecraft:snowball,limit=1,sort=nearest] \
    at @s \
    as @p \
    at @s \
    run function sbm:player/open

kill @e[type=minecraft:snowball]