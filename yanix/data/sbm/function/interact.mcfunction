execute \
    if entity @e[\
        type=item_display,\
        tag=focus_icon,\
        distance=..2\
    ] \
    run function sbm:player/click

advancement revoke @s only sbm:interact