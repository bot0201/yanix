execute \
    on passengers \
    on vehicle \
    run tag @s add have_player
execute \
    unless entity @s[tag=have_player] \
    at @s \
    run function sbm:menu/clear
tag @s remove have_player