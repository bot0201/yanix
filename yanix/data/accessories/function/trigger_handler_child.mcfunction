execute \
    if score @s astronaut_helmet_on matches 1.. \
    run function accessories:astronaut_helmet_on_child
execute \
    if score @s astronaut_helmet_off matches 1.. \
    run function accessories:astronaut_helmet_off_child
execute \
    if score @s mysterious_goggles_on matches 1.. \
    run function accessories:mysterious_goggles_on_child
execute \
    if score @s mysterious_goggles_off matches 1.. \
    run function accessories:mysterious_goggles_off_child

# 对话框购买触发器
execute \
    if score @s buy_astronaut_helmet matches 1.. \
    run function accessories:shop/buy_astronaut_helmet
execute \
    if score @s buy_mysterious_goggles matches 1.. \
    run function accessories:shop/buy_mysterious_goggles