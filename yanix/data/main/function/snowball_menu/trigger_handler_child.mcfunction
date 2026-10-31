execute \
    if score @s test_msg matches 1.. \
    run tellraw @s {"text":"[雪球菜单] 测试消息成功！","color":"green"}
execute \
    if score @s test_msg matches 1.. \
    run scoreboard players set @s test_msg 0

execute \
    if score @s test_money matches 1.. \
    run tellraw @s [\
        {"text":"[雪球菜单] 当前余额: ","color":"gold"},\
        {"score":{"name":"@s","objective":"money"}}\
    ]
execute \
    if score @s test_money matches 1.. \
    run scoreboard players set @s test_money 0

execute \
    if score @s test_get_snowball matches 1.. \
    run function main:snowball_menu/give
execute \
    if score @s test_get_snowball matches 1.. \
    run scoreboard players set @s test_get_snowball 0