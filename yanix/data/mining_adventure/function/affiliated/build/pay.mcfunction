# 建筑附属 API 核心实现：扣款 → 放置结构 → 成功提示
# 由 apply 调用，以 @s = 购买玩家 身份执行
$scoreboard players remove @s money $(price)

$place template $(template) $(pos)

$tellraw @s [\
    {"text":"$(name)建造完成！","color":"green"},\
    {"text":" 花费了 ","color":"white"},\
    {"text":"$(price) 金币","color":"gold"},\
    {"text":"，剩余：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"}\
]
playsound minecraft:block.wood.place player @s ~ ~ ~ 1 1