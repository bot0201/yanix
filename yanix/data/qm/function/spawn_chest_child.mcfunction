# ========================================
# qm:spawn_chest_child - 按时钟携带的菜单类型标记召唤对应箱子菜单
# 需 as 持有 qm 时钟的玩家并 at @s 执行
# ========================================
execute \
    if items entity @s weapon.* clock[custom_data~{menu:"accessories"}] \
    anchored eyes \
    run summon chest_minecart ^ ^ ^ {Tags:["qm","qm_accessories"]}
