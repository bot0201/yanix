execute \
    as @e[\
        distance=..2,\
        tag=menu_icon,\
        type=item_display\
    ] \
    at @s \
    run function sbm:highlight/clear_child
execute \
    as @e[\
        distance=..2,\
        tag=menu_icon,\
        type=item_display\
    ] \
    run data merge entity @s {start_interpolation:-1,interpolation_duration:3,transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3]}
execute \
    positioned ^ ^0.65 ^ \
    as @e[\
        distance=..0.2,\
        tag=menu_bg,\
        type=text_display\
    ] \
    run data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:[2,0,0,0,0,-400,0,0,0,0,-1,0,0,0,0,100]}
execute \
    positioned ^ ^0.45 ^-0.1 \
    run kill @e[\
        type=text_display,\
        tag=menu_title,\
        distance=..0.2\
    ]