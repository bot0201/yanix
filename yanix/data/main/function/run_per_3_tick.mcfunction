# ========================================
# run_per_3_tick - 每 3 tick 执行 (0.15s)
# 放置低频逻辑
# ========================================

# 饰品商店箱子菜单刷新（静态内容，低频刷新即可）
execute \
    if dimension minecraft:overworld \
    run function accessories:shop/refresh

# SBM 箱子菜单刷新
execute \
    if dimension minecraft:overworld \
    run function sbm:chest/refresh

# SBM 箱子菜单 - 点击检测
function sbm:chest/scan

# 清理玩家背包中被拿取的箱子菜单物品 (menu:1)
execute \
    if dimension minecraft:overworld \
    positioned -10 69 -9 \
    as @a[distance=..8] \
    run clear @s *[custom_data~{menu:1}]

# 成就授予
function job:main/give_advancement

# 玩家在线时间
function main:online_time/online_time