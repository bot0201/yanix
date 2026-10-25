# 处理加入触发
execute \
    as @a[scores={skyblock_join=1..}] \
    run function skyblock:join

# 虚空保护 - 落入虚空时传送回岛屿
execute \
    as @a[tag=gaming_skyblock] \
    at @s \
    if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"location":{"position":{"y":{"max":-10}}}}} \
    in skyblock:skyblock \
    run function skyblock:island/return_to_island