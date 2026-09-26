# 为当前玩家赋予 2 个随机配件
# recursion_running_count 初始为 2（发 2 个）

scoreboard players set #give_attach recursion_running_count 2
function pve:hordes/give_attachments_loop