# pve_attach trigger 处理器
# @s = 触发玩家

# ---- 打开主菜单 ----
execute \
    if score @s pve_attach matches 100 \
    run function pve:gun/attach/menu

# ---- 瞄准镜 ----
execute \
    if score @s pve_attach matches 101 \
    run function pve:gun/attach/menu_scope

execute \
    if score @s pve_attach matches 110 \
    run scoreboard players set @s attach_scope 0
execute \
    if score @s pve_attach matches 111 \
    run scoreboard players set @s attach_scope 1
execute \
    if score @s pve_attach matches 112 \
    run scoreboard players set @s attach_scope 2
execute \
    if score @s pve_attach matches 113 \
    run scoreboard players set @s attach_scope 3
execute \
    if score @s pve_attach matches 114 \
    run scoreboard players set @s attach_scope 4

# ---- 枪口 ----
execute \
    if score @s pve_attach matches 201 \
    run function pve:gun/attach/menu_muzzle

execute \
    if score @s pve_attach matches 220 \
    run scoreboard players set @s attach_muzzle 0
execute \
    if score @s pve_attach matches 221 \
    run scoreboard players set @s attach_muzzle 1
execute \
    if score @s pve_attach matches 222 \
    run scoreboard players set @s attach_muzzle 2

# ---- 握把 ----
execute \
    if score @s pve_attach matches 301 \
    run function pve:gun/attach/menu_grip

execute \
    if score @s pve_attach matches 330 \
    run scoreboard players set @s attach_grip 0
execute \
    if score @s pve_attach matches 331 \
    run scoreboard players set @s attach_grip 1
execute \
    if score @s pve_attach matches 332 \
    run scoreboard players set @s attach_grip 2

# ---- 弹匣 ----
execute \
    if score @s pve_attach matches 401 \
    run function pve:gun/attach/menu_mag

execute \
    if score @s pve_attach matches 440 \
    run scoreboard players set @s attach_mag 0
execute \
    if score @s pve_attach matches 441 \
    run scoreboard players set @s attach_mag 1
execute \
    if score @s pve_attach matches 442 \
    run scoreboard players set @s attach_mag 2

# ---- 查看 ----
execute \
    if score @s pve_attach matches 800 \
    run function pve:gun/attach/list

# ---- 卸下全部 ----
execute \
    if score @s pve_attach matches 900 \
    run function pve:gun/attach/clear

# ---- 应用配件到枪械 ----
execute \
    if score @s pve_attach matches 110..114 \
    run function pve:gun/attach/sync_to_item
execute \
    if score @s pve_attach matches 220..222 \
    run function pve:gun/attach/sync_to_item
execute \
    if score @s pve_attach matches 330..332 \
    run function pve:gun/attach/sync_to_item
execute \
    if score @s pve_attach matches 440..442 \
    run function pve:gun/attach/sync_to_item
execute \
    if score @s pve_attach matches 900 \
    run function pve:gun/attach/sync_to_item

# 显示确认信息
execute \
    if score @s pve_attach matches 110..114 \
    run tellraw @s {"text":"配件已更新！","color":"green"}
execute \
    if score @s pve_attach matches 220..222 \
    run tellraw @s {"text":"配件已更新！","color":"green"}
execute \
    if score @s pve_attach matches 330..332 \
    run tellraw @s {"text":"配件已更新！","color":"green"}
execute \
    if score @s pve_attach matches 440..442 \
    run tellraw @s {"text":"配件已更新！","color":"green"}
execute \
    if score @s pve_attach matches 900 \
    run tellraw @s {"text":"全部配件已卸下！","color":"green"}

# 重置 trigger
scoreboard players set @s pve_attach 0