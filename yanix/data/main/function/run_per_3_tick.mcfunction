# ========================================
# run_per_3_tick - 每 3 tick 执行 (0.15s)
# 放置低频逻辑
# ========================================

# 箱子菜单刷新（静态内容，低频刷新即可）
execute \
    if dimension minecraft:overworld \
    run function chest_menu:-9_69_-9

# 成就授予
function job:main/give_advancement