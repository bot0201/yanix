# 获取快捷菜单时钟
execute \
    if score @s qm_menu matches 1.. \
    run function qm:give_item
execute \
    if score @s qm_menu matches 1.. \
    run scoreboard players set @s qm_menu 0