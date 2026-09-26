execute \
    if entity @e[\
        type=item_display,\
        tag=menu_icon,\
        distance=..0.9\
    ] \
    run tag @s add focus_icon

execute \
    as @e[\
        type=item_display,\
        tag=menu_icon,\
        distance=..0.9,\
        limit=1\
    ] \
    run function sbm:ray/target_child

execute \
    unless entity @s[tag=focus_icon] \
    if entity @a[distance=..3] \
    positioned ^ ^ ^0.2 \
    run function sbm:ray/cast

execute \
    unless entity @a[distance=..3] \
    run function sbm:ray/no_target_child