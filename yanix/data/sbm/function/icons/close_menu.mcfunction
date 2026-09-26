tag @s add closing

execute \
    at @s \
    run function sbm:menu/clear_child

playsound ui.toast.out block @s ~ ~ ~ 1 1.2

schedule function sbm:menu/close_schedule_child 7t