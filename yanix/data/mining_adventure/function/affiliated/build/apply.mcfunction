# 建筑附属 API 核心实现：消费 trigger → 余额检查 → 扣款 → 放置结构 → 成功提示

# 先消费 trigger（无论成败都重置，避免余额不足时每 tick 重复触发）
$scoreboard players set @s $(objective) 0

# 余额不足：提示并中止
$execute \
    unless score @s money matches $(price).. \
    run tellraw @s [\
        {"text":"金币不足！","color":"red"},\
        {"text":" 需要 $(price) 金币，当前余额：","color":"white"},\
        {"score":{"name":"@s","objective":"money"},"color":"gold"}\
    ]
$execute \
    unless score @s money matches $(price).. \
    run return fail

# 扣款
$scoreboard players remove @s money $(price)

# 放置结构
$place template $(template) $(pos)

# 成功提示
$tellraw @s [\
    {"text":"$(name)建造完成！","color":"green"},\
    {"text":" 花费了 ","color":"white"},\
    {"text":"$(price) 金币","color":"gold"},\
    {"text":"，剩余：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"}\
]
playsound minecraft:block.wood.place player @s ~ ~ ~ 1 1