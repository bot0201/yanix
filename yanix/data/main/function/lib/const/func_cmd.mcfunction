execute \
    store result storage const_rec const_rec int 1 \
    run scoreboard players get #const recursion_running_count
execute \
    unless score #const recursion_running_count matches ..0 \
    run function main:lib/const/const_rec with storage const_rec const_rec
scoreboard players remove #const recursion_running_count 1
