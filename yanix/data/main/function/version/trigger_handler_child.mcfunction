execute \
    if score @s version matches 1.. \
    run function main:version/query
execute \
    if score @s version matches 1.. \
    run scoreboard players set @s version 0