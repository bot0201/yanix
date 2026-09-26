execute \
    as @e[\
        type=interaction,\
        tag=plg_menu,\
        distance=..2\
    ] \
    at @s \
    positioned ^ ^ ^1 \
    run function sbm:menu/flush
execute \
    as @e[\
        type=interaction,\
        tag=plg_menu,\
        distance=..2\
    ] \
    at @s \
    positioned ^ ^ ^1 \
    run function sbm:menus/menu2

playsound ui.button.click block @s ~ ~ ~ 0.5 1.2
playsound item.book.page_turn block @s ~ ~ ~ 1 1.2