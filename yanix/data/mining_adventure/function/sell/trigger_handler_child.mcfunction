# 打开卖矿对话框
execute \
    if score @s sell_ores matches 1.. \
    run function mining_adventure:sell/dialog
execute \
    if score @s sell_ores matches 1.. \
    run scoreboard players set @s sell_ores 0

# 出售煤炭
execute \
    if score @s sell_coal matches 1.. \
    run function mining_adventure:sell/sell_coal
execute \
    if score @s sell_coal matches 1.. \
    run scoreboard players set @s sell_coal 0

# 出售粗铁
execute \
    if score @s sell_iron matches 1.. \
    run function mining_adventure:sell/sell_iron
execute \
    if score @s sell_iron matches 1.. \
    run scoreboard players set @s sell_iron 0

# 出售粗金
execute \
    if score @s sell_gold matches 1.. \
    run function mining_adventure:sell/sell_gold
execute \
    if score @s sell_gold matches 1.. \
    run scoreboard players set @s sell_gold 0

# 出售钻石
execute \
    if score @s sell_diamond matches 1.. \
    run function mining_adventure:sell/sell_diamond
execute \
    if score @s sell_diamond matches 1.. \
    run scoreboard players set @s sell_diamond 0

# 开始房屋位置预览（射线检测 + 粒子框）
execute \
    if score @s house matches 1.. \
    run function mining_adventure:house/start_preview
execute \
    if score @s house matches 1.. \
    run scoreboard players set @s house 0

# 确认房屋建造位置
execute \
    if score @s house_place matches 1.. \
    run function mining_adventure:house/confirm_position
execute \
    if score @s house_place matches 1.. \
    run scoreboard players set @s house_place 0

# 确认购买房屋
execute \
    if score @s house_buy matches 1.. \
    run function mining_adventure:build/default_house/build
execute \
    if score @s house_buy matches 1.. \
    run scoreboard players set @s house_buy 0