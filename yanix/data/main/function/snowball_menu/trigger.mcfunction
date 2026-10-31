# 投掷后雪球已消耗，重新给予
clear @s snowball[minecraft:custom_data~{snowball_menu:1}]
give @s minecraft:snowball[\
    minecraft:custom_data={snowball_menu:1},\
    minecraft:item_name='{"text":"菜单雪球","color":"aqua","italic":false}',\
    minecraft:lore=[\
        '{"text":"右键投掷以打开菜单","color":"gray","italic":false}'\
    ]\
]

# 添加对话框请求标签（由 run_per_2_tick 以 server 身份处理）
tag @s add request_snowball_menu

# 重置成就触发器
advancement revoke @s only main:snowball_menu