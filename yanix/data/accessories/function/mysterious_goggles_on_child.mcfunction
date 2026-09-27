scoreboard players set @s mysterious_goggles_on 0

execute \
    as @s \
    unless score @s owns_mysterious_goggles matches 1 \
    run tellraw @s [{"text":"你尚未购买神秘眼镜！","color":"red"},{"text":" 前往饰品商店购买","color":"gray"}]

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
    if score @s owns_mysterious_goggles matches 1 \
    run function accessories:execute/mysterious_goggles_on