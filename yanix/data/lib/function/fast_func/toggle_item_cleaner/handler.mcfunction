scoreboard players add #item_cleaner time 3
execute \
    if score #item_cleaner time matches 60.. \
    if score #toggle_item_cleaner db matches 1 \
    run function lib:fast_func/toggle_item_cleaner/handler_child
    