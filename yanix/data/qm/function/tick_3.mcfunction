# ========================================
# sbm:tick_3 - 箱子菜单系统
# ========================================

# 饰品商店箱子菜单刷新（静态内容，低频刷新即可）
execute \
    if dimension minecraft:overworld \
    run function accessories:shop/refresh

# 清理玩家背包中被拿取的箱子菜单物品 (menu:1)
execute \
    if dimension minecraft:overworld \
    positioned -10 69 -9 \
    as @a[distance=..8] \
    run clear @s *[custom_data~{menu:1}]