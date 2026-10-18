# ========================================
# 建造房屋 - 余额检查后调用已有建房函数
# 价格：10 金币
# ========================================

# 检查余额
execute \
    unless score @s mining_adventure_money matches 10.. \
    run tellraw @s [\
        {"text":"金币不足！","color":"red"},\
        {"text":" 需要 10 金币，当前余额：","color":"white"},\
        {"score":{"name":"@s","objective":"mining_adventure_money"},"color":"gold"}\
    ]
execute \
    unless score @s mining_adventure_money matches 10.. \
    run return fail

# 扣款
scoreboard players remove @s mining_adventure_money 10

# 调用已有建房函数
function mining_adventure:build/default_house/build

# 成功提示
tellraw @s [\
    {"text":"小屋建造完成！","color":"green"},\
    {"text":" 花费了 ","color":"white"},\
    {"text":"10 金币","color":"gold"},\
    {"text":"，剩余：","color":"white"},\
    {"score":{"name":"@s","objective":"mining_adventure_money"},"color":"gold"}\
]
playsound minecraft:block.wood.place player @s ~ ~ ~ 1 1