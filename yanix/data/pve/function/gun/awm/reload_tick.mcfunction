scoreboard players add @s time 1
execute \
    if score @s time matches 80 \
    unless score @s attach_mag matches 2 \
    run function pve:gun/awm/reloaded
execute \
    if score @s time matches 55 \
    if score @s attach_mag matches 2 \
    run function pve:gun/awm/reloaded