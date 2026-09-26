execute \
    as @a[tag=closing] \
    at @s \
    positioned ~ ~0.6 ~ \
    as @e[\
        type=item_display,\
        tag=menu_base\
    ] \
    at @s \
    run function sbm:menu/clear
tag @a remove closing