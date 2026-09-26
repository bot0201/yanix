execute \
    as @e[\
        type=item_display,\
        tag=menu_icon,\
        distance=..5\
    ] \
    at @s \
    run data modify entity @s transformation set value {translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}