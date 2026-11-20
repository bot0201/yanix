# ========================================
# qm:tick - 每 tick 执行
# 手持 qm 时钟召唤/回收移动箱子菜单
# ========================================

# 标记当前手持 qm 时钟的玩家（供回收判断使用）
tag @a remove qm_holder
execute \
    as @a \
    if items entity @s weapon.* clock[custom_data={"qm":1}] \
    run tag @s add qm_holder

# 手持 qm 时钟且附近无 qm 箱子时，在眼前召唤箱子矿车
function qm:spawn_chest

# 回收：附近 8 格内无 qm 时钟持有者则销毁箱子矿车
execute \
    as @e[type=chest_minecart,tag=qm] \
    at @s \
    unless entity @a[distance=..8,tag=qm_holder] \
    run kill @s