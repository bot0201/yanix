scoreboard players set #2147483647 const 2147483647
scoreboard players set #-2147483648 const -2147483648
scoreboard objectives add recursion_running_count dummy
scoreboard objectives add recursion_batch_count dummy
scoreboard players set #const recursion_running_count 2147483647
scoreboard players set #const recursion_batch_count 10000
function lib:const/func_cmd