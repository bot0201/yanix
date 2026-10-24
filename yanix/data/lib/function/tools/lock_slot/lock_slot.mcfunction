# 实现方式:
#   如果：这个槽位应被覆盖
#   作为所有人执行以下代码：
#       如果我的这个槽位是应覆盖的物品
#       我就把这个玩意替换成目标物品

$execute \
    unless score #lock_slot tmp matches $(not_dos) \
    as @a \
    if items entity @s container.$(recursion) $(id) \
    run item replace entity @s container.$(recursion) from entity @s hotbar.$(goal)