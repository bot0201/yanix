# ========================================
# pve:tick_2_child - PVE 玩家每 2 tick 处理
# 合并原 5 次 as @a 扫描为单次
# ========================================

# 枪型检测 + 副手配件 + 换弹检测
function pve:gun/reload

# PVE 配件菜单 trigger 处理
execute \
    if score @s pve_attach matches 1.. \
    run function pve:gun/attach/handler

# AWM 开镜系统
execute \
    if entity @s[tag=holding_awm] \
    run function pve:gun/awm/scope

# AWM 切枪自动关镜
execute \
    if entity @s[tag=scoping_awm,tag=!holding_awm] \
    run function pve:gun/awm/scope_off

# PVE 冷却递减
function pve:gun/cooldown_tick