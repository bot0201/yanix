# 手持 qm 时钟时，在眼前召唤箱子菜单（防抖：附近 8 格内已有 qm 箱子则不重复召唤）
execute \
    as @a \
    at @s \
    if items entity @s weapon.* clock[custom_data~{qm:1}] \
    unless entity @e[type=chest_minecart,tag=qm,limit=1,distance=..8] \
    run function qm:spawn_chest_child
