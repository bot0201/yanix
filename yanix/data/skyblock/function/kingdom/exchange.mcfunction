# 需要 100 money 兑换 1 王国币
execute \
    unless score @s money matches 100.. \
    run tellraw @s [\
        {"text":"你的金币不足 100，无法兑换王国币！","color":"red"},\
        {"text":"（余额：","color":"white"},\
        {"score":{"name":"@s","objective":"money"},"color":"gold"},\
        {"text":"）","color":"white"}\
    ]
execute \
    unless score @s money matches 100.. \
    run return fail

# 扣除 money，增加 kingdom_coin
scoreboard players remove @s money 100
scoreboard players add @s kingdom_coin 1

tellraw @s [\
    {"text":"兑换成功！","color":"green"},\
    {"text":" -100 金币 → +1 王国币","color":"white"},\
    {"text":"（王国币余额：","color":"white"},\
    {"score":{"name":"@s","objective":"kingdom_coin"},"color":"gold"},\
    {"text":"）","color":"white"}\
]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2