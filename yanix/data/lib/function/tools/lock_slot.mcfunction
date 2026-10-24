# 此函数需传参：not_dos、goal，id
# not_dos是不要覆盖的物品
# goal是目标复制物品的槽位
# id是防止移动物品的id
scoreboard players set #lock_slot recursion_running_count 53
$function lib:tools/lock_slot/start_recursion {\
    "not_dos":$(not_dos),\
    "goal":$(goal),\
    "id":$(id)\
}
