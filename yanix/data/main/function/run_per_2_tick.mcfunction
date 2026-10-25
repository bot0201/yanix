# ========================================
# run_per_2_tick - 每 2 tick 执行 (0.1s)
# 放置不需要每 tick 的常规逻辑
# 以下逻辑已拆分至子文件以便维护
# ========================================

# PVE 模块全部逻辑（无 PVE 玩家时跳过）
execute \
    if entity @a[tag=gaming_pve] \
    run function pve:tick_2

# 职业技能处理
function job:tick

# 职业技能击杀成就检查（有玩家在 kitbattle 时才执行）
execute \
    in minecraft:kitbattle \
    if entity @a[limit=1] \
    run function job:advancement/reward/check_kills

# 饰品 trigger 处理
function accessories:trigger_handler

# 模拟经营卖矿 trigger 处理
function mining_adventure:sell/trigger_handler

# ========================================
# 对话框请求处理 (server 身份, /dialog 需要权限)
# ========================================
function pve:gun/attach/menu
function pve:gun/attach/menu_scope
function pve:gun/attach/menu_muzzle
function pve:gun/attach/menu_grip
function pve:gun/attach/menu_mag
function pve:gun/attach/list
function accessories:shop/dialog
function mining_adventure:power/dialog
function mining_adventure:house/dialog
function mining_adventure:sell/dialog