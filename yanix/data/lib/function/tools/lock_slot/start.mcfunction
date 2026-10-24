# 存一下目前的参数用于传宏参数
execute \
    store result storage lock_slot recursion int 1 \
    run scoreboard players get #lock_slot recursion_running_count
$data modify storage lock_slot goal set value $(goal)
$scoreboard players set #lock_slot tmp $(not_dos)

## 以下为此文件的主要代码，虽然只有几行
function lib:tools/lock_slot/lock_slot with storage lock_slot recursion,goal
scoreboard players remove #lock_slot recursion_running_count 1

# 调用自身，并将宏传递下去
$execute \
    unless score #lock_slot recursion_running_count matches ..0 \
    run function lib:tools/lock_slot/start_recursion {\
        "goal":$(goal),\
        "not_dos":$(not_dos),\
        "id":$(id)\
    }