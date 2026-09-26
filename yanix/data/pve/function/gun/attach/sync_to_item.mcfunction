# 将配件分数写入手持枪械NBT
# @s = 持有枪械的玩家

# 确保 attach 结构存在（不存在则创建）
execute \
    unless data entity @s SelectedItem.components."minecraft:custom_data".attach \
    run data modify entity @s SelectedItem.components."minecraft:custom_data" \
    merge value {attach:{scope:0,muzzle:0,grip:0,mag:0}}

# 写入各配件槽
execute \
    store result entity @s SelectedItem.components."minecraft:custom_data".attach.scope int 1 \
    run scoreboard players get @s attach_scope
execute \
    store result entity @s SelectedItem.components."minecraft:custom_data".attach.muzzle int 1 \
    run scoreboard players get @s attach_muzzle
execute \
    store result entity @s SelectedItem.components."minecraft:custom_data".attach.grip int 1 \
    run scoreboard players get @s attach_grip
execute \
    store result entity @s SelectedItem.components."minecraft:custom_data".attach.mag int 1 \
    run scoreboard players get @s attach_mag