scoreboard players set @s mysterious_goggles_off 0

execute \
    as @s \
    unless entity @s[tag=mysterious_goggles_on] \
    run tellraw @s {"text":"你还没有装备神秘护目镜","color":"red"}

execute \
    as @s \
    if entity @s[tag=mysterious_goggles_on] run function accessories:execute/mysterious_goggles_off