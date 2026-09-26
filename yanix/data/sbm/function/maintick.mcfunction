# PLG悬浮菜单 maintick - 原作者: 兰那梛_nano (已更新至1.21.11)

execute \
    as @e[\
        type=item_display,\
        tag=focus_icon,\
        limit=1\
    ] \
    run function sbm:highlight/clear_child

execute \
    at @s \
    anchored eyes \
    positioned ^ ^ ^0.5 \
    run function sbm:ray/cast

execute \
    as @e[\
        type=item_display,\
        tag=menu_base\
    ] \
    run function sbm:menu/check_clear