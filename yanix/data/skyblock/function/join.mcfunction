scoreboard players set @s skyblock_join 0
tag @s add gaming_skyblock

# 已选过单人模式 → 直接回岛
execute \
    if entity @s[tag=skyblock_single] \
    run function skyblock:island/singleplayer/tp_simple
execute \
    if entity @s[tag=skyblock_single] \
    run return 0

# 已选过多人模式 → 直接回岛
execute \
    if entity @s[tag=skyblock_multi] \
    in skyblock:skyblock_multiplayer \
    run function skyblock:island/return_to_island
execute \
    if entity @s[tag=skyblock_multi] \
    run return 0

# 首次加入 → 弹出模式选择对话框
tag @s add request_skyblock_mode