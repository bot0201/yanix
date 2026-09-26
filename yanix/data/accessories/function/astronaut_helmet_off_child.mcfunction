scoreboard players set @s astronaut_helmet_off 0

execute \
    as @s \
    unless entity @s[tag=astronaut_helmet_on] \
    run tellraw @s {"text":"你还没有装备宇航员头盔","color":"red"}

execute \
    as @s \
    if entity @s[tag=astronaut_helmet_on] run function accessories:execute/astronaut_helmet_off