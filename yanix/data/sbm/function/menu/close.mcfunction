tag @s add closing

execute \
    as @e[\
        type=interaction,\
        tag=plg_menu,\
        distance=..2\
    ] \
    at @s \
    positioned ^ ^ ^1 \
    run function sbm:menu/close_animation_child

playsound ui.toast.out block @s ~ ~ ~ 1 1.2

schedule function sbm:menu/close_schedule_child 7t