# 建筑附属 API 核心实现：余额不足提示
# 由 apply 调用，以 @s = 购买玩家 身份执行
$tellraw @s [\
    {"text":"金币不足！","color":"red"},\
    {"text":" 需要 $(price) 金币，当前余额：","color":"white"},\
    {"score":{"name":"@s","objective":"money"},"color":"gold"}\
]