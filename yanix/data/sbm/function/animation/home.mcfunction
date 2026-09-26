execute \
    as @e[\
        type=item_display,\
        tag=menu_icon,\
        distance=..5\
    ] \
    at @s \
    run data modify entity @s transformation set value {translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}
schedule function sbm:animation/home_schedule_child 1t