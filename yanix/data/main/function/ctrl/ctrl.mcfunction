scoreboard players add #ctrl_per_2_tick time 1

scoreboard players add #ctrl_per_3_tick time 1

execute \
    if score #ctrl_per_2_tick time matches 2 \
    run function main:ctrl/ctrl_per_2_tick_child

execute \
    if score #ctrl_per_3_tick time matches 3 \
    run function main:ctrl/ctrl_per_3_tick_child
    