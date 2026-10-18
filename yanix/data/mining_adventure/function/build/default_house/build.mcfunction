## 起始点: x-z-的端点
# 应为x=0, z=0，所以起始点为0,-61,0。（因为包含地板所以Y轴为-60-1=-61）

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

# 通过指令放置结构
place template minecraft:default_house 0 -60 0

## 建造用按钮，使用成就触发

# 1. 牛圈
setblock ~8 -60 ~12 oak_button[face=floor]
summon text_display ~8 ~1.5 ~12 {\
        "text":"建造：牛圈",\
    }

# 2.猪圈 
setblock ~7 -60 ~6 oak_button[face=floor]
summon text_display ~7 ~1.5 ~6 {\
        "text":"建造：猪圈",\
    }

# 3. 1楼存储空间
setblock 10 -59 8 oak_button[face=wall,facing=north]
summon text_display 10 ~2 8 {\
        "text":"建造：1楼存储空间",\
        "Rotation":[\
            180,\
            0\
        ]\
    }

# 成功提示
tellraw @s [\
    {"text":"小屋建造完成！","color":"green"},\
    {"text":" 花费了 ","color":"white"},\
    {"text":"10 金币","color":"gold"},\
    {"text":"，剩余：","color":"white"},\
    {"score":{"name":"@s","objective":"mining_adventure_money"},"color":"gold"}\
]
playsound minecraft:block.wood.place player @s ~ ~ ~ 1 1