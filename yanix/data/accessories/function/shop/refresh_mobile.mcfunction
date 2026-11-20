# ========================================
# 饰品商店 - 移动箱子菜单刷新 (qm 箱子矿车)
# 每 3 tick 刷新箱子矿车内容
# ========================================
execute \
    as @e[type=chest_minecart,tag=qm] \
    at @s \
    run function accessories:shop/refresh_mobile_child