# 递归发放随机配件（剩余次数存于 #give_attach）
scoreboard players remove #give_attach recursion_running_count 1
execute \
    unless score #give_attach recursion_running_count matches ..-1 \
    run function pve:hordes/give_attachments_once

execute \
    unless score #give_attach recursion_running_count matches ..-1 \
    run function pve:hordes/give_attachments_loop