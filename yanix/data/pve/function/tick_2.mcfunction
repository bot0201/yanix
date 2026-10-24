# ========================================
# pve:tick_2 - PVE 每 2 tick 逻辑
# ========================================

# PVE 玩家统一处理（合并 5 次 as @a 为单次扫描）
execute \
    as @a[tag=gaming_pve] \
    run function pve:tick_2_child

# PVE 换弹计时（全部玩家，由 dispatcher 内部分发）
execute \
    as @a \
    run function pve:gun/reload_tick_dispatcher

# PVE 世界级逻辑（合并 5 次 if entity 为单次）
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:tick_2_pve_logic