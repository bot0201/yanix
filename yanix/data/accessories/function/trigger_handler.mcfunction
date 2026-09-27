# 启用所有 trigger
scoreboard players enable @a astronaut_helmet_on
scoreboard players enable @a astronaut_helmet_off
scoreboard players enable @a mysterious_goggles_on
scoreboard players enable @a mysterious_goggles_off
scoreboard players enable @a buy_astronaut_helmet
scoreboard players enable @a buy_mysterious_goggles

execute \
    as @a \
    if score @s astronaut_helmet_on matches 1.. \
    run function accessories:astronaut_helmet_on_child
execute \
    as @a \
    if score @s astronaut_helmet_off matches 1.. \
    run function accessories:astronaut_helmet_off_child
execute \
    as @a \
    if score @s mysterious_goggles_on matches 1.. \
    run function accessories:mysterious_goggles_on_child
execute \
    as @a \
    if score @s mysterious_goggles_off matches 1.. \
    run function accessories:mysterious_goggles_off_child

# 对话框购买触发器
execute \
    as @a \
    if score @s buy_astronaut_helmet matches 1.. \
    run function accessories:shop/buy_astronaut_helmet
execute \
    as @a \
    if score @s buy_mysterious_goggles matches 1.. \
    run function accessories:shop/buy_mysterious_goggles