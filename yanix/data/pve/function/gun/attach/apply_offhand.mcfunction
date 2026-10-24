# 副手配件检测 — 右手持枪、左手持配件时自动装配
# @s = 玩家

# 检查主手是否有枪
execute \
    unless entity @s[tag=holding_m4a1] \
    unless entity @s[tag=holding_m1014] \
    unless entity @s[tag=holding_awm] \
    unless entity @s[tag=holding_m2] \
    run return 0

# 清除所有配件
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"all",attach_val:0}] \
    run function pve:gun/attach/clear
execute \
    if items entity @s weapon.offhand *[minecraft:custom_data~{attach_slot:"all",attach_val:0}] \
    run tag @s add attach_consumed

# 瞄准镜 (val: 0=卸下, 1=红点, 2=全息, 3=四倍, 4=八倍)
function pve:gun/attach/_apply_slot {slot:"scope", val:0}
function pve:gun/attach/_apply_slot {slot:"scope", val:1}
function pve:gun/attach/_apply_slot {slot:"scope", val:2}
function pve:gun/attach/_apply_slot {slot:"scope", val:3}
function pve:gun/attach/_apply_slot {slot:"scope", val:4}

# 枪口 (val: 0=卸下, 1=消音器, 2=补偿器)
function pve:gun/attach/_apply_slot {slot:"muzzle", val:0}
function pve:gun/attach/_apply_slot {slot:"muzzle", val:1}
function pve:gun/attach/_apply_slot {slot:"muzzle", val:2}

# 握把 (val: 0=卸下, 1=垂直, 2=三角)
function pve:gun/attach/_apply_slot {slot:"grip", val:0}
function pve:gun/attach/_apply_slot {slot:"grip", val:1}
function pve:gun/attach/_apply_slot {slot:"grip", val:2}

# 弹匣 (val: 0=卸下, 1=扩容, 2=快速)
function pve:gun/attach/_apply_slot {slot:"mag", val:0}
function pve:gun/attach/_apply_slot {slot:"mag", val:1}
function pve:gun/attach/_apply_slot {slot:"mag", val:2}

# 写入枪械NBT
execute \
    if entity @s[tag=attach_consumed] \
    run function pve:gun/attach/sync_to_item

# 提示并消耗副手物品
execute \
    if entity @s[tag=attach_consumed] \
    run tellraw @s {"text":"配件已装配！","color":"green"}

execute \
    if entity @s[tag=attach_consumed] \
    run item replace entity @s weapon.offhand with air

# 清理标记
tag @s remove attach_consumed