# PLG悬浮菜单 - 原作者: 兰那梛_nano (已更新至1.21.11)

# 分发雪球
execute \
    as @a unless items entity @s hotbar.8 snowball \
    run item replace entity @s hotbar.8 with snowball[\
        minecraft:item_name="雪球菜单",\
        minecraft:item_model="minecraft:clock"\
    ]

# 雪球触发
function sbm:show_gui

# PLG悬浮菜单处理
execute \
    as @a[tag=plg_menu_open] \
    at @s \
    run function sbm:maintick