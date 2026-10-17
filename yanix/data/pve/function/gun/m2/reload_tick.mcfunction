scoreboard players add @s time 1
execute \
    if score @s time matches 140 \
    unless score @s attach_mag matches 2 \
    run function pve:gun/m2/reloaded
execute \
    if score @s time matches 100 \
    if score @s attach_mag matches 2 \
    run function pve:gun/m2/reloaded