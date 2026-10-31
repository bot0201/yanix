execute \
    store result storage const_rec const_rec.n int 1 \
    run scoreboard players get #const recursion_running_count
function lib:const/const_rec with storage const_rec const_rec
scoreboard players remove #const recursion_running_count 1
scoreboard players remove #const recursion_batch_count 1
execute \
    if score #const recursion_batch_count matches ..0 \
    run schedule function lib:const/func_cmd_negative_batch 1t
execute \
    unless score #const recursion_batch_count matches ..0 \
    unless score #const recursion_running_count < #-2147483648 const \
    run function lib:const/func_cmd_negative