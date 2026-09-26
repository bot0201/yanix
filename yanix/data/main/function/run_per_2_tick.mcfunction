# ========================================
# run_per_2_tick - 每 2 tick 执行 (0.1s)
# 放置不需要每 tick 的常规逻辑
# ========================================

# PVE 换弹检测（副手检查）
function pve:gun/reload

# PVE 配件菜单 trigger 处理
execute as @a[scores={pve_attach=1..}] run function pve:gun/attach/handler

# AWM 开镜系统
execute as @a[tag=holding_awm] run function pve:gun/awm/scope

# AWM 切枪自动关镜
execute as @a[tag=scoping_awm,tag=!holding_awm] run function pve:gun/awm/scope_off

# AWM 栓动冷却递减
execute \
    as @a[tag=gaming_pve] \
    unless score @s awm_cooldown matches 0 \
    run scoreboard players remove @s awm_cooldown 1

# M2 射速冷却递减
execute \
    as @a[tag=gaming_pve] \
    unless score @s m2_cooldown matches 0 \
    run scoreboard players remove @s m2_cooldown 1

# PVE 换弹计时
execute \
    as @a[tag=reloading_m4a1] \
    run scoreboard players add @s time 1
execute \
    as @a[tag=reloading_m4a1] \
    if score @s time matches 60 \
    unless score @s attach_mag matches 2 \
    run function pve:gun/m4a1/reloaded
execute \
    as @a[tag=reloading_m4a1] \
    if score @s time matches 40 \
    if score @s attach_mag matches 2 \
    run function pve:gun/m4a1/reloaded

# PVE 换弹计时（M1014）
execute \
    as @a[tag=reloading_m1014] \
    run scoreboard players add @s time 1
execute \
    as @a[tag=reloading_m1014] \
    if score @s time matches 40 \
    unless score @s attach_mag matches 2 \
    run function pve:gun/m1014/reloaded
execute \
    as @a[tag=reloading_m1014] \
    if score @s time matches 28 \
    if score @s attach_mag matches 2 \
    run function pve:gun/m1014/reloaded

# PVE 换弹计时（AWM）
execute \
    as @a[tag=reloading_awm] \
    run scoreboard players add @s time 1
execute \
    as @a[tag=reloading_awm] \
    if score @s time matches 80 \
    unless score @s attach_mag matches 2 \
    run function pve:gun/awm/reloaded
execute \
    as @a[tag=reloading_awm] \
    if score @s time matches 55 \
    if score @s attach_mag matches 2 \
    run function pve:gun/awm/reloaded

# PVE 换弹计时（M2 勃朗宁）
execute \
    as @a[tag=reloading_m2] \
    run scoreboard players add @s time 1
execute \
    as @a[tag=reloading_m2] \
    if score @s time matches 140 \
    unless score @s attach_mag matches 2 \
    run function pve:gun/m2/reloaded
execute \
    as @a[tag=reloading_m2] \
    if score @s time matches 100 \
    if score @s attach_mag matches 2 \
    run function pve:gun/m2/reloaded

# PVE 怪物召唤（不需要每 tick 检查）
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:summon

# PVE 时间计数（保持精确计时）
execute \
    if entity @a[tag=gaming_pve] \
    run scoreboard players add #pve time 1

# PVE 波次推进
execute \
    if entity @a[tag=gaming_pve] \
    if score #pve time matches 0..600 \
    unless score #pve horde matches 1.. \
    run scoreboard players add #pve horde 1

# 职业技能处理
function job:main/tick

# 饰品 trigger 处理
function accessories:trigger_handler

# 饰品持续效果
execute as @a[tag=gaming_pve] run function accessories:effect_loop