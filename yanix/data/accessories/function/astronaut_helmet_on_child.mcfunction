scoreboard players set @s astronaut_helmet_on 0

execute \
    as @s \
    unless score @s owns_astronaut_helmet matches 1 \
    run tellraw @s [{"text":"你尚未购买宇航员头盔！","color":"red"},{"text":" 前往饰品商店购买","color":"gray"}]

execute \
    as @s \
    if entity @s[tag=astronaut_helmet_on] \
    run tellraw @s {"text":"你已经装备了宇航员头盔","color":"red"}

# 两个头饰互斥：先卸下护目镜
execute \
    as @s \
    if entity @s[tag=mysterious_goggles_on] \
    run tag @s remove mysterious_goggles_on

execute \
    as @s \
    unless entity @s[tag=astronaut_helmet_on] \
    if score @s owns_astronaut_helmet matches 1 \
    run function accessories:execute/astronaut_helmet_on