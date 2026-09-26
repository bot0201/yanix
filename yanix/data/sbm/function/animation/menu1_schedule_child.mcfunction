execute \
    as @e[\
        type=item_display,\
        tag=menu_icon,\
        distance=..3\
    ] \
    at @s \
    run data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]}