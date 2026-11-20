# ========================================
# qm:tick_3 - 箱子菜单系统
# ========================================

# 饰品商店固定箱子菜单刷新（静态内容，低频刷新即可）
execute \
    if dimension minecraft:overworld \
    run function accessories:shop/refresh