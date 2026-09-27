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

# 成就授予
function job:main/give_advancement