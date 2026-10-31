scoreboard players set #const recursion_batch_count 10000
execute \
    unless score #const recursion_running_count matches ..0 \
    run function lib:const/func_cmd
execute \
    if score #const recursion_running_count matches 0 \
    run function lib:const/start_child_zero_and_negative