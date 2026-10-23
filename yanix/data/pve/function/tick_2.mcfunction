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

# PVE 怪物召唤
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:summon

# PVE 时间计数
execute \
    if entity @a[tag=gaming_pve] \
    run scoreboard players add #pve time 1

# PVE 波次推进
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:horde_going

# Boss 死亡检测
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:boss/death_check

# PVE 累计击杀成就检查
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:advancement/check_zombie_kills