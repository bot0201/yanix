# PLG - 打开悬浮菜单 (原作者: 兰那梛_nano)

execute \
    at @s \
    run function sbm:menu/clear_child

summon item_display ~ ~0.6 ~ {Tags:["menu_base"]}
execute \
    positioned ~ ~0.6 ~ \
    run ride @s mount @e[\
        type=item_display,\
        tag=menu_base,\
        distance=..0.2,\
        limit=1\
    ]
summon interaction ~ ~1.6 ~ {Tags:["plg_menu"],width:0.04f,height:0.04f}
execute \
    positioned ~ ~1.6 ~ \
    run data modify entity @e[\
        type=interaction,\
        tag=plg_menu,\
        distance=..0.2,\
        limit=1\
    ] Rotation set from entity @s Rotation

playsound ui.toast.in block @s ~ ~ ~ 1 1.2

execute \
    at @s \
    rotated as @s \
    anchored eyes \
    positioned ^ ^ ^2 \
    run function sbm:menus/home