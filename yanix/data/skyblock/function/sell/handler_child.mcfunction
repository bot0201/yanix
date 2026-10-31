# 选择游戏模式
execute \
    if score @s skyblock_mode matches 1 \
    run function skyblock:mode/select_singleplayer
execute \
    if score @s skyblock_mode matches 1 \
    run scoreboard players set @s skyblock_mode 0
execute \
    if score @s skyblock_mode matches 2 \
    run function skyblock:mode/select_multiplayer
execute \
    if score @s skyblock_mode matches 2 \
    run scoreboard players set @s skyblock_mode 0

# 出售手中物品
execute \
    if score @s skyblock_sell matches 1.. \
    run function skyblock:sell/hand
execute \
    if score @s skyblock_sell matches 1.. \
    run scoreboard players set @s skyblock_sell 0

# 兑换王国币
execute \
    if score @s skyblock_exchange matches 1.. \
    run function skyblock:kingdom/exchange
execute \
    if score @s skyblock_exchange matches 1.. \
    run scoreboard players set @s skyblock_exchange 0

# 建国
execute \
    if score @s skyblock_found matches 1.. \
    run function skyblock:kingdom/found
execute \
    if score @s skyblock_found matches 1.. \
    run scoreboard players set @s skyblock_found 0

# 扩张领土
execute \
    if score @s skyblock_expand matches 1.. \
    run function skyblock:kingdom/expand
execute \
    if score @s skyblock_expand matches 1.. \
    run scoreboard players set @s skyblock_expand 0