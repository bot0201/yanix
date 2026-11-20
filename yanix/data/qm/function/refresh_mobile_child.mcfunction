# ========================================
# qm:refresh_mobile_child - 按箱子标签分发到对应模块
# 需 as 箱子矿车实体并 at @s 执行
# ========================================
execute \
    if entity @s[tag=qm_accessories] \
    run function accessories:shop/refresh_mobile_child