# 处理加入触发
execute \
    as @a[scores={skyblock_join=1..}] \
    run function skyblock:join

# 出售 / 兑换 / 建国 / 扩张 trigger
function skyblock:sell/handler

# 虚空保护 - 单人模式
execute \
    as @a[tag=skyblock_single] \
    at @s \
    if predicate skyblock:void \
    run function skyblock:island/singleplayer/tp_simple

# 虚空保护 - 多人模式
execute \
    as @a[tag=skyblock_multi] \
    at @s \
    if predicate skyblock:void \
    in skyblock:skyblock_multiplayer \
    run function skyblock:island/return_to_island

# 核心保护检查 - 多人模式
execute \
    as @a[tag=skyblock_multi] \
    run function skyblock:kingdom/core/tick