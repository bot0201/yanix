# 副手配件检测 — 右手持枪、左手持配件时自动装配
# @s = 玩家

# ---- 检查主手是否有枪 ----
execute \
    unless entity @s[tag=holding_m4a1] \
    unless entity @s[tag=holding_m1014] \
    unless entity @s[tag=holding_awm] \
    unless entity @s[tag=holding_m2] \
    run return 0

# ---- 清除所有配件 ----
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"all",attach_val:0}] \
    run function pve:gun/attach/clear
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"all",attach_val:0}] \
    run tag @s add attach_consumed

# ---- 瞄准镜 ----
# 卸下 (val=0)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:0}] \
    run scoreboard players set @s attach_scope 0
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:0}] \
    run tag @s add attach_consumed

# 红点 (val=1)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:1}] \
    run scoreboard players set @s attach_scope 1
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:1}] \
    run tag @s add attach_consumed

# 全息 (val=2)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:2}] \
    run scoreboard players set @s attach_scope 2
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:2}] \
    run tag @s add attach_consumed

# 四倍 (val=3)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:3}] \
    run scoreboard players set @s attach_scope 3
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:3}] \
    run tag @s add attach_consumed

# 八倍 (val=4)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:4}] \
    run scoreboard players set @s attach_scope 4
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"scope",attach_val:4}] \
    run tag @s add attach_consumed

# ---- 枪口 ----
# 卸下 (val=0)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"muzzle",attach_val:0}] \
    run scoreboard players set @s attach_muzzle 0
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"muzzle",attach_val:0}] \
    run tag @s add attach_consumed

# 消音器 (val=1)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"muzzle",attach_val:1}] \
    run scoreboard players set @s attach_muzzle 1
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"muzzle",attach_val:1}] \
    run tag @s add attach_consumed

# 补偿器 (val=2)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"muzzle",attach_val:2}] \
    run scoreboard players set @s attach_muzzle 2
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"muzzle",attach_val:2}] \
    run tag @s add attach_consumed

# ---- 握把 ----
# 卸下 (val=0)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"grip",attach_val:0}] \
    run scoreboard players set @s attach_grip 0
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"grip",attach_val:0}] \
    run tag @s add attach_consumed

# 垂直 (val=1)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"grip",attach_val:1}] \
    run scoreboard players set @s attach_grip 1
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"grip",attach_val:1}] \
    run tag @s add attach_consumed

# 三角 (val=2)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"grip",attach_val:2}] \
    run scoreboard players set @s attach_grip 2
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"grip",attach_val:2}] \
    run tag @s add attach_consumed

# ---- 弹匣 ----
# 卸下 (val=0)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"mag",attach_val:0}] \
    run scoreboard players set @s attach_mag 0
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"mag",attach_val:0}] \
    run tag @s add attach_consumed

# 扩容 (val=1)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"mag",attach_val:1}] \
    run scoreboard players set @s attach_mag 1
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"mag",attach_val:1}] \
    run tag @s add attach_consumed

# 快速 (val=2)
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"mag",attach_val:2}] \
    run scoreboard players set @s attach_mag 2
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"mag",attach_val:2}] \
    run tag @s add attach_consumed

# ---- 写入枪械NBT ----
execute \
    if entity @s[tag=attach_consumed] \
    run function pve:gun/attach/sync_to_item

# ---- 提示并消耗副手物品 ----
execute \
    if entity @s[tag=attach_consumed] \
    run tellraw @s {"text":"配件已装配！","color":"green"}

execute \
    if entity @s[tag=attach_consumed] \
    run item replace entity @s weapon.offhand with air

# ---- 清理标记 ----
tag @s remove attach_consumed