# 计算总价 = 数量 × 单价
scoreboard players operation #sell_amount tmp = #sell_count tmp
$scoreboard players operation #sell_amount tmp *= $(price) const

# 清除指定物品
$clear @s $(item)

# 添加货币
scoreboard players operation @s money += #sell_amount tmp

# 成功提示
tellraw @s [\
    {"text":"出售成功！","color":"green"},\
    {"text":" 获得了 ","color":"white"},\
    {"score":{"name":"#sell_amount","objective":"tmp"},"color":"gold"},\
    {"text":" 金币（余额：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"},\
    {"text":"）","color":"white"}\
]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2