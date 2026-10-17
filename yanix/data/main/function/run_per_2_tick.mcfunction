# ========================================
# run_per_2_tick - 每 2 tick 执行 (0.1s)
# 放置不需要每 tick 的常规逻辑
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

# PVE 凉却递减（合并且移入子函数）
execute \
    as @a[tag=gaming_pve] \
    run function pve:gun/cooldown_tick

# PVE 换弹计时（合并且移入子函数）
execute \
    as @a[tag=reloading_m4a1] \
    run function pve:gun/m4a1/reload_tick
execute \
    as @a[tag=reloading_m1014] \
    run function pve:gun/m1014/reload_tick
execute \
    as @a[tag=reloading_awm] \
    run function pve:gun/awm/reload_tick
execute \
    as @a[tag=reloading_m2] \
    run function pve:gun/m2/reload_tick

# PVE 怪物召唤（不需要每 tick 检查）
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:summon

# PVE 时间计数（保持精确计时）
execute \
    if entity @a[tag=gaming_pve] \
    run scoreboard players add #pve time 1

function pve:horde_going

# Boss 死亡检测
function pve:boss/death_check

# 职业技能处理
function job:main/tick

# PVE 累计击杀成就检查
function pve:advancement/check_zombie_kills

# 饰品 trigger 处理
function accessories:trigger_handler

# 饰品持续效果
execute as @a[tag=gaming_pve] run function accessories:effect_loop