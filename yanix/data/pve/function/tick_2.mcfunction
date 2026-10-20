# ========================================
# pve:tick_2 - PVE 每 2 tick 逻辑
# ========================================

# PVE 换弹检测（副手检查）
execute \
    as @a[tag=gaming_pve] \
    run function pve:gun/reload

# PVE 配件菜单 trigger 处理
execute \
    as @a[tag=gaming_pve,scores={pve_attach=1..}] \
    run function pve:gun/attach/handler

# AWM 开镜系统
execute \
    as @a[tag=gaming_pve,tag=holding_awm] \
    run function pve:gun/awm/scope

# AWM 切枪自动关镜
execute \
    as @a[tag=gaming_pve,tag=scoping_awm,tag=!holding_awm] \
    run function pve:gun/awm/scope_off

# PVE 凉却递减
execute \
    as @a[tag=gaming_pve] \
    run function pve:gun/cooldown_tick

# PVE 换弹计时（合并一次 as @a 遍历，由 dispatcher 内部分发）
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

function pve:horde_going

# Boss 死亡检测
function pve:boss/death_check

# PVE 累计击杀成就检查
function pve:advancement/check_zombie_kills

# 饰品持续效果
execute \
    as @a[tag=gaming_pve] \
    run function accessories:effect_loop