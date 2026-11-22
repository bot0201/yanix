# 全量 debug
execute \
    if score @s a_debug matches 1.. \
    run function lib:tools/debug/toggle {tag:"a_debug"}
execute \
    if score @s a_debug matches 1.. \
    run scoreboard players set @s a_debug 0

# 饰品
execute \
    if score @s d_debug_acc matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_acc"}
execute \
    if score @s d_debug_acc matches 1.. \
    run scoreboard players set @s d_debug_acc 0

# 职业战争
execute \
    if score @s d_debug_job matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_job"}
execute \
    if score @s d_debug_job matches 1.. \
    run scoreboard players set @s d_debug_job 0

# 模拟经营
execute \
    if score @s d_debug_sim matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_sim"}
execute \
    if score @s d_debug_sim matches 1.. \
    run scoreboard players set @s d_debug_sim 0

# PVE
execute \
    if score @s d_debug_pve matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_pve"}
execute \
    if score @s d_debug_pve matches 1.. \
    run scoreboard players set @s d_debug_pve 0

# 快捷菜单
execute \
    if score @s d_debug_qm matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_qm"}
execute \
    if score @s d_debug_qm matches 1.. \
    run scoreboard players set @s d_debug_qm 0

# 空岛生存
execute \
    if score @s d_debug_sky matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_sky"}
execute \
    if score @s d_debug_sky matches 1.. \
    run scoreboard players set @s d_debug_sky 0

# 空岛生存 - 单人
execute \
    if score @s d_debug_sky_single matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_sky_single"}
execute \
    if score @s d_debug_sky_single matches 1.. \
    run scoreboard players set @s d_debug_sky_single 0

# 空岛生存 - 多人
execute \
    if score @s d_debug_sky_multi matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_sky_multi"}
execute \
    if score @s d_debug_sky_multi matches 1.. \
    run scoreboard players set @s d_debug_sky_multi 0

# 底层
execute \
    if score @s d_debug_core matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_core"}
execute \
    if score @s d_debug_core matches 1.. \
    run scoreboard players set @s d_debug_core 0

# 库
execute \
    if score @s d_debug_lib matches 1.. \
    run function lib:tools/debug/toggle {tag:"d_debug_lib"}
execute \
    if score @s d_debug_lib matches 1.. \
    run scoreboard players set @s d_debug_lib 0
