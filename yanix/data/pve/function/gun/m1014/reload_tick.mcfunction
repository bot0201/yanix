scoreboard players add @s time 1
# 第一发（无快拔）
execute \
    unless entity @s[tag=m1014_reload_cycle] \
    if score @s time matches 10.. \
    unless score @s attach_mag matches 2 \
    run function pve:gun/m1014/reload_one_shell
# 第一发（快拔）
execute \
    unless entity @s[tag=m1014_reload_cycle] \
    if score @s time matches 7.. \
    if score @s attach_mag matches 2 \
    run function pve:gun/m1014/reload_one_shell
# 后续（无快拔）
execute \
    if entity @s[tag=m1014_reload_cycle] \
    if score @s time matches 6.. \
    unless score @s attach_mag matches 2 \
    run function pve:gun/m1014/reload_one_shell
# 后续（快拔）
execute \
    if entity @s[tag=m1014_reload_cycle] \
    if score @s time matches 4.. \
    if score @s attach_mag matches 2 \
    run function pve:gun/m1014/reload_one_shell