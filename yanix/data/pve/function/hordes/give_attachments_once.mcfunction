# 随机选择一个配件类型并赋予随机等级
execute \
    store result score #pve random \
    run random value 1..4

# 1 = 瞄准镜
execute \
    if score #pve random matches 1 \
    run function pve:hordes/give_scope

# 2 = 枪口
execute \
    if score #pve random matches 2 \
    run function pve:hordes/give_muzzle

# 3 = 握把
execute \
    if score #pve random matches 3 \
    run function pve:hordes/give_grip

# 4 = 弹匣
execute \
    if score #pve random matches 4 \
    run function pve:hordes/give_magazine