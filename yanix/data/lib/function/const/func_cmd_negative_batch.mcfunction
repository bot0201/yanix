scoreboard players set #const recursion_batch_count 10000
execute \
    unless score #const recursion_running_count < #-2147483648 const \
    run function lib:const/func_cmd_negative