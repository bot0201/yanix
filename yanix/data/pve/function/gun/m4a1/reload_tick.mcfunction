scoreboard players add @s time 1
execute \
    if score @s time matches 60 \
    unless score @s attach_mag matches 2 \
    run function pve:gun/m4a1/reloaded
execute \
    if score @s time matches 40 \
    if score @s attach_mag matches 2 \
    run function pve:gun/m4a1/reloaded