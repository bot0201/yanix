execute \
    if entity @s[tag=icon_1] \
    run scoreboard players set @p plg_menu_select 1
execute \
    if entity @s[tag=icon_2] \
    run scoreboard players set @p plg_menu_select 2
execute \
    if entity @s[tag=icon_3] \
    run scoreboard players set @p plg_menu_select 3
execute \
    if entity @s[tag=icon_4] \
    run scoreboard players set @p plg_menu_select 4
execute \
    if entity @s[tag=icon_5] \
    run scoreboard players set @p plg_menu_select 5
execute \
    if entity @s[tag=icon_6] \
    run scoreboard players set @p plg_menu_select 6
execute \
    if entity @s[tag=icon_7] \
    run scoreboard players set @p plg_menu_select 7
execute \
    if entity @s[tag=icon_8] \
    run scoreboard players set @p plg_menu_select 8
execute \
    if entity @s[tag=icon_9] \
    run scoreboard players set @p plg_menu_select 9
execute \
    unless entity @s[tag=focus_icon] \
    run function sbm:highlight/summon_child