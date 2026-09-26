scoreboard players set @s mysterious_goggles_on 0

execute \
    as @s \
    if entity @s[tag=mysterious_goggles_on] \
    run tellraw @s {"text":"你已经装备了神秘护目镜","color":"red"}

# 两个头饰互斥：先卸下头盔
execute \
    as @s \
    if entity @s[tag=astronaut_helmet_on] \
    run tag @s remove astronaut_helmet_on

execute \
    as @s \
    unless entity @s[tag=mysterious_goggles_on] \
    run function accessories:execute/mysterious_goggles_on