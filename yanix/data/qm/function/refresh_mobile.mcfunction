# ========================================
# qm:refresh_mobile - 移动箱子菜单刷新分发
# 遍历所有 qm 箱子矿车，按箱子标签分发到对应模块的填充逻辑
# ========================================
execute \
    as @e[type=chest_minecart,tag=qm] \
    at @s \
    run function qm:refresh_mobile_child
