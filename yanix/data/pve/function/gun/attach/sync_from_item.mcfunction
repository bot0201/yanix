# 从手持枪械NBT同步配件数据到玩家分数
# @s = 持有枪械的玩家

# 先归零
scoreboard players set @s attach_scope 0
scoreboard players set @s attach_muzzle 0
scoreboard players set @s attach_grip 0
scoreboard players set @s attach_mag 0

# 尝试读取各配件槽
execute \
    store result score @s attach_scope \
    run data get entity @s SelectedItem.components."minecraft:custom_data".attach.scope
execute \
    store result score @s attach_muzzle \
    run data get entity @s SelectedItem.components."minecraft:custom_data".attach.muzzle
execute \
    store result score @s attach_grip \
    run data get entity @s SelectedItem.components."minecraft:custom_data".attach.grip
execute \
    store result score @s attach_mag \
    run data get entity @s SelectedItem.components."minecraft:custom_data".attach.mag